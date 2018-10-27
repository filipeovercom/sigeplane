package br.com.overcom.sgpe.comentario;

import br.com.overcom.sgpe.abstracao.AbstractEntity;
import br.com.overcom.sgpe.seguranca.usuario.Usuario;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.ForeignKey;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import java.time.LocalDateTime;

@Entity
@Table(name = "COMENTARIO")
@Data
@EqualsAndHashCode(callSuper = true, onlyExplicitlyIncluded = true)
@AllArgsConstructor
@NoArgsConstructor
public class Comentario extends AbstractEntity {

	@Column(columnDefinition = "TEXT")
	private String comentario;

	@Column(name = "DTH_CADASTRO")
	private LocalDateTime dataHoraCadastro;

	@ManyToOne
	@JoinColumn(name = "ID_USUARIO", referencedColumnName = "ID",
		foreignKey = @ForeignKey(name = "FK_COMENT_USUARIO"))
	private Usuario usuario;

	@Enumerated(EnumType.STRING)
	private TipoComentario tipo;
}
