package br.com.overcom.sgpe.seguranca.perfil;

public enum Perfil {

	PROFESSOR("Professor"),
	COORDENADOR("Coordenador"),
	ADMINISTRADOR("Administrador"),
	ALUNO("Aluno"),
	SYS_ADMIN("Administrador do Sistema");

	private String descricao;

	Perfil(String descricao) {
		this.descricao = descricao;
	}
}
