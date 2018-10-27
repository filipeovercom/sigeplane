package br.com.overcom.sgpe.turma;

import br.com.overcom.sgpe.abstracao.AbstractDTO;
import br.com.overcom.sgpe.planoensino.StatusPlanoEnsino;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.util.UUID;

@EqualsAndHashCode(callSuper = true, onlyExplicitlyIncluded = true)
@Data
public class TurmaDTO extends AbstractDTO {

	private String            nome;
	private String            curso;
	private String            professor;
	private String            disciplina;
	private String            periodo;
	private StatusPlanoEnsino statusPlanoEnsino;

	public TurmaDTO(UUID uuid, String nome, String curso, String professor, String disciplina,
		StatusPlanoEnsino statusPlanoEnsino) {
		super(uuid);
		this.nome = nome;
		this.curso = curso;
		this.professor = professor;
		this.disciplina = disciplina;
		this.statusPlanoEnsino = statusPlanoEnsino;
	}
}
