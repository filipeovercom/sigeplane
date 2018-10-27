package br.com.overcom.sgpe.seguranca.usuario;

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
@RequestMapping(UsuarioCtrl.PATH)
public class UsuarioCtrl extends AbstractCtrl<Usuario> {

	public static final String         PATH = "api/usuarios";
	private final       UsuarioService usuarioService;

	@Autowired
	public UsuarioCtrl(UsuarioService usuarioService) {
		super(usuarioService);
		this.usuarioService = usuarioService;
	}

	@GetMapping("professores")
	public ResponseEntity getProfessoresByNome(@RequestParam(required = false) String nome,
		@RequestParam(defaultValue = "false") boolean ativos, Pageable pageable) {
		return CtrlUtils.sendOk(usuarioService.findAllProfessoresByNome(nome, ativos, pageable));
	}
}
