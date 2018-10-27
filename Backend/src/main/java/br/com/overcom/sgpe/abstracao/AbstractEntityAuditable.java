package br.com.overcom.sgpe.abstracao;

import br.com.overcom.sgpe.seguranca.usuario.Usuario;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import org.springframework.data.annotation.CreatedBy;
import org.springframework.data.annotation.LastModifiedBy;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import javax.persistence.Column;
import javax.persistence.EntityListeners;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.MappedSuperclass;
import java.time.LocalDateTime;

@MappedSuperclass
@EntityListeners({AuditingEntityListener.class})
@EqualsAndHashCode(callSuper = true, onlyExplicitlyIncluded = true)
@AllArgsConstructor
@NoArgsConstructor
@Data
public class AbstractEntityAuditable extends AbstractEntity {

	@ManyToOne
	@JoinColumn(name = "id_usuario_cadastro", referencedColumnName = "id")
	@CreatedBy
	private Usuario usuarioCadastro;

	@ManyToOne
	@JoinColumn(name = "id_usuario_alteracao", referencedColumnName = "id")
	@LastModifiedBy
	private Usuario usuarioAlteracao;

	@Column(name = "data_hora_cadastro")
	private LocalDateTime dataHoraCadastro;

	@Column(name = "data_hora_alteracao")
	private LocalDateTime dataHoraAlteracao;

}
