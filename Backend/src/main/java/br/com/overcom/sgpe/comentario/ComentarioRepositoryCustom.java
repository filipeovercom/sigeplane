package br.com.overcom.sgpe.comentario;

import br.com.overcom.sgpe.abstracao.NegocioException;

public interface ComentarioRepositoryCustom {
	void atualizaLeitura(Long planoID) throws NegocioException;
}
