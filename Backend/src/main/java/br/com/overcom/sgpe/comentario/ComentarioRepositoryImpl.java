package br.com.overcom.sgpe.comentario;

import br.com.overcom.sgpe.planoensino.PlanoEnsino;
import br.com.overcom.sgpe.seguranca.usuario.Usuario;
import br.com.overcom.sgpe.utilidades.QueryDslSupport;
import com.querydsl.core.types.Projections;
import com.querydsl.jpa.JPAExpressions;
import com.querydsl.jpa.JPQLQuery;
import com.querydsl.jpa.impl.JPAQuery;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;
import java.util.UUID;

public class ComentarioRepositoryImpl extends QueryDslSupport implements ComentarioRepositoryCustom {

	public ComentarioRepositoryImpl() {
		super(Comentario.class);
	}

	@Override
	public void marcarComentariosComoLidos(PlanoEnsino planoEnsino, Usuario usuario, TipoComentario tipoComentario) {
		UsuarioLeituraComentario usuLeitura = UsuarioLeituraComentario.builder()
			.planoEnsino(planoEnsino)
			.usuario(usuario)
			.tipoComentario(tipoComentario)
			.build();
		getEntityManager().persist(usuario);
	}

	@Override
	public Page<ComentarioDTO> findComentariosByPlano(UUID planoUUID, Pageable pageable) {
		QComentario comentario = QComentario.comentario;
		JPQLQuery<ComentarioDTO> query = getQuerydsl().createQuery()
			.select(Projections.constructor(
				ComentarioDTO.class,
				comentario.uuid,
				comentario.descricao,
				comentario.dataHoraCadastro))
			.where(comentario.planoEnsino.uuid.eq(planoUUID))
			.orderBy(comentario.dataHoraCadastro.desc());
		return readPage((JPAQuery) query, pageable);
	}

	@Override
	public List<TotalComentariosNaoLidosDTO> findComentariosNaoLidos(UUID planoUUID, String matricula) {
		QUsuarioLeituraComentario usuComent  = QUsuarioLeituraComentario.usuarioLeituraComentario;
		QComentario               comentario = QComentario.comentario;
		return getQuerydsl().createQuery().select(TotalComentariosNaoLidosDTO.getConstructor(comentario))
			.from(comentario)
			.where(comentario.planoEnsino.uuid.eq(planoUUID)
				.and(JPAExpressions.select(usuComent.uuid)
					.from(usuComent)
					.where(usuComent.usuario.matricula.eq(matricula)
						.and(usuComent.planoEnsino.eq(comentario.planoEnsino))
						.and(usuComent.tipoComentario.eq(comentario.tipo))).notExists()))
			.groupBy(comentario.tipo).fetch();
	}
}
