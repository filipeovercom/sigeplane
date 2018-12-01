package br.com.overcom.sgpe.comentario;

import com.querydsl.core.types.ConstructorExpression;
import com.querydsl.core.types.Projections;
import lombok.Data;

import java.io.Serializable;

@Data
public class TotalComentariosNaoLidosDTO implements Serializable {

	private TipoComentario tipoComentario;
	private Long           total;

	public TotalComentariosNaoLidosDTO(TipoComentario tipoComentario, Long total) {
		this.tipoComentario = tipoComentario;
		this.total = total;
	}

	public static ConstructorExpression<TotalComentariosNaoLidosDTO> getConstructor(QComentario comentario) {
		return Projections.constructor(TotalComentariosNaoLidosDTO.class,
			comentario.tipo, comentario.uuid.count());
	}
}
