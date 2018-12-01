package br.com.overcom.sgpe.planoensino.recurso;

import br.com.overcom.sgpe.abstracao.AbstractCtrl;
import br.com.overcom.sgpe.utilidades.CtrlUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(RecursoCtrl.PATH)
public class RecursoCtrl extends AbstractCtrl<Recurso> {
	public static final String PATH = "/api/recursos";

	private final RecursoService recursoService;

	@Autowired
	public RecursoCtrl(RecursoService recursoService) {
		super(recursoService);
		this.recursoService = recursoService;
	}

	@GetMapping("/descricao/{descricao}")
	public ResponseEntity getByDescricao(@PathVariable String descricao) {
		return CtrlUtils.sendOk(recursoService.findAllByDescricao(descricao));
	}
}
