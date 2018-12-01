package br.com.overcom.sgpe.planoensino.competencia;

import br.com.overcom.sgpe.abstracao.AbstractCtrl;
import br.com.overcom.sgpe.utilidades.CtrlUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(CompetenciaCtrl.PATH)
public class CompetenciaCtrl extends AbstractCtrl<Competencia> {
	public static final String PATH = "/api/competencias";

	private final CompetenciaService competenciaService;

	@Autowired
	public CompetenciaCtrl(CompetenciaService competenciaService) {
		super(competenciaService);
		this.competenciaService = competenciaService;
	}

	@GetMapping("/descricao/{descricao}")
	public ResponseEntity getByDescricao(@PathVariable String descricao) {
		return CtrlUtils.sendOk(competenciaService.findAllByDescricao(descricao));
	}
}
