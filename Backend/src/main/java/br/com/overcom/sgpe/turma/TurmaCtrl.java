package br.com.overcom.sgpe.turma;

import br.com.overcom.sgpe.abstracao.AbstractCtrl;
import br.com.overcom.sgpe.planoensino.StatusPlanoEnsino;
import br.com.overcom.sgpe.utilidades.CtrlUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.Optional;
import java.util.UUID;


@RestController
@RequestMapping(TurmaCtrl.PATH)
public class TurmaCtrl extends AbstractCtrl<Turma> {

	static final  String       PATH = "/api/turmas";
	private final TurmaService service;

	@Autowired
	public TurmaCtrl(TurmaService service) {
		super(service);
		this.service = service;
	}

	@GetMapping("/periodo/{periodoLetivo}")
	public ResponseEntity getTurmasByPeriodoAndParams(
		@PathVariable UUID periodoLetivo,
		@RequestParam Optional<String> nome,
		@RequestParam Optional<UUID> professor,
		@RequestParam Optional<UUID> disciplina,
		@RequestParam Optional<UUID> curso,
		@RequestParam Optional<StatusPlanoEnsino> statusPlanoEnsino,
		Pageable pageable) {
		ConsultaTurmasParams params = ConsultaTurmasParams.builder()
			.nome(nome)
			.professor(professor)
			.periodoLetivo(periodoLetivo)
			.disciplina(disciplina)
			.statusPlanoEnsino(statusPlanoEnsino)
			.curso(curso)
			.build();
		return CtrlUtils.sendOk(service.findByPeriodoAndParams(periodoLetivo, params, pageable));
	}
}
