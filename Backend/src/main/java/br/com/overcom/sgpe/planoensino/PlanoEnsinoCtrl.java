package br.com.overcom.sgpe.planoensino;

import br.com.overcom.sgpe.abstracao.NegocioException;
import br.com.overcom.sgpe.comentario.Comentario;
import br.com.overcom.sgpe.comentario.TipoComentario;
import br.com.overcom.sgpe.turma.TurmaService;
import br.com.overcom.sgpe.utilidades.CtrlUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import javax.validation.Valid;
import java.util.UUID;

@RestController
@RequestMapping(PlanoEnsinoCtrl.PATH)
public class PlanoEnsinoCtrl {
	public static final String PATH = "/api/planoensino";

	private final PlanoEnsinoService planoEnsinoService;
	private final TurmaService       turmaService;

	@Autowired
	public PlanoEnsinoCtrl(PlanoEnsinoService planoEnsinoService, TurmaService turmaService) {
		this.planoEnsinoService = planoEnsinoService;
		this.turmaService = turmaService;
	}

	@GetMapping("turma/{turmaUUID}")
	public ResponseEntity ultimoPlanoByTurma(@PathVariable UUID turmaUUID) {
		try {
			return CtrlUtils.sendOk(planoEnsinoService.findUltimoPlanoByTurma(turmaUUID));
		} catch (NegocioException e) {
			return CtrlUtils.sendBadRequest(e.getMessage());
		}
	}

	@GetMapping("turma/{turmaUUID}/impressao")
	public ResponseEntity ultimoPlanoImpressaoByTurma(@PathVariable UUID turmaUUID) {
		return planoEnsinoService.findUltimoPlanoImpressaoByTurma(turmaUUID)
			.map(CtrlUtils::sendOk)
			.orElseGet(CtrlUtils::sendNoContent);
	}

	@PatchMapping("/{planoUUID}/cargahoraria")
	public ResponseEntity alteraCargaHoraria(
		@PathVariable UUID planoUUID,
		@Valid @RequestBody CargaHorariaDTO cargaHoraria,
		BindingResult result) {
		if (result.hasErrors()) return CtrlUtils.sendBadRequest(result);
		try {
			planoEnsinoService
				.updateCargaHoraria(planoUUID, cargaHoraria.getQtdHorasTeorica(), cargaHoraria.getQtdHorasPratica());
			turmaService.alteraStatusAguardandoProducao(planoUUID);
			return CtrlUtils.sendOk(true);
		} catch (NegocioException e) {
			e.printStackTrace();
			return CtrlUtils.sendBadRequest(e.getMessage());
		}
	}

	@PatchMapping("/{planoUUID}/contribuicaoformacao")
	public ResponseEntity alteraContribuicaoFormacao(
		@PathVariable UUID planoUUID,
		@RequestBody PlanoEnsinoDTO plano,
		BindingResult result) {
		if (result.hasErrors()) return CtrlUtils.sendBadRequest(result);
		try {
			planoEnsinoService.updateContribuicaoFormacao(planoUUID, plano.getContribuicaoFormacao());
			turmaService.alteraStatusAguardandoProducao(planoUUID);
			return CtrlUtils.sendOk(true);
		} catch (NegocioException e) {
			e.printStackTrace();
			return CtrlUtils.sendBadRequest(e.getMessage());
		}
	}

	@PatchMapping("/{planoUUID}/conteudo")
	public ResponseEntity alteraConteudo(
		@PathVariable UUID planoUUID,
		@RequestBody PlanoEnsinoDTO plano,
		BindingResult result) {
		if (result.hasErrors()) return CtrlUtils.sendBadRequest(result);
		try {
			planoEnsinoService.updateConteudo(planoUUID, plano.getConteudo());
			turmaService.alteraStatusAguardandoProducao(planoUUID);
			return CtrlUtils.sendOk(true);
		} catch (NegocioException e) {
			e.printStackTrace();
			return CtrlUtils.sendBadRequest(e.getMessage());
		}
	}

