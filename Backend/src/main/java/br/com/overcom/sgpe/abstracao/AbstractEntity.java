package br.com.overcom.sgpe.abstracao;


import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;
import javax.persistence.PrePersist;
import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.UUID;

@MappedSuperclass
@AllArgsConstructor
@NoArgsConstructor
@Data
public abstract class AbstractEntity implements Serializable {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@GeneratedValue(generator = "uuid2")
	@GenericGenerator(name = "uuid2", strategy = "uuid2")
	@Column(columnDefinition = "BINARY(16)")
	private UUID uuid;

	@Column(name = "DELETED", columnDefinition = "BOOLEAN DEFAULT FALSE")
	@JsonIgnore
	private boolean deleted;

	@Column(name = "DATA_HORA_CADASTRO")
	private LocalDateTime dataHoraCadastro;

	@PrePersist
	public void onPrePersist() {
		this.dataHoraCadastro = LocalDateTime.now();
		this.uuid = UUID.randomUUID();
	}
}
