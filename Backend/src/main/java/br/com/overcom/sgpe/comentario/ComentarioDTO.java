package br.com.overcom.sgpe.comentario;

import br.com.overcom.sgpe.abstracao.AbstractDTO;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.util.UUID;

@Data
@EqualsAndHashCode(callSuper = true, onlyExplicitlyIncluded = true)
public class ComentarioDTO extends AbstractDTO {
	private String  descricao;
	private String  dataHoraCadastro;
	private Boolean isNovo;

	public ComentarioDTO(UUID uuid, String descricao, String dataHoraCadastro, Boolean isNovo) {
		super(uuid);
		this.descricao = descricao;
		this.dataHoraCadastro = dataHoraCadastro;
		this.isNovo = isNovo;
	}
}
