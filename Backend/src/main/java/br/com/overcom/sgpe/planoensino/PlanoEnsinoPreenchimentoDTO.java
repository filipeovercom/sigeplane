package br.com.overcom.sgpe.planoensino;

import com.querydsl.core.annotations.QueryProjection;
import com.querydsl.core.types.Expression;
import lombok.Builder;
import lombok.Data;

@Data
public class PlanoEnsinoPreenchimentoDTO {

	private String  contribuicaoFormacao;
	private String  conteudo;
	private String  criterioAvaliacao;
	private Integer qtdHorasTeorica;
	private Integer qtdHorasPratica;

	@Builder
	@QueryProjection
	public PlanoEnsinoPreenchimentoDTO(
		String contribuicaoFormacao, String conteudo, String criterioAvaliacao,
		Integer qtdHorasTeorica, Integer qtdHorasPratica) {
		this.contribuicaoFormacao = contribuicaoFormacao;
		this.conteudo = conteudo;
		this.criterioAvaliacao = criterioAvaliacao;
		this.qtdHorasTeorica = qtdHorasTeorica;
		this.qtdHorasPratica = qtdHorasPratica;
	}

	public static Expression<PlanoEnsinoPreenchimentoDTO> getProjectionConstructor(QPlanoEnsino plano) {
		return new QPlanoEnsinoPreenchimentoDTO(
			plano.contribuicaoFormacao,
			plano.conteudo,
			plano.criterioAvaliacao,
			plano.qtdHorasTeorica,
			plano.qtdHorasPratica
		);
	}
}
