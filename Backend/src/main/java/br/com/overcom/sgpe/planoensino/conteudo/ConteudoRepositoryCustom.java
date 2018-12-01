package br.com.overcom.sgpe.planoensino.conteudo;

import java.util.List;

public interface ConteudoRepositoryCustom {
	List<Conteudo> findAllByDescricao(String descricao);
}
