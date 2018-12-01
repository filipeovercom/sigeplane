package br.com.overcom.sgpe.planoensino.conteudo;

import br.com.overcom.sgpe.abstracao.AbstractCtrl;
import br.com.overcom.sgpe.utilidades.CtrlUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(ConteudoCtrl.PATH)
public class ConteudoCtrl extends AbstractCtrl<Conteudo> {
	public static final String PATH = "/api/conteudos";

	private final ConteudoService conteudoService;

	@Autowired
	public ConteudoCtrl(ConteudoService conteudoService) {
		super(conteudoService);
		this.conteudoService = conteudoService;
	}

	@GetMapping("/descricao/{descricao}")
	public ResponseEntity getByDescricao(@PathVariable String descricao) {
		return CtrlUtils.sendOk(conteudoService.findAllByDescricao(descricao));
	}
}
