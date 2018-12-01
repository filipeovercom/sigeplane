package br.com.overcom.sgpe.disciplina;

import br.com.overcom.sgpe.abstracao.AbstractDTO;
import br.com.overcom.sgpe.curso.CursoDTO;
import br.com.overcom.sgpe.curso.QCurso;
import com.querydsl.core.annotations.QueryProjection;
import com.querydsl.core.types.Expression;
import lombok.Builder;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@Data
@EqualsAndHashCode(callSuper = true, onlyExplicitlyIncluded = true)
public class DisciplinaDTO extends AbstractDTO {

	private String       nome;
	private String       ementa;
	private String       codigoInterno;
	private Integer      qtdHorasTtotal;
	private CursoDTO     curso;
	private List<String> bibliografiaBasica;
	private List<String> bibliografiaComplementar;

	@Builder
	public DisciplinaDTO(
		UUID uuid, String nome, String ementa, String codigoInterno,
		Integer qtdHorasTtotal, CursoDTO curso, List<String> bibliografiaBasica,
		List<String> bibliografiaComplementar) {
		super(uuid);
		this.nome = nome;
		this.ementa = ementa;
		this.codigoInterno = codigoInterno;
		this.qtdHorasTtotal = qtdHorasTtotal;
		this.curso = curso;
		this.bibliografiaBasica = bibliografiaBasica;
		this.bibliografiaComplementar = bibliografiaComplementar;
	}

	@QueryProjection
	public DisciplinaDTO(UUID uuid, String nome, String codigoInterno, UUID cursoUUID, String cursoNome) {
		super(uuid);
		this.nome = nome;
		this.codigoInterno = codigoInterno;
		this.bibliografiaBasica = new ArrayList<>();
		this.bibliografiaComplementar = new ArrayList<>();
		this.curso = CursoDTO.builder().uuid(cursoUUID).nome(cursoNome).build();
	}

	public static Expression<DisciplinaDTO> getConstructorListagem(QDisciplina disciplina, QCurso curso) {
		return new QDisciplinaDTO(
			disciplina.uuid,
			disciplina.nome,
			disciplina.codigoInterno,
			curso.uuid,
			curso.nome
		);
	}
}
