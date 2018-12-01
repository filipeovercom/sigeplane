package br.com.overcom.sgpe.planoensino.habilidade;

import br.com.overcom.sgpe.abstracao.AbstractCtrl;
import br.com.overcom.sgpe.utilidades.CtrlUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(HabilidadeCtrl.PATH)
public class HabilidadeCtrl extends AbstractCtrl<Habilidade> {
	public static final String PATH = "/api/habilidades";

	private final HabilidadeService habilidadeService;

	@Autowired
	public HabilidadeCtrl(HabilidadeService habilidadeService) {
		super(habilidadeService);
		this.habilidadeService = habilidadeService;
	}

	@GetMapping("descricao/{descricao}")
	public ResponseEntity getByDescricao(@PathVariable String descricao) {
		return CtrlUtils.sendOk(habilidadeService.findAllByDescricao(descricao));
	}
}
