package br.com.overcom.sgpe.comentario;

import br.com.overcom.sgpe.abstracao.AbstractEntity;
import br.com.overcom.sgpe.planoensino.PlanoEnsino;
import br.com.overcom.sgpe.seguranca.usuario.Usuario;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.EqualsAndHashCode;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "USUARIO_LEITURA_COMENTARIO")
@Data
@EqualsAndHashCode(callSuper = true, onlyExplicitlyIncluded = true)
@AllArgsConstructor
@Builder
public class UsuarioLeituraComentario extends AbstractEntity {

	@ManyToOne
	@JoinColumn(name = "ID_USUARIO", referencedColumnName = "UUID")
	private Usuario usuario;

	@ManyToOne
	@JoinColumn(name = "ID_PLANO_ENSINO", referencedColumnName = "UUID")
	private PlanoEnsino planoEnsino;

	@Enumerated(EnumType.STRING)
	@Column(name = "TIPO_COMENTARIO")
	private TipoComentario tipoComentario;
}
