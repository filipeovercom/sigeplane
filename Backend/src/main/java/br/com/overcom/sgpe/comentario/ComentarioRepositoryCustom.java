package br.com.overcom.sgpe.comentario;

import br.com.overcom.sgpe.planoensino.PlanoEnsino;
import br.com.overcom.sgpe.seguranca.usuario.Usuario;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;
import java.util.UUID;

public interface ComentarioRepositoryCustom {
	void marcarComentariosComoLidos(PlanoEnsino planoEnsino, Usuario usuario, TipoComentario tipoComentario);

	Page<ComentarioDTO> findComentariosByPlano(UUID planoUUID, Pageable pageable);

	List<TotalComentariosNaoLidosDTO> findComentariosNaoLidos(UUID planoUUID, String name);
}
