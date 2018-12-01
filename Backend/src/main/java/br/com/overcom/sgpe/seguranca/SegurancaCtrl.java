package br.com.overcom.sgpe.seguranca;

import br.com.overcom.sgpe.abstracao.NegocioException;
import br.com.overcom.sgpe.abstracao.Response;
import br.com.overcom.sgpe.configuracao.ConfigSistema;
import br.com.overcom.sgpe.configuracao.ConfigSistemaService;
import br.com.overcom.sgpe.periodoletivo.PeriodoLetivoService;
import br.com.overcom.sgpe.seguranca.perfil.Perfil;
import br.com.overcom.sgpe.seguranca.usuario.Usuario;
import br.com.overcom.sgpe.seguranca.usuario.UsuarioService;
import br.com.overcom.sgpe.utilidades.CtrlUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.security.Principal;
import java.util.Objects;
import java.util.Optional;
import java.util.Set;
import java.util.UUID;
import java.util.stream.Collectors;

@RestController
@RequestMapping(SegurancaCtrl.PATH)
public class SegurancaCtrl {

	static final  String               PATH = "api/seguranca";
	private final UsuarioService       usuarioService;
	private final ConfigSistemaService configSistemaService;
	private final PeriodoLetivoService periodoLetivoService;

	@Autowired
	public SegurancaCtrl(UsuarioService usuarioService, ConfigSistemaService configSistemaService,
		PeriodoLetivoService periodoLetivoService) {
		this.usuarioService = usuarioService;
		this.configSistemaService = configSistemaService;
		this.periodoLetivoService = periodoLetivoService;
	}

	private Optional<Usuario> getUsuarioLogadoByPrincipal(Principal principal) {
		if (Objects.nonNull(principal)) {
			String matricula = principal.getName();
			return usuarioService.findByMatriculaEmailWithPerfis(matricula);
		}
		return Optional.empty();
	}

	@GetMapping(path = "/contexto")
	public ResponseEntity getContexto(Principal principal) {
		ContextoDTO contexto = new ContextoDTO();
		getUsuarioLogadoByPrincipal(principal).ifPresent(contexto::setUsuario);
		contexto.setConfigSistema(configSistemaService.getConfiguracaoAtual()
			.orElse(new ConfigSistema()));
		return CtrlUtils.sendOk(contexto);
	}

	@GetMapping(path = "/perfis")
	public ResponseEntity<Response<Set<String>>> getPermissoesUsuarioLogado(Principal principal) {
		return getUsuarioLogadoByPrincipal(principal)
			.map(usuario -> ResponseEntity.ok(new Response<>(
				usuario.getPerfis().stream().map(Perfil::name).collect(Collectors.toSet())
			)))
			.orElseGet(CtrlUtils::sendNoContent);
	}

	@PutMapping("/contexto/periodo/{uuid}")
	public ResponseEntity atualizaPeriodoLetivoNoContexto(@PathVariable UUID uuid,
		Principal principal) throws NegocioException {
		Usuario usuarioLogado = getUsuarioLogadoByPrincipal(principal)
			.flatMap(usuario -> periodoLetivoService.findByUUID(uuid)
				.map(periodoLetivo -> {
					usuario.getPreferenciaUsuario().setPeriodoSelecionado(periodoLetivo);
					return usuario;
				})).orElse(null);
		if (!Objects.isNull(usuarioLogado)) {
			usuarioService.update(usuarioLogado);
			return CtrlUtils.sendOk(usuarioLogado);
		}
		return CtrlUtils.sendBadRequest("Usuário não encontrado");
	}
}
