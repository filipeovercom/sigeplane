package br.com.overcom.sgpe.planoensino;

import br.com.overcom.sgpe.abstracao.AbstractCtrl;
import br.com.overcom.sgpe.abstracao.NegocioException;
import br.com.overcom.sgpe.utilidades.CtrlUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.UUID;

@RestController
@RequestMapping(PlanoEnsinoCtrl.PATH)
public class PlanoEnsinoCtrl extends AbstractCtrl<PlanoEnsino> {
	static final String PATH = "api/planoensino";

	private final PlanoEnsinoService planoEnsinoService;

	@Autowired
	public PlanoEnsinoCtrl(PlanoEnsinoService planoEnsinoService) {
		super(planoEnsinoService);
		this.planoEnsinoService = planoEnsinoService;
	}

	@GetMapping("turma/{turmaUUID}")
	public ResponseEntity ultimoPlanoByTurma(@PathVariable UUID turmaUUID) {
		try {
			return CtrlUtils.sendOk(planoEnsinoService.findUltimoPlanoByTurma(turmaUUID));
		} catch (NegocioException e) {
			return CtrlUtils.sendBadRequest(e.getMessage());
		}
	}
}
