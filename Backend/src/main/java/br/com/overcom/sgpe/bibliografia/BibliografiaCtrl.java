package br.com.overcom.sgpe.bibliografia;

import br.com.overcom.sgpe.abstracao.AbstractCtrl;
import br.com.overcom.sgpe.utilidades.CtrlUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;


@RestController
@RequestMapping(BibliografiaCtrl.PATH)
public class BibliografiaCtrl extends AbstractCtrl<Bibliografia> {
	public static final String PATH = "api/bibliografias";

	private final BibliografiaService service;

	@Autowired
	public BibliografiaCtrl(BibliografiaService service) {
		super(service);
		this.service = service;
	}

	@GetMapping
	public ResponseEntity getAllPaginadoWithSearch(@RequestParam(required = false) String searchValue,
		Pageable pageable) {
		return CtrlUtils.sendOk(service.buscaPaginadaPorDescricao(searchValue, pageable));
	}
}
