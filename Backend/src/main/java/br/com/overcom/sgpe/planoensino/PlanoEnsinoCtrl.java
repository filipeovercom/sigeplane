package br.com.overcom.sgpe.planoensino;

import br.com.overcom.sgpe.abstracao.NegocioException;
import br.com.overcom.sgpe.comentario.Comentario;
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
import org.springframework.web.bind.annotation.RestController;

import javax.validation.Valid;
import java.util.UUID;

@RestController
@RequestMapping(PlanoEnsinoCtrl.PATH)
public class PlanoEnsinoCtrl {
	public static final String PATH = "/api/planoensino";

	private final PlanoEnsinoService planoEnsinoService;

	@Autowired
	public PlanoEnsinoCtrl(PlanoEnsinoService planoEnsinoService) {this.planoEnsinoService = planoEnsinoService;}

	@GetMapping("turma/{turmaUUID}")
	public ResponseEntity ultimoPlanoByTurma(@PathVariable UUID turmaUUID) {
		try {
			return CtrlUtils.sendOk(planoEnsinoService.findUltimoPlanoByTurma(turmaUUID));
		} catch (NegocioException e) {
			return CtrlUtils.sendBadRequest(e.getMessage());
		}
	}

	@PatchMapping(value = "/{planoID}/cargahoraria")
	public ResponseEntity alteraCargaHoraria(
		@PathVariable Long planoID,
		@Valid @RequestBody CargaHorariaDTO cargaHoraria,
		BindingResult result) {
		if (result.hasErrors()) return CtrlUtils.sendBadRequest(result);
		try {
			planoEnsinoService
				.updateCargaHoraria(planoID, cargaHoraria.getQtdHorasTeorica(), cargaHoraria.getQtdHorasPratica());
			return CtrlUtils.sendOk(true);
		} catch (NegocioException e) {
			e.printStackTrace();
			return CtrlUtils.sendBadRequest(e.getMessage());
		}
	}

	@PatchMapping(value = "/{planoID}/contribuicaoformacao")
	public ResponseEntity alteraContribuicaoFormacao(
		@PathVariable Long planoID,
		@RequestBody PlanoEnsinoDTO plano,
		BindingResult result) {
		if (result.hasErrors()) return CtrlUtils.sendBadRequest(result);
		try {
			planoEnsinoService.updateContribuicaoFormacao(planoID, plano.getContribuicaoFormacao());
			return CtrlUtils.sendOk(true);
		} catch (NegocioException e) {
			e.printStackTrace();
			return CtrlUtils.sendBadRequest(e.getMessage());
		}
	}

	@PatchMapping(value = "/{planoID}/conteudo")
	public ResponseEntity alteraConteudo(
		@PathVariable Long planoID,
		@RequestBody PlanoEnsinoDTO plano,
		BindingResult result) {
		if (result.hasErrors()) return CtrlUtils.sendBadRequest(result);
		try {
			planoEnsinoService.updateConteudo(planoID, plano.getConteudo());
			return CtrlUtils.sendOk(true);
		} catch (NegocioException e) {
			e.printStackTrace();
			return CtrlUtils.sendBadRequest(e.getMessage());
		}
	}

	@PatchMapping(value = "/{planoID}/criteriosavaliacao")
	public ResponseEntity alteraCriteriosAvaliacao(
		@PathVariable Long planoID,
		@RequestBody PlanoEnsinoDTO plano,
		BindingResult result) {
		if (result.hasErrors()) return CtrlUtils.sendBadRequest(result);
		try {
			planoEnsinoService.updateCriteriosAvaliacao(planoID, plano.getCriteriosAvaliacao());
			return CtrlUtils.sendOk(true);
		} catch (NegocioException e) {
			e.printStackTrace();
			return CtrlUtils.sendBadRequest(e.getMessage());
		}
	}

	@PostMapping(value = "/{planoID}/comentario")
	public ResponseEntity registraComentarioEmConteudo(
		@PathVariable Long planoID,
		@Valid @RequestBody Comentario comentario,
		BindingResult result) {
		if (result.hasErrors()) return CtrlUtils.sendBadRequest(result);
		try {
			comentario.setId(planoID);
			return CtrlUtils.sendOk(planoEnsinoService.registraComentario(comentario));
		} catch (Exception e) {
			e.printStackTrace();
			return CtrlUtils.sendBadRequest(e.getMessage());
		}
	}

	@PostMapping(value = "/{planoID}/comentario/leitura")
	public ResponseEntity registraComentarioEmConteudo(@PathVariable Long planoID) {
		try {
			planoEnsinoService.atualizaLeituraComentarios(planoID);
			return CtrlUtils.sendOk(true);
		} catch (Exception e) {
			e.printStackTrace();
			return CtrlUtils.sendBadRequest(e.getMessage());
		}
	}
}
