package br.com.overcom.sgpe.periodoletivo;

import br.com.overcom.sgpe.abstracao.AbstractCtrl;
import br.com.overcom.sgpe.utilidades.CtrlUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(PeriodoLetivoCtrl.PATH)
public class PeriodoLetivoCtrl extends AbstractCtrl<PeriodoLetivo> {

	public static final String               PATH = "api/periodoletivo";
	private final       PeriodoLetivoService service;

	@Autowired
	public PeriodoLetivoCtrl(PeriodoLetivoService service) {
		super(service);
		this.service = service;
	}

	@GetMapping("consulta")
	public ResponseEntity getPeriodosByDescricao(String descricao, Pageable pageable) {
		return CtrlUtils.sendOk(service.getPeriodosByDescricaoPaginado(descricao, pageable));
	}
}
