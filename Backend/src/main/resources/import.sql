-- region USUARIOS
INSERT INTO usuario (id, uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (1
		   , unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '0'
		   , 'filipe@overcom.emp.br'
		   , 'Administrador'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'UTC-3'
		   , 'pt-BR');
INSERT INTO usuario (id, uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (2
		   , unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , 'FC00000001'
		   , 'professorTeste1@facul.edu.br'
		   , 'Professor Teste 1'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'UTC-3'
		   , 'pt-BR');
INSERT INTO usuario (id, uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (3
		   , unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , 'FC00000002'
		   , 'secretariaTeste1@facul.edu.br'
		   , 'Secretaria Teste 1'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'UTC-3'
		   , 'pt-BR');
INSERT INTO usuario (id, uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (4
		   , unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , 'FC00000003'
		   , 'coordenadorTeste1@facul.edu.br'
		   , 'Coordenador Teste 1'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'UTC-3'
		   , 'pt-BR');
-- endregion

-- region PERFIS DE ACESSO
INSERT INTO usuario_perfil (id_usuario, perfil) VALUES (1, 'SYS_ADMIN');
INSERT INTO usuario_perfil (id_usuario, perfil) VALUES (2, 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil) VALUES (3, 'ADMINISTRADOR');
INSERT INTO usuario_perfil (id_usuario, perfil) VALUES (4, 'COORDENADOR');
-- endregion

-- region PERIODOS LETIVOS
INSERT INTO periodo_letivo (id, uuid, descricao, dt_inicio_preenchimento, dt_fim_preenchimento)
	VALUES (1
		   , unhex(replace(uuid(), '-', ''))
		   , '2017/1'
		   , STR_TO_DATE('2017-01-10', '%Y-%m-%d')
		   , STR_TO_DATE('2017-01-31', '%Y-%m-%d'));
INSERT INTO periodo_letivo (id, uuid, descricao, dt_inicio_preenchimento, dt_fim_preenchimento)
	VALUES (2
		   , unhex(replace(uuid(), '-', ''))
		   , '2017/2'
		   , STR_TO_DATE('2017-07-05', '%Y-%m-%d')
		   , STR_TO_DATE('2017-07-31', '%Y-%m-%d'));
INSERT INTO periodo_letivo (id, uuid, descricao, dt_inicio_preenchimento, dt_fim_preenchimento)
	VALUES (3
		   , unhex(replace(uuid(), '-', ''))
		   , '2018/1'
		   , STR_TO_DATE('2018-01-10', '%Y-%m-%d')
		   , STR_TO_DATE('2018-01-31', '%Y-%m-%d'));
INSERT INTO periodo_letivo (id, uuid, descricao, dt_inicio_preenchimento, dt_fim_preenchimento)
	VALUES (4
		   , unhex(replace(uuid(), '-', ''))
		   , '2018/2'
		   , STR_TO_DATE('2018-07-05', '%Y-%m-%d')
		   , STR_TO_DATE('2018-07-31', '%Y-%m-%d'));
-- endregion

-- region PREFERÊNCIA DO USUÁRIO
UPDATE usuario SET id_periodo_selecionado = 4 WHERE id = 1;
UPDATE usuario SET id_periodo_selecionado = 4 WHERE id = 2;
UPDATE usuario SET id_periodo_selecionado = 4 WHERE id = 3;
UPDATE usuario SET id_periodo_selecionado = 4 WHERE id = 4;
-- endregion

-- region CURSOS
INSERT INTO curso (id, uuid, nome, id_coordenador)
	VALUES (1, unhex(replace(uuid(), '-', '')), 'Sistemas de Informação', 4);
INSERT INTO curso (id, uuid, nome, id_coordenador) VALUES (2, unhex(replace(uuid(), '-', '')), 'Direito', 4);
INSERT INTO curso (id, uuid, nome, id_coordenador) VALUES (3, unhex(replace(uuid(), '-', '')), 'Engenharia Civil', 4);
INSERT INTO curso (id, uuid, nome, id_coordenador)
	VALUES (4, unhex(replace(uuid(), '-', '')), 'Medicina Veterinária', 4);
-- endregion

-- region DISCIPLINA
INSERT INTO disciplina (id
					   , uuid
					   , nome
					   , codigo_interno
					   , contribuicao_formacao
					   , ementa
					   , data_hora_cadastro)
	VALUES (1
		   , unhex(replace(uuid(), '-', ''))
		   , 'Língua Portuguesa'
		   , 'INS001'
		   , 'O egresso do  Curso de Sistemas de Informação da Católica do Tocantins terá uma formação sólida, multidisciplinar e ética, com visão sistêmica para atuar como profissional íntegro  e engajado no contexto em que vive e trabalha. Profissional crítico e perspicaz que se posiciona em favor do bem estar da sociedade, na defesa das oportunidades das gerações futuras e da manutenção da vida. Dessa forma, a disciplina LÍNGUA PORTUGUESA  objetiva  a inserção e disseminação dos conhecimentos acerca da estrutura e funcionamento dos aspectos que compõem o seu sistema linguístico. Esta disciplina visa  auxiliar os profissionais das outras áreas a compreenderem a forma com que sistemas de informação podem contribuir para as áreas de negócio, bem como,  expressar ideias de forma clara, empregando técnicas de comunicação apropriadas para cada situação. Além disso, proporciona ao egresso, no exercício da  sua profissão,  participar e conduzir processos de negociação para o alcance de objetivos, e  também a comunicar-se em língua portuguesa, interpretando e produzindo discursos em diferentes modalidades e em diferentes situações sociolinguísticas.'
		   , 'A leitura e a escrita na universidade: linguagem e conhecimento. Pressupostos básicos: concepções de linguagem, texto, leitura e escrita. Condições de produção da leitura e da escrita do texto acadêmico. Tipos de textos: estrutura e funcionamento. Argumentação. Coesão e coerência. Correção gramatical'
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (id
					   , uuid
					   , nome
					   , codigo_interno
					   , id_curso
					   , contribuicao_formacao
					   , ementa
					   , data_hora_cadastro)
	VALUES (2
		   , unhex(replace(uuid(), '-', ''))
		   , 'Linguagens e Técnicas de Programação I'
		   , 'SI001'
		   , 1
		   , 'Modelar, especificar, implementar, implantar, validar e manter soluções baseadas em sistemas de informação, incluindo aspectos de interação humano-computador.<br/>Diagnosticar e mapear, com base científica, problemas e pontos de melhoria nas organizações, propondo alternativas de soluções baseadas em Tecnologias da Informação.'
		   , 'Aspectos do estudo de Linguagens - Sintaxe, Semântica e Paradigmas. Linguagens fonte e objeto, Tradução, Compilação e Interpretação. Programação Estruturada. Pseudocódigo. Fundamentos de algoritmos: Variáveis e Constantes, Aplicação das Estruturas de Controle (sequência, seleção e repetição), Variáveis indexadas unidimensionais (vetores). Variáveis indexadas bidimensionais (matrizes).'
		   , CURRENT_TIMESTAMP);
-- endregion

-- region BIBLIOGRAFIAS
INSERT INTO bibliografia (id, uuid, descricao)
	VALUES (1
		   , unhex(replace(uuid(), '-', ''))
		   , 'LEISERSON, C. E.; RIVEST, R.; CORMEN, T. H. Algoritmos – Teoria e Prática. São Paulo: Campus, 2002.');
INSERT INTO bibliografia (id, uuid, descricao)
	VALUES (2
		   , unhex(replace(uuid(), '-', ''))
		   , 'OLIVEIRA, J. F.; MANZANO, J. A. N. G. Algoritmos. São Paulo: Érica, 2001. ');
INSERT INTO bibliografia (id, uuid, descricao)
	VALUES (3
		   , unhex(replace(uuid(), '-', ''))
		   , 'SEBESTA, R. W. Conceitos de Linguagem de Programação. São Paulo: Bookman. 2003.');
INSERT INTO bibliografia (id, uuid, descricao)
	VALUES (4
		   , unhex(replace(uuid(), '-', ''))
		   , 'GUIMARÃES, A. M., Algoritmos e estruturas de dados, Rio de Janeiro: LTC, 1994.');
INSERT INTO bibliografia (id, uuid, descricao)
	VALUES (5
		   , unhex(replace(uuid(), '-', ''))
		   , 'KOTANI, A. M. Lógica de Programação – Primeiros Passos. São Paulo: Érica 1991.');
INSERT INTO bibliografia (id, uuid, descricao)
	VALUES (6
		   , unhex(replace(uuid(), '-', ''))
		   , 'VAREJÃO, F. Linguagens de Programação JAVA, C e C++ e outras, Rio de Janeiro, Elsevier, 2004.');
INSERT INTO bibliografia (id, uuid, descricao)
	VALUES (7
		   , unhex(replace(uuid(), '-', ''))
		   , 'OLIVEIRA, A. B. O. e BORATTI, I. C., Introdução à programação. 3a Edição, Florianópolis, Visual Books, 2007.');
INSERT INTO bibliografia (id, uuid, descricao)
	VALUES (8
		   , unhex(replace(uuid(), '-', ''))
		   , 'LOPES, A. e GARCIA, G., Introdução à Programação, Rio de Janeiro, Elsevier, 2002.');
INSERT INTO bibliografia (id, uuid, descricao)
	VALUES (9
		   , unhex(replace(uuid(), '-', ''))
		   , 'Nina Edelweiss e Maria Aparecida Castro Livi. Algoritmos e Programação com Exemplos em Pascal e C. 1a Ed. 2014. Ebook Biblioteca A.');
INSERT INTO bibliografia (id, uuid, descricao)
	VALUES (10
		   , unhex(replace(uuid(), '-', ''))
		   , 'Schildt, Herbert. Java para iniciantes. 6a Ed. 2015. Ebook Biblioteca A.');
-- endregion

-- region Disciplina Bibliografia
INSERT INTO referencia_bibliografica (id, uuid, tipo, id_bibliografia, id_disciplina)
	VALUES (1, unhex(replace(uuid(), '-', '')), 'BASICA', 1, 2);
INSERT INTO referencia_bibliografica (id, uuid, tipo, id_bibliografia, id_disciplina)
	VALUES (2, unhex(replace(uuid(), '-', '')), 'BASICA', 2, 2);
INSERT INTO referencia_bibliografica (id, uuid, tipo, id_bibliografia, id_disciplina)
	VALUES (3, unhex(replace(uuid(), '-', '')), 'BASICA', 3, 2);
INSERT INTO referencia_bibliografica (id, uuid, tipo, id_bibliografia, id_disciplina)
	VALUES (4, unhex(replace(uuid(), '-', '')), 'COMPLEMENTAR', 4, 2);
INSERT INTO referencia_bibliografica (id, uuid, tipo, id_bibliografia, id_disciplina)
	VALUES (5, unhex(replace(uuid(), '-', '')), 'COMPLEMENTAR', 5, 2);
INSERT INTO referencia_bibliografica (id, uuid, tipo, id_bibliografia, id_disciplina)
	VALUES (6, unhex(replace(uuid(), '-', '')), 'COMPLEMENTAR', 6, 2);
INSERT INTO referencia_bibliografica (id, uuid, tipo, id_bibliografia, id_disciplina)
	VALUES (7, unhex(replace(uuid(), '-', '')), 'COMPLEMENTAR', 7, 2);
INSERT INTO referencia_bibliografica (id, uuid, tipo, id_bibliografia, id_disciplina)
	VALUES (8, unhex(replace(uuid(), '-', '')), 'COMPLEMENTAR', 8, 2);
INSERT INTO referencia_bibliografica (id, uuid, tipo, id_bibliografia, id_disciplina)
	VALUES (9, unhex(replace(uuid(), '-', '')), 'COMPLEMENTAR', 9, 2);
INSERT INTO referencia_bibliografica (id, uuid, tipo, id_bibliografia, id_disciplina)
	VALUES (10, unhex(replace(uuid(), '-', '')), 'COMPLEMENTAR', 10, 2);
-- endregion

-- region TURMAS
INSERT INTO turma (id, uuid, nome, id_curso, id_disciplina, id_periodo_letivo, id_professor, status_plano)
	VALUES (1, unhex(replace(uuid(), '-', '')), '302N1A (TURMA TESTE 1)', 1, 1, 1, 2, 'EM_PRODUCAO');
INSERT INTO turma (id, uuid, nome, id_curso, id_disciplina, id_periodo_letivo, id_professor, status_plano)
	VALUES (2, unhex(replace(uuid(), '-', '')), '303N1A (TURMA TESTE 2)', 2, 2, 1, 2, 'AGUARDANDO_PRODUCAO');
INSERT INTO turma (id, uuid, nome, id_curso, id_disciplina, id_periodo_letivo, id_professor, status_plano)
	VALUES (3, unhex(replace(uuid(), '-', '')), '302N1A (TURMA TESTE 3)', 1, 1, 2, 2, 'EM_PRODUCAO');
INSERT INTO turma (id, uuid, nome, id_curso, id_disciplina, id_periodo_letivo, id_professor, status_plano)
	VALUES (4, unhex(replace(uuid(), '-', '')), '303N1A (TURMA TESTE 4)', 2, 2, 2, 2, 'AGUARDANDO_PRODUCAO');
INSERT INTO turma (id, uuid, nome, id_curso, id_disciplina, id_periodo_letivo, id_professor, status_plano)
	VALUES (5, unhex(replace(uuid(), '-', '')), '302N1A (TURMA TESTE 5)', 1, 1, 3, 2, 'AGUARDANDO_PRODUCAO');
INSERT INTO turma (id, uuid, nome, id_curso, id_disciplina, id_periodo_letivo, id_professor, status_plano)
	VALUES (6, unhex(replace(uuid(), '-', '')), '303N1A (TURMA TESTE 6)', 2, 2, 3, 2, 'AGUARDANDO_PRODUCAO');
INSERT INTO turma (id, uuid, nome, id_curso, id_disciplina, id_periodo_letivo, id_professor, status_plano)
	VALUES (7, unhex(replace(uuid(), '-', '')), '302N1A (TURMA TESTE 7)', 1, 1, 4, 2, 'EM_PRODUCAO');
INSERT INTO turma (id, uuid, nome, id_curso, id_disciplina, id_periodo_letivo, id_professor, status_plano)
	VALUES (8, unhex(replace(uuid(), '-', '')), '303N1A (TURMA TESTE 8)', 2, 2, 4, 2, 'AGUARDANDO_PRODUCAO');
-- endregion

-- region CONFIGURAÇÃO DO SISTEMA
INSERT INTO config_sistema (id
						   , deleted
						   , uuid
						   , data_hora_cadastro)
	VALUES (1, FALSE, unhex(replace(uuid(), '-', '')), CURRENT_TIMESTAMP);
-- endregion

-- region PLANOS DE ENSINO
INSERT INTO plano_ensino (id
						 , deleted
						 , uuid
						 , data_hora_cadastro
						 , qtd_horas_pratica
						 , qtd_horas_teorica
						 , ID_TURMA)
	VALUES (1
		   , FALSE
		   , unhex(replace(uuid(), '-', ''))
		   , CURRENT_TIMESTAMP
		   , 40
		   , 20
		   , 1);
INSERT INTO plano_ensino (id
						 , deleted
						 , uuid
						 , data_hora_cadastro
						 , qtd_horas_pratica
						 , qtd_horas_teorica
						 , ID_TURMA)
	VALUES (2
		   , FALSE
		   , unhex(replace(uuid(), '-', ''))
		   , CURRENT_TIMESTAMP
		   , 40
		   , 20
		   , 2);
INSERT INTO plano_ensino (id
						 , deleted
						 , uuid
						 , data_hora_cadastro
						 , qtd_horas_pratica
						 , qtd_horas_teorica
						 , ID_TURMA)
	VALUES (3
		   , FALSE
		   , unhex(replace(uuid(), '-', ''))
		   , CURRENT_TIMESTAMP
		   , 40
		   , 20
		   , 3);
INSERT INTO plano_ensino (id
						 , deleted
						 , uuid
						 , data_hora_cadastro
						 , qtd_horas_pratica
						 , qtd_horas_teorica
						 , ID_TURMA)
	VALUES (4
		   , FALSE
		   , unhex(replace(uuid(), '-', ''))
		   , CURRENT_TIMESTAMP
		   , 40
		   , 20
		   , 4);
INSERT INTO plano_ensino (id
						 , deleted
						 , uuid
						 , data_hora_cadastro
						 , qtd_horas_pratica
						 , qtd_horas_teorica
						 , ID_TURMA)
	VALUES (5
		   , FALSE
		   , unhex(replace(uuid(), '-', ''))
		   , CURRENT_TIMESTAMP
		   , 40
		   , 20
		   , 5);
INSERT INTO plano_ensino (id
						 , deleted
						 , uuid
						 , data_hora_cadastro
						 , qtd_horas_pratica
						 , qtd_horas_teorica
						 , ID_TURMA)
	VALUES (6
		   , FALSE
		   , unhex(replace(uuid(), '-', ''))
		   , CURRENT_TIMESTAMP
		   , 40
		   , 20
		   , 6);
INSERT INTO plano_ensino (id
						 , deleted
						 , uuid
						 , data_hora_cadastro
						 , qtd_horas_pratica
						 , qtd_horas_teorica
						 , ID_TURMA)
	VALUES (7
		   , FALSE
		   , unhex(replace(uuid(), '-', ''))
		   , CURRENT_TIMESTAMP
		   , 40
		   , 20
		   , 7);
INSERT INTO plano_ensino (id
						 , deleted
						 , uuid
						 , data_hora_cadastro
						 , qtd_horas_pratica
						 , qtd_horas_teorica
						 , ID_TURMA)
	VALUES (8
		   , FALSE
		   , unhex(replace(uuid(), '-', ''))
		   , CURRENT_TIMESTAMP
		   , 40
		   , 20
		   , 8);
INSERT INTO plano_ensino (id
						 , deleted
						 , uuid
						 , data_hora_cadastro
						 , qtd_horas_pratica
						 , qtd_horas_teorica
						 , ID_TURMA)
	VALUES (9
		   , FALSE
		   , unhex(replace(uuid(), '-', ''))
		   , CURRENT_TIMESTAMP
		   , 40
		   , 20
		   , 8);
-- endregion