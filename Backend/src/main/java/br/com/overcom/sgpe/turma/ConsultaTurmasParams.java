package br.com.overcom.sgpe.turma;

import br.com.overcom.sgpe.planoensino.StatusPlanoEnsino;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.Objects;
import java.util.Optional;
import java.util.UUID;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class ConsultaTurmasParams implements Serializable {

	private Optional<String>            nome;
	private Optional<UUID>              professor;
	private UUID                        periodoLetivo;
	private Optional<StatusPlanoEnsino> statusPlanoEnsino;
	private Optional<UUID>              disciplina;
	private Optional<UUID>              curso;

	public Optional<String> getNome() {
		if (Objects.isNull(nome)) return Optional.empty();
		return nome;
	}

	public Optional<UUID> getProfessor() {
		if (Objects.isNull(professor)) return Optional.empty();
		return professor;
	}

	public Optional<UUID> getDisciplina() {
		if (Objects.isNull(disciplina)) return Optional.empty();
		return disciplina;
	}

	public Optional<UUID> getCurso() {
		if (Objects.isNull(curso)) return Optional.empty();
		return curso;
	}

	public Optional<StatusPlanoEnsino> getStatusPlanoEnsino() {
		if (Objects.isNull(statusPlanoEnsino)) return Optional.empty();
		return statusPlanoEnsino;
	}
}
