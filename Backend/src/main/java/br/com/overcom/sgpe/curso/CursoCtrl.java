package br.com.overcom.sgpe.curso;

import br.com.overcom.sgpe.abstracao.AbstractCtrl;
import br.com.overcom.sgpe.utilidades.CtrlUtils;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(CursoCtrl.PATH)
public class CursoCtrl extends AbstractCtrl<Curso> {
	public static final String       PATH = "/api/cursos";
	private final       CursoService service;

	public CursoCtrl(CursoService service) {
		super(service);
		this.service = service;
	}

	@GetMapping("/nome/{nome}")
	public ResponseEntity getByNomeLimit10(@PathVariable String nome) {
		return CtrlUtils.sendOk(service.findByNomeLimit10(nome));
	}
}
