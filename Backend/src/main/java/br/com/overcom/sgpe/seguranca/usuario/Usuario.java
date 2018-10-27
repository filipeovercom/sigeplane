package br.com.overcom.sgpe.seguranca.usuario;


import br.com.overcom.sgpe.abstracao.AbstractEntity;
import br.com.overcom.sgpe.seguranca.perfil.Perfil;
import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.ForeignKey;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.Table;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "USUARIO")
@AllArgsConstructor
@NoArgsConstructor
@Data
@EqualsAndHashCode(callSuper = true, onlyExplicitlyIncluded = true)
@Builder
public class Usuario extends AbstractEntity {

	private String             nome;
	@EqualsAndHashCode.Include
	private String             matricula;
	private String             email;
	@JsonIgnore
	private String             password;
	@ElementCollection
	@JoinTable(name = "USUARIO_PERFIL", joinColumns = @JoinColumn(name = "id_usuario", foreignKey = @ForeignKey(name = "FK_USUARIO_PERFIL_USUARIO")))
	@Column(name = "perfil", nullable = false, length = 40) @Enumerated(EnumType.STRING)
	@JsonIgnore
	private Set<Perfil>        perfis;
	@Builder.Default
	private boolean            ativo = true;
	@Embedded
	private PreferenciaUsuario preferenciaUsuario;

	public Set<Perfil> getPerfis() {
		if (perfis == null) {
			perfis = new HashSet<>();
		}
		return perfis;
	}
}
