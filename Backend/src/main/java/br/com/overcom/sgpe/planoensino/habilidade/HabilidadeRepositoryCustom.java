package br.com.overcom.sgpe.planoensino.habilidade;

import java.util.List;

public interface HabilidadeRepositoryCustom {
	List<Habilidade> findAllByDescricao(String descricao);
}
