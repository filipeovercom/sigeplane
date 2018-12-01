package br.com.overcom.sgpe.turma;

import br.com.overcom.sgpe.abstracao.NegocioException;
import br.com.overcom.sgpe.planoensino.PlanoEnsinoService;
import br.com.overcom.sgpe.planoensino.StatusPlanoEnsino;
import br.com.overcom.sgpe.utilidades.CtrlUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.validation.Valid;
import java.util.Optional;
import java.util.UUID;


@RestController
@RequestMapping(TurmaCtrl.PATH)
public class TurmaCtrl {

	static final  String             PATH = "/api/turmas";
	private final TurmaService       service;
	private final PlanoEnsinoService planoEnsinoService;

	@Autowired
	public TurmaCtrl(TurmaService service, PlanoEnsinoService planoEnsinoService) {
		this.service = service;
		this.planoEnsinoService = planoEnsinoService;
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

	@PostMapping
	public ResponseEntity saveNewTurma(@Valid @RequestBody Turma turma, BindingResult result) {
		if (result.hasErrors()) return CtrlUtils.sendBadRequest(result);
		try {
			service.insert(turma);
			return CtrlUtils.sendOk(true);
		} catch (NegocioException e) {
			return CtrlUtils.sendBadRequest(e.getMessage());
		}
	}
}
