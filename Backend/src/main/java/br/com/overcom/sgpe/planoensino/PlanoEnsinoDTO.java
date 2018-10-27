package br.com.overcom.sgpe.planoensino;

import br.com.overcom.sgpe.abstracao.AbstractDTO;
import br.com.overcom.sgpe.turma.TurmaDTO;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;

import java.util.List;
import java.util.UUID;

@EqualsAndHashCode(callSuper = true, onlyExplicitlyIncluded = true)
@Getter
@Setter
public class PlanoEnsinoDTO extends AbstractDTO {

	private TurmaDTO     turma;
	private String       ementa;
	private String       contribuicaoFormacao;
	private String       conteudo;
	private String       criteriosAvaliacao;
	private Integer      qtdHorasTeorica;
	private Integer      qtdHorasPratica;
	private List<String> bibliografiaBasica;
	private List<String> bibliografiaComplementar;

	public PlanoEnsinoDTO(UUID uuid, StatusPlanoEnsino status, UUID uuidTurma, String nomeTurma, String curso,
		String professor, String disciplina, String ementa, String contribuicaoFormacao, String conteudo,
		String criteriosAvaliacao) {
		super(uuid);
		this.ementa = ementa;
		this.contribuicaoFormacao = contribuicaoFormacao;
		this.conteudo = conteudo;
		this.criteriosAvaliacao = criteriosAvaliacao;
		this.turma = new TurmaDTO(uuidTurma, nomeTurma, curso, professor, disciplina, status);
	}
}
