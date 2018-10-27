package br.com.overcom.sgpe.curso;

import br.com.overcom.sgpe.abstracao.AbstractCtrl;
import br.com.overcom.sgpe.utilidades.CtrlUtils;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.Optional;

@RestController
@RequestMapping(CursoCtrl.PATH)
public class CursoCtrl extends AbstractCtrl<Curso> {
	public static final String       PATH = "/api/cursos";
	private final       CursoService service;

	public CursoCtrl(CursoService service) {
		super(service);
		this.service = service;
	}

	@GetMapping
	public ResponseEntity getCursosByNome(@RequestParam Optional<String> nome,
		Pageable pageable) {
		return CtrlUtils.sendOk(service.buscaPorNomePaginada(nome.orElse(""), pageable));
	}
}
