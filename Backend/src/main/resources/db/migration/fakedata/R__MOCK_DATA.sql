-- region USUARIOS
DELETE FROM usuario;
INSERT INTO usuario (id, ativo, email, nome, password, locale, time_zone)
VALUES (1, true, 'filipe@overcom.emp.br', 'Administrador', 'admin', 'UTC-3', 'pt-BR');
-- endregion

-- region PERFIS DE ACESSO
DELETE FROM usuario_perfil;
INSERT INTO usuario_perfil (id_usuario, perfil) VALUES (1, 'SYS_ADMIN');
-- endregion