	@PatchMapping("/{planoUUID}/criteriosavaliacao")
	public ResponseEntity alteraCriteriosAvaliacao(
		@PathVariable UUID planoUUID,
		@RequestBody PlanoEnsinoDTO plano,
		BindingResult result) {
		if (result.hasErrors()) return CtrlUtils.sendBadRequest(result);
		try {
			planoEnsinoService.updateCriteriosAvaliacao(planoUUID, plano.getCriteriosAvaliacao());
			turmaService.alteraStatusAguardandoProducao(planoUUID);
			return CtrlUtils.sendOk(true);
		} catch (NegocioException e) {
			e.printStackTrace();
			return CtrlUtils.sendBadRequest(e.getMessage());
		}
	}

	@PostMapping("/{planoUUID}/comentario")
	public ResponseEntity registraComentarioEmConteudo(
		@PathVariable UUID planoUUID,
		@Valid @RequestBody Comentario comentario,
		BindingResult result) {
		if (result.hasErrors()) return CtrlUtils.sendBadRequest(result);
		try {
			comentario.setPlanoEnsino(PlanoEnsino.builder().uuid(planoUUID).build());
			return CtrlUtils.sendOk(planoEnsinoService.registraComentario(comentario));
		} catch (Exception e) {
			e.printStackTrace();
			return CtrlUtils.sendBadRequest(e.getMessage());
		}
	}

	@PostMapping("/{planoUUID}/comentario/marcarlidos")
	public ResponseEntity marcaComentariosComoLidos(
		@PathVariable UUID planoUUID,
		@RequestParam TipoComentario tipoComentario) {
		try {
			planoEnsinoService.marcarComentariosComoLidos(planoUUID, tipoComentario);
			return CtrlUtils.sendOk(true);
		} catch (Exception e) {
			e.printStackTrace();
			return CtrlUtils.sendBadRequest(e.getMessage());
		}
	}

	@GetMapping("/{planoUUID}/comentario/naolidos")
	public ResponseEntity getTotalComentariosNaoLidos(@PathVariable UUID planoUUID) {
		try {
			return CtrlUtils.sendOk(planoEnsinoService.getTotalComentariosNaoLidos(planoUUID));
		} catch (Exception e) {
			e.printStackTrace();
			return CtrlUtils.sendBadRequest(e.getMessage());
		}
	}

	@GetMapping("/cronograma/{itemUUID}/subitens")
	public ResponseEntity getSubItensCronogramaByItem(@PathVariable UUID itemUUID) {
		return CtrlUtils.sendOk(planoEnsinoService.findSubItensByItem(itemUUID));
	}

	@GetMapping("/{planoUUID}/cronograma/item")
	public ResponseEntity getItensCronogramaByPlano(@PathVariable UUID planoUUID) {
		return CtrlUtils.sendOk(planoEnsinoService.findItensCronogramaByPlano(planoUUID));
	}

	@PostMapping("/{planoUUID}/cronograma/item")
	public @ResponseBody
	Boolean postNewItemCronograma(@PathVariable UUID planoUUID, @RequestBody ItemCronograma itemCronograma) {
		try {
			itemCronograma.setPlanoEnsino(PlanoEnsino.builder().uuid(planoUUID).build());
			planoEnsinoService.insertNewItemCronograma(itemCronograma);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	@PostMapping("/cronograma/item")
	public @ResponseBody
	Boolean updateItemCronograma(@RequestBody ItemCronograma itemCronograma) {
		try {
			planoEnsinoService.updateItemCronograma(itemCronograma);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	@PostMapping("/cronograma/subitem")
	public @ResponseBody
	Boolean postNewSubItemCronograma(@Valid @RequestBody SubItemCronograma subItem) {
		try {
			planoEnsinoService.insertNewSubItemCronograma(subItem);
			return true;
		} catch (Exception e) {
			return false;
		}
	}
}
