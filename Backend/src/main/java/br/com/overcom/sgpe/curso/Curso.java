package br.com.overcom.sgpe.curso;

import br.com.overcom.sgpe.abstracao.AbstractEntity;
import br.com.overcom.sgpe.seguranca.usuario.Usuario;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

import javax.persistence.Entity;
import javax.persistence.ForeignKey;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

@Entity
@Table(name = "CURSO")
@Data
@EqualsAndHashCode(callSuper = true, onlyExplicitlyIncluded = true)
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class Curso extends AbstractEntity {

	@NotBlank(message = "Nome do curso deve ser informado")
	private String nome;

	@NotNull(message = "Coordenador do curso deve ser informado.")
	@ManyToOne
	@JoinColumn(name = "ID_COORDENADOR", referencedColumnName = "ID",
		foreignKey = @ForeignKey(name = "FK_CURSO_COORDENADOR"))
	private Usuario coordenador;
}
