package br.com.overcom.sgpe.disciplina;

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
@RequestMapping(DisciplinaCtrl.PATH)
public class DisciplinaCtrl extends AbstractCtrl<Disciplina> {
	static final String PATH = "api/disciplinas";

	private final DisciplinaService disciplinaService;

	@Autowired
	public DisciplinaCtrl(DisciplinaService disciplinaService) {
		super(disciplinaService);
		this.disciplinaService = disciplinaService;
	}

	@GetMapping
	public ResponseEntity getDisciplinasBySearchValue(@RequestParam(required = false) String searchValue,
		Pageable pageable) {
		return CtrlUtils.sendOk(disciplinaService.findAllBySearchValue(searchValue, pageable));
	}
}
