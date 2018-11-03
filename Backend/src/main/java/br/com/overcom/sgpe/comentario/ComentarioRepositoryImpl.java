package br.com.overcom.sgpe.comentario;

import br.com.overcom.sgpe.abstracao.NegocioException;
import br.com.overcom.sgpe.utilidades.QueryDslSupport;

public class ComentarioRepositoryImpl extends QueryDslSupport implements ComentarioRepositoryCustom {

	public ComentarioRepositoryImpl() {
		super(Comentario.class);
	}

	@Override
	public void atualizaLeitura(Long planoID) throws NegocioException {
		QComentario comentario = QComentario.comentario;
		long result = update(comentario)
			.set(comentario.novo, false)
			.where(comentario.planoEnsino.id.eq(planoID))
			.execute();
		if (result < 1) {
			throw new NegocioException("Nenhum comentário atualizdo para o plano informado");
		}
	}
}
