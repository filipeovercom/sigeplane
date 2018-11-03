package br.com.overcom.sgpe.comentario;

import br.com.overcom.sgpe.abstracao.AbstractEntity;
import br.com.overcom.sgpe.planoensino.PlanoEnsino;
import br.com.overcom.sgpe.seguranca.usuario.Usuario;
import lombok.AllArgsConstructor;
import lombok.Builder;
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
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.time.LocalDateTime;

@Entity
@Table(name = "COMENTARIO")
@Data
@EqualsAndHashCode(callSuper = true, onlyExplicitlyIncluded = true)
@AllArgsConstructor
@NoArgsConstructor
public class Comentario extends AbstractEntity {

	@ManyToOne
	@JoinColumn(name = "ID_PLANO", referencedColumnName = "ID",
		foreignKey = @ForeignKey(name = "FK_COMENTARIO_PLANO"))
	private PlanoEnsino planoEnsino;

	@NotBlank(message = "Descrição do comentário deve ser informada!")
	@Column(columnDefinition = "TEXT")
	private String descricao;

	@Column(name = "DTH_CADASTRO")
	private LocalDateTime dataHoraCadastro;

	@ManyToOne
	@JoinColumn(name = "ID_USUARIO", referencedColumnName = "ID",
		foreignKey = @ForeignKey(name = "FK_COMENT_USUARIO"))
	private Usuario usuario;

	@Builder.Default
	private boolean novo = true;

	@NotNull(message = "Tipo do comentário deve ser informado!")
	@Enumerated(EnumType.STRING)
	private TipoComentario tipo;
}
