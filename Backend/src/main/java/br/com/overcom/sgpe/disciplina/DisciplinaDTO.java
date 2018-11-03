package br.com.overcom.sgpe.disciplina;

import br.com.overcom.sgpe.abstracao.AbstractDTO;
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
	private List<String> bibliografiaBasica;
	private List<String> bibliografiaComplementar;

	@Builder
	public DisciplinaDTO(UUID uuid, String nome, String ementa) {
		super(uuid);
		this.nome = nome;
		this.ementa = ementa;
		this.bibliografiaBasica = new ArrayList<>();
		this.bibliografiaComplementar = new ArrayList<>();
	}
}
