-- region USUARIOS
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , 'admin'
		   , 'filipeovercom@gmail.com'
		   , 'Administrador do Sistema'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt-BR'
		   , 'UTC-3');
-- endregion

--	region PROFESSORES
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020665'
		   , 'adilson.silva@catolica-to.edu.br'
		   , 'Adilson Cunha Silva'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020190'
		   , 'airtonschutz@catolica-to.edu.br'
		   , 'Airton Aloisio Schutz'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020652'
		   , 'alex.coelho@catolica-to.edu.br'
		   , 'Alex Coelho'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020318'
		   , 'barreto@catolica-to.edu.br'
		   , 'Alexandre Barreto Almeida Dos Santos'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020687'
		   , 'alexon.dantas@catolica-to.edu.br'
		   , 'Alexon Braga Dantas'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020487'
		   , 'andre.rincon@catolica-to.edu.br'
		   , 'Andre Mesquita Rincon'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020107'
		   , 'andre@catolica-to.edu.br'
		   , 'Andre Pereira Raposo'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020486'
		   , 'andre.pugliese@catolica-to.edu.br'
		   , 'Andre Pugliese Da Silva'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020283'
		   , 'angela.haonat@catolica-to.edu.br'
		   , 'Angela Issa Haonat'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020266'
		   , 'antonio.cesar@catolica-to.edu.br'
		   , 'Antonio Cesar Mello'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020415'
		   , 'ianowich@catolica-to.edu.br'
		   , 'Antonio Ianowich Filho'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020513'
		   , 'antonio.jose@catolica-to.edu.br'
		   , 'Antonio Jose Sabino'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020499'
		   , 'rafaelbosso@yahoo.com.br'
		   , 'Antonio Rafael De Souza Alves Bosso'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020606'
		   , 'arlenes.delabary@catolica-to.edu.br'
		   , 'Arlenes Buzatto Delabary Spada'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020102'
		   , 'formiga@catolica-to.edu.br'
		   , 'Armando Soares De Castro Formiga'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020721'
		   , 'brunno.brito@catolica-to.edu.br'
		   , 'Brunno Henrique Brito'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020609'
		   , 'carlos.berner@catolica-to.edu.br'
		   , 'Carlos Vicente Berner'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020587'
		   , 'abccouto@hotmail.com'
		   , 'Caroline Rezende Couto'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020516'
		   , 'cejane.pacine@catolica-to.edu.br'
		   , 'Cejane Pacini Leal Muniz'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020691'
		   , 'cesar.nascimento@catolica-to.edu.br'
		   , 'Cesar Augusto Costa Nascimento'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020692'
		   , 'chryss.macedo@catolica-to.edu.br'
		   , 'Chryss Ferreira Macedo'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020180'
		   , 'cid@catolica-to.edu.br'
		   , 'Cid Tacaoca Muraishi'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020267'
		   , 'claudecir@catolica-to.edu.br'
		   , 'Claudecir Jose Jaques'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020493'
		   , 'danielle@catolica-to.edu.br'
		   , 'Danielle Soares Magalhaes'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020539'
		   , 'diana.lopes@catolica-to.edu.br'
		   , 'Diana Lopes Da Silva'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020563'
		   , 'dorelivaliente@hotmail.com'
		   , 'Doreli Bugs Valiente'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020608'
		   , 'edson.silva@catolica-to.edu.br'
		   , 'Edson De Paula Silva'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020491'
		   , 'padreeduardo@catolica-to.edu.br'
		   , 'Eduardo Augusto Zanon'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020485'
		   , 'eliane.ferreira@catolica-to.edu.br'
		   , 'Eliane Ferreira Do Nascimento'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020638'
		   , 'eliene.santos@catolica-to.edu.br'
		   , 'Eliene Gomes Dos Santos'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020381'
		   , 'emanuelle@catolica-to.edu.br'
		   , 'Emanuelle Araujo Correia'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020100'
		   , 'evandro@catolica-to.edu.br'
		   , 'Evandro Borges Arantes'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020482'
		   , 'evandro.reina@catolica-to.edu.br'
		   , 'Evandro Reina'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020604'
		   , 'fabio.mota@catolica-to.edu.br'
		   , 'Fabio Alves Mota'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020519'
		   , 'fabio.barbosa@catolica-to.edu.br'
		   , 'Fabio Barbosa Chaves'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020588'
		   , 'fernando.fernandes@catolica-to.edu.br'
		   , 'Fernando Antonio Da Silva Fernandes'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020564'
		   , 'ffernandesribeiro@hotmail.com'
		   , 'Flavia Fernandes Ribeiro De Miranda'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020080'
		   , 'flavio@catolica-to.edu.br'
		   , 'Flavio Augustus Da Mota Pacheco'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020382'
		   , 'francisco@catolica-to.edu.br'
		   , 'Francisco Perna Filho'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020660'
		   , 'francois.sovi@catolica-to.edu.br'
		   , 'Francois Xavier Sovi'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020321'
		   , 'fredson@catolica-to.edu.br'
		   , 'Fredson Vieira Costa'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020717'
		   , 'freurismar.sousa@catolica-to.edu.br'
		   , 'Freurismar Alves De Sousa'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020611'
		   , 'gabriella.araujo@catolica-to.edu.br'
		   , 'Gabriella Costa Araujo'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020644'
		   , 'gentil.cavalheiro@catolica-to.edu.br'
		   , 'Gentil Cavalheiro Adorian'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020653'
		   , 'gisele.villela@catolica-to.edu.br'
		   , 'Gisele Zellmer Poerschke Villela'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020240'
		   , 'guilherme@catolica-to.edu.br'
		   , 'Guilherme Augusto Martins Santos'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020669'
		   , 'ila.cardoso@catolica-to.edu.br'
		   , 'Ila Raquel Mello Cardoso'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020383'
		   , 'ingergleice@catolica-to.edu.br'
		   , 'Ingergleice Machado De Oliveira'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020634'
		   , 'isac.cunha@catolica-to.edu.br'
		   , 'Isac Braz Da Cunha'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020582'
		   , 'jobsoncunha@gmail.om'
		   , 'Jabson Da Cunha Silva'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020384'
		   , 'janay@catolica-to.edu.br'
		   , 'Janay Garcia'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020702'
		   , 'jean.araujo@catolica-to.edu.br'
		   , 'Jean Nunes Ribeiro Araujo'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020658'
		   , 'joao.junior@catolica-to.edu.br'
		   , 'Joao Carlos Sarri Junior'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020565'
		   , 'joao.gonsalves@catolica-to.edu.br'
		   , 'Joao Gonsalves Neto'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020657'
		   , 'jocelio.mendonca@catolica-to.edu.br'
		   , 'Jocelio Cabral Mendonca'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020572'
		   , 'joel.carlos@catolica-to.edu.br'
		   , 'Joel Carlos Zukowski Junior'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020130'
		   , 'joelson@catolica-to.edu.br'
		   , 'Joelson De Araujo Delfino'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020473'
		   , 'josedaniel@catolica-to.edu.br'
		   , 'Jose Daniel Da Silva'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020222'
		   , 'joselopes@catolica-to.edu.br'
		   , 'Jose Lopes Soares Neto'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020695'
		   , 'jose.sinotti@catolica-to.edu.br'
		   , 'Jose Nei Langone Sinotti'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020647'
		   , 'joselaine.vigano@catolica-to.edu.br'
		   , 'Joselaine Vigano'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020488'
		   , 'juliana.pieroni@catolica-to.edu.br'
		   , 'Juliana De Souza Pinto Pieroni'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020648'
		   , 'karina.albuquerque@catolica-to.edu.br'
		   , 'Karina Perehouskei Albuquerque'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020645'
		   , 'karine.mota@catolica-to.edu.br'
		   , 'Karine Alves Goncalves Mota'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020602'
		   , 'kednayara@hotmail.com'
		   , 'Kedma Nayra Da Silva Marinho'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020451'
		   , 'lara@catolica-to.edu.br'
		   , 'Lara Livia Cardoso Costa Bringel'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020566'
		   , 'lazaro.marques@catolica-to.edu.br'
		   , 'Lazaro Marques De Oliveira Junior'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020287'
		   , 'leandro.mello@catolica-to.edu.br'
		   , 'Leandro Jeferson Cabral De Mello'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020484'
		   , 'leonardo.navarro@catolica-to.edu.br'
		   , 'Leonardo Navarro Aquilino'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020612'
		   , 'leonardo.furtado@catolica-to.edu.br'
		   , 'Leonardo Pugliesi Furtado'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020641'
		   , 'lidiane.morais@catolica-to.edu.br'
		   , 'Lidiane Batista De Morais'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020396'
		   , 'lucas@catolica-to.edu.br'
		   , 'Lucas De Oliveira Borges'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020686'
		   , 'lucas.costa@catolica-to.edu.br'
		   , 'Lucas Santos Costa'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020581'
		   , 'luciano.iegi@catolica-to.edu.br'
		   , 'Luciano Iegi Bosco De Araujo'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020613'
		   , 'ludmila.furtado@catolica-to.edu.br'
		   , 'Ludmila Normanha Benedetti Furtado'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020390'
		   , 'michelin@catolica-to.edu.br'
		   , 'Luis Henrique Froes Michelin'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020309'
		   , 'luizrodrigues@catolica-to.edu.br'
		   , 'Luiz Rodrigues Araujo Filho'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020688'
		   , 'luzinete.almeida@catolica-to.edu.br'
		   , 'Luzinete Moreira De Almeida'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020639'
		   , 'mabio.borges@catolica-to.edu.br'
		   , 'Mabio Teodoro Borges'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020401'
		   , 'marcelo.cunha@catolica-to.edu.br'
		   , 'Marcelo Konsgen Cunha'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020689'
		   , 'marcevania.sousa@catolica-to.edu.br'
		   , 'Marcevania Procopio De Sousa'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020308'
		   , 'marco@catolica-to.edu.br'
		   , 'Marco Antonio Firmino De Sousa'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020718'
		   , 'marcos.aguiar@catolica-to.edu.br'
		   , 'Marcos Jair De Aguiar'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020697'
		   , 'maria.cota@catolica-to.edu.br'
		   , 'Maria Do Carmo Cota'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020311'
		   , 'mariajoaquina@catolica-to.edu.br'
		   , 'Maria Joaquina Barbosa Goulart'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020489'
		   , 'maria.leonice@catolica-to.edu.br'
		   , 'Maria Leonice Da Silva Berezowski'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020637'
		   , 'mauricio.castilho@catolica-to.edu.br'
		   , 'Mauricio Araujo Castilho'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020344'
		   , 'ughini@catolica-to.edu.br'
		   , 'Mauricio Kraemer Ughini'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020402'
		   , 'mirian@catolica-to.edu.br'
		   , 'Mirian Das Merces Pereira Da Silva'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020320'
		   , 'murilo@catolica-to.edu.br'
		   , 'Murilo Sudre Miranda'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020706'
		   , 'omar.raimundo@catolica-to.edu.br'
		   , 'Omar Raimundo De Paula Teixeira'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020073'
		   , 'osnilson@catolica-to.edu.br'
		   , 'Osnilson Rodrigues Silva'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020580'
		   , 'paulo.roberto@catolica-to.edu.br'
		   , 'Paulo Roberto Nunes Ferreira'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020536'
		   , 'paulo.vitoriano@catolica-to.edu.br'
		   , 'Paulo Vitoriano Dantas Pereira'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020448'
		   , 'peter@catolica-to.edu.br'
		   , 'Peter Gaberz Kirschnik'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020614'
		   , 'rafael.rosa@catolica-to.edu.br'
		   , 'Rafael Augusto Dos Anjos Rosa'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020125'
		   , 'renatogodinho@catolica-to.edu.br'
		   , 'Renato Godinho'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020670'
		   , 'ricardo.revoredo@catolica-to.edu.br'
		   , 'Ricardo Coelho Revoredo'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020584'
		   , 'rogerio.cavalcante@catolica-to.edu.br'
		   , 'Rogerio Cavalcante Goncalves'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020635'
		   , 'roseli.silca@catolica-to.edu.br'
		   , 'Roseli Rego Santos Cunha Silva'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020492'
		   , 'rubens.honda@catolica-to.edu.br'
		   , 'Rubens Tomio Honda'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020509'
		   , 'samuel.antonio@catolica-to.edu.br'
		   , 'Samuel Antonio Basso Chiesa'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020690'
		   , 'siberia.sq@hotmail.com'
		   , 'Siberia Sales Queiroz De Lima'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020636'
		   , 'silmara.lima@catolica-to.edu.br'
		   , 'Silmara Sanae Sakamoto De Lima'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020319'
		   , 'malfatti@catolica-to.edu.br'
		   , 'Silvano Maneck Malfatti'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020233'
		   , 'stephany@catolica-to.edu.br'
		   , 'Stephany Moraes Martins'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020393'
		   , 'thiago@catolica-to.edu.br'
		   , 'Thiago Magalhaes De Lazari'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020607'
		   , 'thiago.bandeira@catolica-to.edu.br'
		   , 'Thiago Oliveira Bandeira'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020701'
		   , 'vagner.silva@catolica-to.edu.br'
		   , 'Vagner Alves Da Silva'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020255'
		   , 'vailton@catolica-to.edu.br'
		   , 'Vailton Alves De Faria'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020617'
		   , 'valdirene.silva@catolica-to.edu.br'
		   , 'Valdirene Cassia Da Silva'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE
		   , '2020429'
		   , 'valtuir@catolica-to.edu.br'
		   , 'Valtuir Soares Filho'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG'
		   , 'pt_BR'
		   , 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE, '2020714', 'valdirene.silva@catolica-to.edu.br', 'Vinicius Pinheiro Marques'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG', 'pt_BR', 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE, '2020284', 'wellington.gomes@catolica-to.edu.br', 'Wellington Gomes Miranda'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG', 'pt_BR', 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE, '2020335', 'wiltonresplande@catolica-to.edu.br', 'Wilton Resplande De Carvalho'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG', 'pt_BR', 'UTC-3');
INSERT INTO usuario (uuid, ativo, matricula, email, nome, password, locale, time_zone)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , TRUE, '2020332', 'yaragcj@catolica-to.edu.br', 'Yara Gomes Correa'
		   , '{bcrypt}$2a$10$hSSnTf6JwkTI/Sd4.WLWneXkmS0.44IwTu06J9z2JbapzMuHplUoG', 'pt_BR', 'UTC-3');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020665'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020190'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020652'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020318'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020687'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020487'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020107'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020486'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020283'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020266'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020415'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020513'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020499'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020606'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020102'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020721'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020609'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020587'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020516'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020691'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020692'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020180'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020267'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020493'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020539'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020563'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020608'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020491'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020485'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020638'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020381'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020100'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020482'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020604'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020519'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020588'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020564'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020080'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020382'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020660'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020321'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020717'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020611'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020644'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020653'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020240'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020669'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020383'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020634'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020582'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020384'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020702'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020658'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020565'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020657'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020572'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020130'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020473'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020222'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020695'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020647'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020488'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020648'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020645'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020602'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020451'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020566'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020287'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020484'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020612'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020641'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020396'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020686'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020581'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020613'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020390'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020309'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020688'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020639'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020401'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020689'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020308'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020718'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020697'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020311'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020489'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020637'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020344'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020402'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020320'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020706'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020073'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020548'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020580'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020536'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020448'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020614'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020125'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020670'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020584'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020635'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020492'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020509'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020690'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020636'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020319'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020233'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020393'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020607'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020701'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020255'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020617'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020429'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020714'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020284'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020335'), 'PROFESSOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020332'), 'PROFESSOR');
--	endregion

-- region PERFIS DE ACESSO
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = 'admin'), 'SYS_ADMIN');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020688'), 'COORDENADOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020429'), 'COORDENADOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020493'), 'COORDENADOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020612'), 'COORDENADOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020604'), 'COORDENADOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020580'), 'COORDENADOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020488'), 'COORDENADOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020233'), 'COORDENADOR');
INSERT INTO usuario_perfil (id_usuario, perfil)
	VALUES ((SELECT u.uuid FROM usuario u WHERE u.matricula = '2020602'), 'COORDENADOR');
-- endregion

-- region CURSOS
INSERT INTO curso (uuid, nome, id_coordenador)
	VALUES (unhex(replace(uuid(), '-', '')), 'Administração', (SELECT u.uuid
		FROM usuario u
		WHERE u.matricula = '2020688'));
INSERT INTO curso (uuid, nome) VALUES (unhex(replace(uuid(), '-', '')), 'Agronomia');
INSERT INTO curso (uuid, nome) VALUES (unhex(replace(uuid(), '-', '')), 'Arquitetura e Urbanismo');
INSERT INTO curso (uuid, nome, id_coordenador)
	VALUES (unhex(replace(uuid(), '-', '')), 'Ciências Contábeis', (SELECT u.uuid
		FROM usuario u
		WHERE u.matricula = '2020429'));
INSERT INTO curso (uuid, nome, id_coordenador)
	VALUES (unhex(replace(uuid(), '-', '')), 'Curso Superior de Tecnologia em Gestão Ambiental', (SELECT u.uuid
		FROM usuario u
		WHERE u.matricula = '2020493'));
INSERT INTO curso (uuid, nome, id_coordenador)
	VALUES (unhex(replace(uuid(), '-', '')), 'Direito', (SELECT u.uuid FROM usuario u WHERE u.matricula = '2020381'));
INSERT INTO curso (uuid, nome, id_coordenador)
	VALUES (unhex(replace(uuid(), '-', '')), 'Engenharia Ambiental e Sanitária', (SELECT u.uuid
		FROM usuario u
		WHERE u.matricula = '2020493'));
INSERT INTO curso (uuid, nome, id_coordenador)
	VALUES (unhex(replace(uuid(), '-', '')), 'Engenharia Civil', (SELECT u.uuid
		FROM usuario u
		WHERE u.matricula = '2020612'));
INSERT INTO curso (uuid, nome, id_coordenador)
	VALUES (unhex(replace(uuid(), '-', '')), 'Engenharia de Produção', (SELECT u.uuid
		FROM usuario u
		WHERE u.matricula = '2020604'));
INSERT INTO curso (uuid, nome, id_coordenador)
	VALUES (unhex(replace(uuid(), '-', '')), 'Engenharia Elétrica', (SELECT u.uuid
		FROM usuario u
		WHERE u.matricula = '2020580'));
INSERT INTO curso (uuid, nome, id_coordenador)
	VALUES (unhex(replace(uuid(), '-', '')), 'Medicina Veterinária', (SELECT u.uuid
		FROM usuario u
		WHERE u.matricula = '2020488'));
INSERT INTO curso (uuid, nome, id_coordenador)
	VALUES (unhex(replace(uuid(), '-', '')), 'Sistemas de Informação', (SELECT u.uuid
		FROM usuario u
		WHERE u.matricula = '2020233'));
INSERT INTO curso (uuid, nome, id_coordenador)
	VALUES (unhex(replace(uuid(), '-', '')), 'Zootecnia', (SELECT u.uuid FROM usuario u WHERE u.matricula = '2020602'));
-- endregion

-- region DISCIPLINA
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Administração')
		   , 'Análise das Demonstrações Contábeis'
		   , '301171'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Administração')
		   , 'Antropologia e Sociologia'
		   , '301154'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Administração')
		   , 'Ciências da Religião'
		   , '301159'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Administração')
		   , 'Consultoria Empresarial -  - Optativa'
		   , '301195'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Administração')
		   , 'Contabilidade'
		   , '301166'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Administração')
		   , 'Criatividade, Empreendedorismo e Negociação'
		   , '301187'
		   , 12
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Administração')
		   , 'Direito Fiscal e Tributário'
		   , '301183'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Administração')
		   , 'Direito Trabalhista e Previdenciário'
		   , '301175'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Administração')
		   , 'Elaboração e Análise de Projetos'
		   , '301192'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Administração')
		   , 'Elaboração e Análise de Projetos'
		   , '301192'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Administração')
		   , 'Estágio Supervisionado I (Instrumentalização Ciêntífica - Pesquisa em Administração)'
		   , '301206'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Administração')
		   , 'Estágio Supervisionado II (Vivência Empresarial)'
		   , '301207'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Administração')
		   , 'Estágio Supervisionado III (Plano de Negócios)'
		   , '301208'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Administração')
		   , 'Estágio Supervisionado IV ( Projeto de Pesquisa)'
		   , '301209'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Administração')
		   , 'Estágio Supervisionado V ( TCC)'
		   , '301210'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Administração')
		   , 'Estatística'
		   , '301164'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Administração')
		   , 'Gestão da Qualidade e da Produtividade II'
		   , '301185'
		   , NULL
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Administração')
		   , 'Gestão de Custos'
		   , '301181'
		   , NULL
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Administração')
		   , 'Gestão de Pessoas I'
		   , '301176'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Administração')
		   , 'Gestão de Pessoas II'
		   , '301182'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Administração')
		   , 'Gestão de Serviços - Optativa'
		   , '301201'
		   , NULL
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Administração')
		   , 'Gestão Financeira e Orçamentária II'
		   , '301193'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Administração')
		   , 'Gestão Mercadológica I'
		   , '301177'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Administração')
		   , 'Gestão Mercadológica I'
		   , '301177'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Administração')
		   , 'Gestão Mercadológica II'
		   , '301180'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Administração')
		   , 'Instituições do Direito Público e Privado'
		   , '301160'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Administração')
		   , 'Introdução à Economia'
		   , '301162'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Administração')
		   , 'Língua Portuguesa'
		   , '301155'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Administração')
		   , 'Logística e Recursos Materiais'
		   , '301174'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Administração')
		   , 'Logística e Recursos Materiais'
		   , '301174'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Administração')
		   , 'Matemática Básica'
		   , '301156'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Administração')
		   , 'Matemática Financeira'
		   , '301161'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Administração')
		   , 'Metodologia Científica'
		   , '301157'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Administração')
		   , 'Pesquisa Operacional e Teoria de Jogos'
		   , '301178'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Administração')
		   , 'Pesquisa Operacional e Teoria de Jogos'
		   , '301178'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Administração')
		   , 'Planejamento e Gestão Ambiental'
		   , '301186'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Administração')
		   , 'Planejamento e Gestão Ambiental'
		   , '301186'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Administração')
		   , 'Planejamento Estratégico e Inteligência Competitiva'
		   , '301190'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Administração')
		   , 'Planejamento Estratégico e Inteligência Competitiva'
		   , '301190'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Administração')
		   , 'Psicologia'
		   , '301170'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Administração')
		   , 'Psicologia'
		   , '301170'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Administração')
		   , 'Sistema de Informação Gerencial'
		   , '301173'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Administração')
		   , 'Sistema de Informação Gerencial'
		   , '301173'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Administração')
		   , 'Tecnologia da Informação e da Comunicação'
		   , '301167'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Administração')
		   , 'Teoria Geral Administração II'
		   , '301163'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Administração')
		   , 'Teoria Geral Administração II'
		   , '301163'
		   , NULL
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Administração')
		   , 'Teoria Geral da Administração I'
		   , '301158'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Administração')
		   , 'Tópicos Contemporâneos em Administração - Optativa'
		   , '301198'
		   , NULL
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Agronomia')
		   , 'Agrometeorologia'
		   , '201237'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Agronomia')
		   , 'Anatomia e Fisiologia dos Animais Domésticos'
		   , '201281'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Agronomia')
		   , 'Anatomia e Fisiologia dos Animais Domésticos'
		   , '201281'
		   , NULL
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Agronomia')
		   , 'Biologia Geral'
		   , '201101'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Agronomia')
		   , 'Bioquímica'
		   , '201222'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Agronomia')
		   , 'Calculo'
		   , '201223'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Agronomia')
		   , 'Ciências Ambientais'
		   , '201228'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Agronomia')
		   , 'Ciências Ambientais'
		   , '201228'
		   , NULL
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Agronomia')
		   , 'Ciências da Religião'
		   , '201259'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Agronomia')
		   , 'Ciências da Religião'
		   , '201259'
		   , NULL
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Agronomia')
		   , 'Construções Rurais'
		   , '201260'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Agronomia')
		   , 'Desenho Técnico'
		   , '201224'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Agronomia')
		   , 'Direito Agrário - Optativa'
		   , '201278'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Agronomia')
		   , 'Economia e Administração de Empreendimentos Rurais'
		   , '201271'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Agronomia')
		   , 'Economia e Administração de Empreendimentos Rurais'
		   , '201271'
		   , NULL
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Agronomia')
		   , 'Elaboração e Análise de Projetos Agropecuários - Optativa'
		   , '201288'
		   , NULL
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Agronomia')
		   , 'Entomologia Agricola'
		   , '201242'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Agronomia')
		   , 'Estágio Supervisionado I'
		   , '201247'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Agronomia')
		   , 'Estágio Supervisionado II'
		   , '201253'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Agronomia')
		   , 'Estágio Supervisionado III'
		   , '201258'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Agronomia')
		   , 'Estágio Supervisionado IV'
		   , '201263'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Agronomia')
		   , 'Estágio Supervisionado V'
		   , '201269'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Agronomia')
		   , 'Estatística Básica'
		   , '201232'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Agronomia')
		   , 'Experimentação Agrícola'
		   , '201283'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Agronomia')
		   , 'Fertilidade do Solo e Nutrição de Plantas'
		   , '201240'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Agronomia')
		   , 'Física Geral'
		   , '201230'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Agronomia')
		   , 'Fisiologia Vegetal'
		   , '201233'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Agronomia')
		   , 'Fitopatologia Agrícola'
		   , '201238'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Agronomia')
		   , 'Fitotecnia I'
		   , '201254'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Agronomia')
		   , 'Fitotecnia I'
		   , '201254'
		   , NULL
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Agronomia')
		   , 'Fitotecnia II'
		   , '201261'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Agronomia')
		   , 'Fitotecnia III'
		   , '201265'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Agronomia')
		   , 'Forragicultura e Nutrição Animal'
		   , '201248'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Agronomia')
		   , 'Fruticultura Tropical'
		   , '201249'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Agronomia')
		   , 'Gênese, Morfologia e Classificação do Solo'
		   , '201229'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Agronomia')
		   , 'Genética Básica e Evolução'
		   , '201234'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Agronomia')
		   , 'Hidraúlica, Irrigação e Drenagem'
		   , '201243'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Agronomia')
		   , 'Hidrologia e Manejo de Bacias Hidrográficas'
		   , '201241'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Agronomia')
		   , 'Informática Básica'
		   , '201280'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Agronomia')
		   , 'Introdução à Agronomia'
		   , '201219'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Agronomia')
		   , 'Manejo de Plantas Daninhas'
		   , '201251'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Agronomia')
		   , 'Manejo e Conservação de Solo e Água'
		   , '201244'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Agronomia')
		   , 'Mecânica e Máquinas Agrícolas'
		   , '201245'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Agronomia')
		   , 'Melhoramento Genético de Plantas'
		   , '201284'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Agronomia')
		   , 'Metodologia Científica'
		   , '201226'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Agronomia')
		   , 'Microbiologia Agrícola'
		   , '201235'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Agronomia')
		   , 'Morfologia e Sistemática Vegetal'
		   , '201225'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Agronomia')
		   , 'Olericultura'
		   , '201250'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Agronomia')
		   , 'Paisagismo, Parques e Jardins'
		   , '201255'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Agronomia')
		   , 'Piscicultura e Aquicultura - Optativa'
		   , '201277'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Agronomia')
		   , 'Piscicultura e Aquicultura - Optativa'
		   , '201277'
		   , NULL
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Agronomia')
		   , 'Português Instrumental'
		   , '201221'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Agronomia')
		   , 'Processamento de Produtos Agroindustriais'
		   , '201286'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Agronomia')
		   , 'Processamento de Produtos Agroindustriais'
		   , '201286'
		   , NULL
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Agronomia')
		   , 'Química Geral e Analítica'
		   , '201220'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Agronomia')
		   , 'Sementes'
		   , '201285'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Agronomia')
		   , 'Sementes'
		   , '201285'
		   , NULL
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Agronomia')
		   , 'Sensoriamento Remoto e Geoprocessamento'
		   , '201236'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Agronomia')
		   , 'Silvicultura'
		   , '201252'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Agronomia')
		   , 'Sociologia e Extensão Rural'
		   , '201287'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Agronomia')
		   , 'Tecnologia e Aplicação de Defensivos Agrícolas - Optativa'
		   , '201274'
		   , 12
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Agronomia')
		   , 'Tecnologia e Aplicação de Defensivos Agrícolas - Optativa'
		   , '201274'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Agronomia')
		   , 'Tecnologia e Aplicação de Defensivos Agrícolas - Optativa'
		   , '201274'
		   , NULL
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Agronomia')
		   , 'Topografia Aplicada às Ciências Agrárias'
		   , '201282'
		   , NULL
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Agronomia')
		   , 'Topografia Aplicada às Ciências Agrárias'
		   , '201282'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Agronomia')
		   , 'Trabalho de Conclusão de Curso'
		   , '201268'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Agronomia')
		   , 'Zootecnia Geral'
		   , '201257'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Ciências Contábeis')
		   , 'Análise das Demonstrações Contábeis'
		   , '3040137'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Ciências Contábeis')
		   , 'Análise de Custos'
		   , '3040131'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Ciências Contábeis')
		   , 'Auditoria Contábil I'
		   , '3040144'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Ciências Contábeis')
		   , 'Auditoria Contábil I'
		   , '3040144'
		   , NULL
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Ciências Contábeis')
		   , 'Auditoria Contábil II'
		   , '3040149'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Ciências Contábeis')
		   , 'Auditoria Contábil II'
		   , '3040149'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Ciências Contábeis')
		   , 'Consultoria Empresarial - Optativa'
		   , '3040157'
		   , NULL
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Ciências Contábeis')
		   , 'Contabilidade Agropecuária'
		   , '3040136'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Ciências Contábeis')
		   , 'Contabilidade Ambiental e Balanço Social'
		   , '3040140'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Ciências Contábeis')
		   , 'Contabilidade Avançada'
		   , '3040134'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Ciências Contábeis')
		   , 'Contabilidade Avançada'
		   , '3040134'
		   , NULL
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Ciências Contábeis')
		   , 'Contabilidade Comercial'
		   , '3040119'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Ciências Contábeis')
		   , 'Contabilidade e Sistemas de Custos'
		   , '3040126'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Ciências Contábeis')
		   , 'Contabilidade Geral'
		   , '3040164'
		   , 144
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Ciências Contábeis')
		   , 'Contabilidade Gerencial e Sistema de Informação'
		   , '3040139'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Ciências Contábeis')
		   , 'Contabilidade Gerencial e Sistema de Informação'
		   , '3040139'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Ciências Contábeis')
		   , 'Contabilidade Gerencial e Sistema de Informação'
		   , '3040139'
		   , NULL
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Ciências Contábeis')
		   , 'Contabilidade Intermediária'
		   , '3040127'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Ciências Contábeis')
		   , 'Contabilidade Pública'
		   , '3040130'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Ciências Contábeis')
		   , 'Contabilidade Tributária'
		   , '3040135'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Ciências Contábeis')
		   , 'Controladoria'
		   , '3040146'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Ciências Contábeis')
		   , 'Controladoria'
		   , '3040146'
		   , NULL
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Ciências Contábeis')
		   , 'Direito Empresarial'
		   , '3040124'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Ciências Contábeis')
		   , 'Direito Trabalhista e Previdenciário'
		   , '3040132'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Ciências Contábeis')
		   , 'Direito Trabalhista e Previdenciário'
		   , '3040132'
		   , NULL
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Ciências Contábeis')
		   , 'Direito Tributário'
		   , '3040133'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Ciências Contábeis')
		   , 'Estágio Supervisionado'
		   , '3040171'
		   , 144
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Ciências Contábeis')
		   , 'Estatística'
		   , '3040122'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Ciências Contábeis')
		   , 'Ética Geral e Profissional'
		   , '3040123'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Ciências Contábeis')
		   , 'Finanças e Orçamento Público'
		   , '3040128'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Ciências Contábeis')
		   , 'Instituições de Direito Público e Privado'
		   , '3040120'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Ciências Contábeis')
		   , 'Instituições de Direito Público e Privado'
		   , '3040120'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Ciências Contábeis')
		   , 'Introdução a Economia'
		   , '3040116'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Ciências Contábeis')
		   , 'Introdução a Economia'
		   , '3040116'
		   , NULL
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Ciências Contábeis')
		   , 'Laboratório de Prática Contábil'
		   , '3040170'
		   , 144
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Ciências Contábeis')
		   , 'Laboratório de Prática Contábil'
		   , '3040170'
		   , NULL
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', '')), (SELECT c.uuid FROM curso c WHERE c.nome = 'Ciências Contábeis')
		   , 'Língua Portuguesa', '3040112', 72, CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Ciências Contábeis')
		   , 'Matemática Aplicada às Ciências Sociais'
		   , '3040111'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Ciências Contábeis')
		   , 'Matemática Financeira'
		   , '3040115'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Ciências Contábeis')
		   , 'Matemática Financeira'
		   , '3040115'
		   , NULL
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Ciências Contábeis')
		   , 'Mercado de Capitais'
		   , '3040166'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Ciências Contábeis')
		   , 'Metodologia Científica'
		   , '3040110'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Ciências Contábeis')
		   , 'Perícia Contábil'
		   , '3040138'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Ciências Contábeis')
		   , 'Perícia Contábil'
		   , '3040138'
		   , NULL
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Ciências Contábeis')
		   , 'Sociologia Aplicada às Ciências Sociais'
		   , '3040113'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Ciências Contábeis')
		   , 'Sociologia Aplicada às Ciências Sociais'
		   , '3040113'
		   , NULL
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Ciências Contábeis')
		   , 'Sociologia Aplicada às Ciências Sociais'
		   , '3040113'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Ciências Contábeis')
		   , 'Tecnologia da Informação e da Comunicação'
		   , '3040121'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Ciências Contábeis')
		   , 'Teoria da Contabilidade'
		   , '3040141'
		   , NULL
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Ciências Contábeis')
		   , 'Teoria Geral da Administração'
		   , '3040117'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Ciências Contábeis')
		   , 'Tópicos Contemporâneo em Contabilidade'
		   , '3040145'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Ciências Contábeis')
		   , 'Tópicos Contemporâneo em Contabilidade'
		   , '3040145'
		   , NULL
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Ciências Contábeis')
		   , 'Trabalho de Conclusão de Curso I - Projeto'
		   , '3040143'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Ciências Contábeis')
		   , 'Trabalho de Conclusão de Curso II'
		   , '3040148'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid
		FROM curso c
		WHERE c.nome = 'Curso Superior de Tecnologia em Gestão Ambiental')
		   , 'Auditoria Ambiental'
		   , '205199'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid
		FROM curso c
		WHERE c.nome = 'Curso Superior de Tecnologia em Gestão Ambiental')
		   , 'Auditoria Ambiental'
		   , '205199'
		   , NULL
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid
		FROM curso c
		WHERE c.nome = 'Curso Superior de Tecnologia em Gestão Ambiental')
		   , 'Ciências Ambientais'
		   , '205182'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid
		FROM curso c
		WHERE c.nome = 'Curso Superior de Tecnologia em Gestão Ambiental')
		   , 'Ciências da Religião'
		   , '205184'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', '')), (SELECT c.uuid
		FROM curso c
		WHERE c.nome = 'Curso Superior de Tecnologia em Gestão Ambiental'), 'Desenho Técnico', '205187', 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid
		FROM curso c
		WHERE c.nome = 'Curso Superior de Tecnologia em Gestão Ambiental')
		   , 'Direito e legislação Ambiental'
		   , '205197'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid
		FROM curso c
		WHERE c.nome = 'Curso Superior de Tecnologia em Gestão Ambiental')
		   , 'Educação Ambiental e Sustentabilidade'
		   , '205181'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid
		FROM curso c
		WHERE c.nome = 'Curso Superior de Tecnologia em Gestão Ambiental')
		   , 'Elaboração e Analise de Projetos- Optativa'
		   , '205206'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid
		FROM curso c
		WHERE c.nome = 'Curso Superior de Tecnologia em Gestão Ambiental')
		   , 'Estágio Supervisionado I'
		   , '205198'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid
		FROM curso c
		WHERE c.nome = 'Curso Superior de Tecnologia em Gestão Ambiental')
		   , 'Estágio Supervisionado II'
		   , '205204'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid
		FROM curso c
		WHERE c.nome = 'Curso Superior de Tecnologia em Gestão Ambiental')
		   , 'Geoprocessamento'
		   , '205194'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid
		FROM curso c
		WHERE c.nome = 'Curso Superior de Tecnologia em Gestão Ambiental')
		   , 'Gestão de Abastecimento e Tratamento de Água'
		   , '205203'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid
		FROM curso c
		WHERE c.nome = 'Curso Superior de Tecnologia em Gestão Ambiental')
		   , 'Gestão de Recursos Florestais'
		   , '205193'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid
		FROM curso c
		WHERE c.nome = 'Curso Superior de Tecnologia em Gestão Ambiental')
		   , 'Gestão de Residuos Sólidos'
		   , '205200'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid
		FROM curso c
		WHERE c.nome = 'Curso Superior de Tecnologia em Gestão Ambiental')
		   , 'Impactos. Monitoramento e Controle Ambiental'
		   , '205195'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid
		FROM curso c
		WHERE c.nome = 'Curso Superior de Tecnologia em Gestão Ambiental')
		   , 'Leitura e Produção de Texto'
		   , '205191'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid
		FROM curso c
		WHERE c.nome = 'Curso Superior de Tecnologia em Gestão Ambiental')
		   , 'Leitura e Produção de Texto'
		   , '205191'
		   , NULL
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid
		FROM curso c
		WHERE c.nome = 'Curso Superior de Tecnologia em Gestão Ambiental')
		   , 'Manejo de Unidades de Conservação'
		   , '205189'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid
		FROM curso c
		WHERE c.nome = 'Curso Superior de Tecnologia em Gestão Ambiental')
		   , 'Metodologia Científica'
		   , '205183'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid
		FROM curso c
		WHERE c.nome = 'Curso Superior de Tecnologia em Gestão Ambiental')
		   , 'Planejamento e Gestão Ambiental'
		   , '205201'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid
		FROM curso c
		WHERE c.nome = 'Curso Superior de Tecnologia em Gestão Ambiental')
		   , 'Planejamento e Gestão Ambiental'
		   , '205201'
		   , NULL
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid
		FROM curso c
		WHERE c.nome = 'Curso Superior de Tecnologia em Gestão Ambiental')
		   , 'Planejamento e Gestão de Recursos Hidricos'
		   , '205188'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid
		FROM curso c
		WHERE c.nome = 'Curso Superior de Tecnologia em Gestão Ambiental')
		   , 'Poluição Ambiental'
		   , '205186'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid
		FROM curso c
		WHERE c.nome = 'Curso Superior de Tecnologia em Gestão Ambiental')
		   , 'Probabilidade e Estatística'
		   , '205185'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid
		FROM curso c
		WHERE c.nome = 'Curso Superior de Tecnologia em Gestão Ambiental')
		   , 'Probabilidade e Estatística'
		   , '205185'
		   , NULL
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid
		FROM curso c
		WHERE c.nome = 'Curso Superior de Tecnologia em Gestão Ambiental')
		   , 'Química Ambiental'
		   , '205192'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid
		FROM curso c
		WHERE c.nome = 'Curso Superior de Tecnologia em Gestão Ambiental')
		   , 'Recuperação de Areas Degradadas'
		   , '205196'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid
		FROM curso c
		WHERE c.nome = 'Curso Superior de Tecnologia em Gestão Ambiental')
		   , 'Sistema de Esgotamento Sanitário'
		   , '205202'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid
		FROM curso c
		WHERE c.nome = 'Curso Superior de Tecnologia em Gestão Ambiental')
		   , 'Solos e Fertilidade'
		   , '205190'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Análise Econômica de Direito - Optativa'
		   , '308143'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Análise Econômica de Direito - Optativa'
		   , '308143'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Antropologia e Sociologia'
		   , '308079'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Antropologia e Sociologia'
		   , '308079'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Ciências da Religião'
		   , '308083'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Ciências da Religião'
		   , '308083'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Ciências Política e Teoria Geral do Estado'
		   , '308077'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Ciências Política e Teoria Geral do Estado'
		   , '308077'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Direito Administrativo I'
		   , '308116'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Direito Administrativo I'
		   , '308116'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Direito Administrativo II'
		   , '308123'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Direito Administrativo II'
		   , '308123'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Direito Ambiental'
		   , '308104'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Direito Ambiental'
		   , '308104'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Direito Civil I'
		   , '308082'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Direito Civil I'
		   , '308082'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Direito Civil II'
		   , '308086'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Direito Civil II'
		   , '308086'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Direito Civil III'
		   , '308092'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Direito Civil III'
		   , '308092'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Direito Civil IV'
		   , '308097'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Direito Civil IV'
		   , '308097'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Direito Civil V'
		   , '308102'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Direito Civil V'
		   , '308102'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Direito Civil VI'
		   , '308107'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Direito Civil VI'
		   , '308107'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Direito Civil VII'
		   , '308112'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Direito Civil VII'
		   , '308112'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Direito Constitucional I'
		   , '308088'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Direito Constitucional I'
		   , '308088'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Direito Constitucional II'
		   , '308091'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Direito Constitucional II'
		   , '308091'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Direito Constitucional III'
		   , '308098'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Direito Constitucional III'
		   , '308098'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Direito de Empresa'
		   , '308110'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Direito de Empresa'
		   , '308110'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Direito do Consumidor'
		   , '308122'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Direito do Consumidor'
		   , '308122'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Direito do Trabalho I'
		   , '308108'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Direito do Trabalho I'
		   , '308108'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Direito do Trabalho II'
		   , '308113'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Direito do Trabalho II'
		   , '308113'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Direito Eleitoral - Optativa'
		   , '308132'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Direito Eleitoral - Optativa'
		   , '308132'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Direito Internacional'
		   , '308124'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Direito Internacional'
		   , '308124'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Direito Penal I'
		   , '308084'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Direito Penal I'
		   , '308084'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Direito Penal II'
		   , '308090'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Direito Penal II'
		   , '308090'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Direito Penal III'
		   , '308095'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Direito Penal III'
		   , '308095'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Direito Penal IV'
		   , '308100'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Direito Penal IV'
		   , '308100'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Direito Penal V'
		   , '308106'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Direito Penal V'
		   , '308106'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Direito Previdenciário - Optativa'
		   , '308134'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Direito Processual Civil I'
		   , '308096'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Direito Processual Civil I'
		   , '308096'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Direito Processual Civil II'
		   , '308101'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Direito Processual Civil II'
		   , '308101'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Direito Processual Civil III'
		   , '308105'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Direito Processual Civil III'
		   , '308105'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Direito Processual Civil IV'
		   , '308111'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Direito Processual Civil IV'
		   , '308111'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Direito Processual do Trabalho'
		   , '308119'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Direito Processual do Trabalho'
		   , '308119'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Direito Processual Penal I'
		   , '308094'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Direito Processual Penal I'
		   , '308094'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Direito Processual Penal II'
		   , '308099'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Direito Processual Penal II'
		   , '308099'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Direito Tributário I'
		   , '308118'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Direito Tributário I'
		   , '308118'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Direito Tributário II'
		   , '308125'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Direito Tributário II'
		   , '308125'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Economia'
		   , '308117'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Economia'
		   , '308117'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Ética Geral e Profissional'
		   , '308093'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Ética Geral e Profissional'
		   , '308093'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Filosofia do Direito'
		   , '308087'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Filosofia do Direito'
		   , '308087'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Filosofia Geral com Lógica Menor'
		   , '308074'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Filosofia Geral com Lógica Menor'
		   , '308074'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Filosofia Geral com Lógica Menor'
		   , '308074'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Historia do Direito'
		   , '308080'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Historia do Direito'
		   , '308080'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Introdução ao Estudo do Direito'
		   , '308076'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Introdução ao Estudo do Direito'
		   , '308076'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Introdução ao Estudo do Direito'
		   , '308076'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Língua Portuguesa'
		   , '308075'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Língua Portuguesa'
		   , '308075'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Metodologia do Trabalho Científico'
		   , '308078'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Metodologia do Trabalho Científico'
		   , '308078'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Monografia I (TCC)'
		   , '308114'
		   , NULL
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Monografia I (TCC)'
		   , '308114'
		   , NULL
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Monografia I (TCC)'
		   , '308114'
		   , NULL
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Monografia I (TCC)'
		   , '308114'
		   , NULL
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Monografia I (TCC)'
		   , '308114'
		   , NULL
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Monografia I (TCC)'
		   , '308114'
		   , NULL
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Monografia I (TCC)'
		   , '308114'
		   , NULL
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Monografia I (TCC)'
		   , '308114'
		   , NULL
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Monografia I (TCC)'
		   , '308114'
		   , NULL
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Monografia I (TCC)'
		   , '308114'
		   , NULL
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Monografia I (TCC)'
		   , '308114'
		   , NULL
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Monografia I (TCC)'
		   , '308114'
		   , NULL
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Monografia I (TCC)'
		   , '308114'
		   , NULL
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Monografia I (TCC)'
		   , '308114'
		   , NULL
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Monografia I (TCC)'
		   , '308114'
		   , NULL
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Monografia I (TCC)'
		   , '308114'
		   , NULL
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Monografia I (TCC)'
		   , '308114'
		   , NULL
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Monografia II (TCC)'
		   , '308120'
		   , NULL
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Monografia II (TCC)'
		   , '308120'
		   , NULL
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Monografia II (TCC)'
		   , '308120'
		   , NULL
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Monografia II (TCC)'
		   , '308120'
		   , NULL
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Monografia II (TCC)'
		   , '308120'
		   , NULL
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Monografia II (TCC)'
		   , '308120'
		   , NULL
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Monografia II (TCC)'
		   , '308120'
		   , NULL
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Monografia II (TCC)'
		   , '308120'
		   , NULL
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Monografia II (TCC)'
		   , '308120'
		   , NULL
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Monografia II (TCC)'
		   , '308120'
		   , NULL
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Monografia II (TCC)'
		   , '308120'
		   , NULL
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Monografia II (TCC)'
		   , '308120'
		   , NULL
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Monografia II (TCC)'
		   , '308120'
		   , NULL
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Monografia II (TCC)'
		   , '308120'
		   , NULL
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Monografia II (TCC)'
		   , '308120'
		   , NULL
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Monografia II (TCC)'
		   , '308120'
		   , NULL
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Monografia II (TCC)'
		   , '308120'
		   , NULL
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Pratica de Estágio I'
		   , '308109'
		   , 108
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Pratica de Estágio I'
		   , '308109'
		   , 108
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Pratica de Estágio II'
		   , '308115'
		   , 108
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Pratica de Estágio II'
		   , '308115'
		   , 108
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Pratica de Estágio III'
		   , '308121'
		   , 108
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Pratica de Estágio III'
		   , '308121'
		   , 108
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Pratica de Estágio IV'
		   , '308126'
		   , 108
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Pratica de Estágio IV'
		   , '308126'
		   , 108
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Psicologia'
		   , '308103'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Psicologia'
		   , '308103'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Psicologia'
		   , '308103'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Sociologia Jurídica'
		   , '308085'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Sociologia Jurídica'
		   , '308085'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Teoria Geral do Direito'
		   , '308081'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Teoria Geral do Direito'
		   , '308081'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Teoria Geral do Processo'
		   , '308089'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Teoria Geral do Processo'
		   , '308089'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Tutela Processual do Meio Ambiente - Optativa'
		   , '308146'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Direito')
		   , 'Tutela Processual do Meio Ambiente - Optativa'
		   , '308146'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', '')), (SELECT c.uuid
		FROM curso c
		WHERE c.nome = 'Engenharia Ambiental e Sanitária'), 'Bioquímica', '208015', 72, CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', '')), (SELECT c.uuid
		FROM curso c
		WHERE c.nome = 'Engenharia Ambiental e Sanitária'), 'Calculo I', '208005', 72, CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', '')), (SELECT c.uuid
		FROM curso c
		WHERE c.nome = 'Engenharia Ambiental e Sanitária'), 'Calculo II', '208010', 72, CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', '')), (SELECT c.uuid
		FROM curso c
		WHERE c.nome = 'Engenharia Ambiental e Sanitária'), 'Calculo III', '208016', 72, CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', '')), (SELECT c.uuid
		FROM curso c
		WHERE c.nome = 'Engenharia Ambiental e Sanitária'), 'Ciências Ambientais', '208006', 72, CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', '')), (SELECT c.uuid
		FROM curso c
		WHERE c.nome = 'Engenharia Ambiental e Sanitária'), 'Ciências da Religião', '208011', 72, CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid
		FROM curso c
		WHERE c.nome = 'Engenharia Ambiental e Sanitária')
		   , 'Climatologia e Meteorologia'
		   , '208064'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', '')), (SELECT c.uuid
		FROM curso c
		WHERE c.nome = 'Engenharia Ambiental e Sanitária'), 'Desenho Técnico', '208007', 72, CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', '')), (SELECT c.uuid
		FROM curso c
		WHERE c.nome = 'Engenharia Ambiental e Sanitária'), 'Fenômenos de Transporte', '208063', 72, CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', '')), (SELECT c.uuid
		FROM curso c
		WHERE c.nome = 'Engenharia Ambiental e Sanitária'), 'Física I', '208012', 72, CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', '')), (SELECT c.uuid
		FROM curso c
		WHERE c.nome = 'Engenharia Ambiental e Sanitária'), 'Física II', '208017', 72, CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', '')), (SELECT c.uuid
		FROM curso c
		WHERE c.nome = 'Engenharia Ambiental e Sanitária'), 'Física III', '208021', 72, CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid
		FROM curso c
		WHERE c.nome = 'Engenharia Ambiental e Sanitária')
		   , 'Fundamentos da Computação'
		   , '208008'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid
		FROM curso c
		WHERE c.nome = 'Engenharia Ambiental e Sanitária')
		   , 'Gênese, Morfologia e Classificação de Solo'
		   , '208025'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', '')), (SELECT c.uuid
		FROM curso c
		WHERE c.nome = 'Engenharia Ambiental e Sanitária'), 'Geologia Geral', '208067', 72, CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid
		FROM curso c
		WHERE c.nome = 'Engenharia Ambiental e Sanitária')
		   , 'Geometria Analitíca e Algebra Linear'
		   , '208000'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', '')), (SELECT c.uuid
		FROM curso c
		WHERE c.nome = 'Engenharia Ambiental e Sanitária'), 'Hidráulica', '208027', 8, CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', '')), (SELECT c.uuid
		FROM curso c
		WHERE c.nome = 'Engenharia Ambiental e Sanitária'), 'Hidráulica', '208027', 12, CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', '')), (SELECT c.uuid
		FROM curso c
		WHERE c.nome = 'Engenharia Ambiental e Sanitária'), 'Hidráulica', '208027', 20, CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', '')), (SELECT c.uuid
		FROM curso c
		WHERE c.nome = 'Engenharia Ambiental e Sanitária'), 'Hidráulica', '208027', 72, CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', '')), (SELECT c.uuid
		FROM curso c
		WHERE c.nome = 'Engenharia Ambiental e Sanitária'), 'Introdução à Engenharia', '208001', 72, CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid
		FROM curso c
		WHERE c.nome = 'Engenharia Ambiental e Sanitária')
		   , 'Introdução ao Saneamento Ambiental'
		   , '208066'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', '')), (SELECT c.uuid
		FROM curso c
		WHERE c.nome = 'Engenharia Ambiental e Sanitária'), 'Mecânica Geral', '208065', 72, CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', '')), (SELECT c.uuid
		FROM curso c
		WHERE c.nome = 'Engenharia Ambiental e Sanitária'), 'Metodologia Cientifica', '208003', 72, CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid
		FROM curso c
		WHERE c.nome = 'Engenharia Ambiental e Sanitária')
		   , 'Microbiologia Ambiental e Sanitária'
		   , '208022'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid
		FROM curso c
		WHERE c.nome = 'Engenharia Ambiental e Sanitária')
		   , 'Modelagem Matemática em Sistemas Ambientais'
		   , '208056'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', '')), (SELECT c.uuid
		FROM curso c
		WHERE c.nome = 'Engenharia Ambiental e Sanitária'), 'Poluição Ambiental', '208045', 72, CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', '')), (SELECT c.uuid
		FROM curso c
		WHERE c.nome = 'Engenharia Ambiental e Sanitária'), 'Português Instrumental', '208002', 72, CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid
		FROM curso c
		WHERE c.nome = 'Engenharia Ambiental e Sanitária')
		   , 'Probabilidade e Estatística'
		   , '208018'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid
		FROM curso c
		WHERE c.nome = 'Engenharia Ambiental e Sanitária')
		   , 'Química Geral e Analítica'
		   , '208004'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', '')), (SELECT c.uuid
		FROM curso c
		WHERE c.nome = 'Engenharia Ambiental e Sanitária'), 'Química Orgânica', '208013', 72, CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid
		FROM curso c
		WHERE c.nome = 'Engenharia Ambiental e Sanitária')
		   , 'Resistência dos Materias'
		   , '208036'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid
		FROM curso c
		WHERE c.nome = 'Engenharia Ambiental e Sanitária')
		   , 'Sensoriamento Remoto e Geoprocessamento'
		   , '208014'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid
		FROM curso c
		WHERE c.nome = 'Engenharia Ambiental e Sanitária')
		   , 'Sociologia, Ética e Cidadania'
		   , '208009'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid
		FROM curso c
		WHERE c.nome = 'Engenharia Ambiental e Sanitária')
		   , 'Topografia e Cartografia'
		   , '208024'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Civil')
		   , 'Arquitetura e Urbanismo'
		   , '209044'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Civil')
		   , 'Barragens e Obras de Terra'
		   , '209076'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Civil')
		   , 'Calculo I'
		   , '209006'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Civil')
		   , 'Calculo II'
		   , '209011'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Civil')
		   , 'Calculo III'
		   , '209016'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Civil')
		   , 'Calculo Numérico'
		   , '209021'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Civil')
		   , 'Ciências Ambientais'
		   , '209007'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Civil')
		   , 'Ciências da Religião'
		   , '209008'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Civil')
		   , 'Desenho Técnico I'
		   , '209009'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Civil')
		   , 'Desenho Técnico II'
		   , '209012'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Civil')
		   , 'Estágio Supervisionado I'
		   , '209026'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Civil')
		   , 'Estruturas de Concreto Armado I'
		   , '209068'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Civil')
		   , 'Estruturas de Concreto Armado II'
		   , '209072'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Civil')
		   , 'Fenômenos de Transporte'
		   , '209027'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Civil')
		   , 'Física I'
		   , '209013'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Civil')
		   , 'Física II'
		   , '209017'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Civil')
		   , 'Física III'
		   , '209022'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Civil')
		   , 'Fundamentos Geotécnicos I'
		   , '209065'
		   , 8
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Civil')
		   , 'Fundamentos Geotécnicos I'
		   , '209065'
		   , 12
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Civil')
		   , 'Fundamentos Geotécnicos I'
		   , '209065'
		   , 16
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Civil')
		   , 'Fundamentos Geotécnicos I'
		   , '209065'
		   , 20
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Civil')
		   , 'Fundamentos Geotécnicos I'
		   , '209065'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Civil')
		   , 'Fundamentos Geotécnicos II'
		   , '209070'
		   , 12
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Civil')
		   , 'Fundamentos Geotécnicos II'
		   , '209070'
		   , 16
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Civil')
		   , 'Fundamentos Geotécnicos II'
		   , '209070'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Civil')
		   , 'Geologia de Engenharia'
		   , '209062'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Civil')
		   , 'Geometria Analítica e Algebra Linear'
		   , '209001'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Civil')
		   , 'Hidráulica Geral'
		   , '209064'
		   , 12
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Civil')
		   , 'Hidráulica Geral'
		   , '209064'
		   , 16
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Civil')
		   , 'Hidráulica Geral'
		   , '209064'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Civil')
		   , 'Hidrologia Aplicada'
		   , '209073'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Civil')
		   , 'Informática Aplicada'
		   , '209002'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Civil')
		   , 'Instalações Elétricas, Prediais e Telefonia'
		   , '209066'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Civil')
		   , 'Instalações Hidráulica e Sanitárias Prediais'
		   , '209067'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Civil')
		   , 'Introdução à Ciência dos Materiais'
		   , '209014'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Civil')
		   , 'Introdução à Engenharia Civil'
		   , '209059'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Civil')
		   , 'Leitura e Produção de Textos Científicos'
		   , '209054'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Civil')
		   , 'Materiais de Construção'
		   , '209061'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Civil')
		   , 'Mecânica dos Sólidos I'
		   , '209025'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Civil')
		   , 'Mecânica dos Sólidos II'
		   , '209029'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Civil')
		   , 'Mecânica Vetorial'
		   , '209060'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Civil')
		   , 'Probabilidade e Estatística'
		   , '209015'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Civil')
		   , 'Projeto Geométrico de Rodovias e Ferrovias'
		   , '209063'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Civil')
		   , 'Projeto Rodoviário e Ferroviário'
		   , '209069'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Civil')
		   , 'Química Geral e Analítica'
		   , '209010'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Civil')
		   , 'Saneamento'
		   , '209042'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Civil')
		   , 'Sociologia, Ética e Cidadania'
		   , '209019'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Civil')
		   , 'Técnicas de Construção I'
		   , '209030'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Civil')
		   , 'Técnicas de Construção II'
		   , '209036'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Civil')
		   , 'Teoria das Estruturas'
		   , '209071'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Civil')
		   , 'Topografia'
		   , '209020'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia de Produção')
		   , 'Administração'
		   , '207005'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia de Produção')
		   , 'Administração da Produção'
		   , '207020'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia de Produção')
		   , 'Análise e Viabilidade Economica e Financeira'
		   , '207037'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia de Produção')
		   , 'Calculo I'
		   , '207006'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia de Produção')
		   , 'Calculo I'
		   , '207006'
		   , NULL
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia de Produção')
		   , 'Calculo II'
		   , '207010'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia de Produção')
		   , 'Calculo III'
		   , '207015'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia de Produção')
		   , 'Cálculo Numérico'
		   , '207054'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia de Produção')
		   , 'Ciências da Religião'
		   , '207011'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia de Produção')
		   , 'Custos da Produção'
		   , '207031'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia de Produção')
		   , 'Desenho Técnico I'
		   , '207007'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia de Produção')
		   , 'Desenho Técnico II'
		   , '207012'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia de Produção')
		   , 'Economia e Mercados Globalizados'
		   , '207013'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia de Produção')
		   , 'Eletricidade Aplicada'
		   , '207025'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia de Produção')
		   , 'Engenharia da Qualidade I'
		   , '207016'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia de Produção')
		   , 'Engenharia da Qualidade II'
		   , '207022'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia de Produção')
		   , 'Engenharia de Fábrica'
		   , '207062'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia de Produção')
		   , 'Engenharia do Produto'
		   , '207026'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia de Produção')
		   , 'Engenharia do Trabalho'
		   , '207027'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia de Produção')
		   , 'Estágio Supervisionado I'
		   , '207028'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia de Produção')
		   , 'Fenômenos de Transporte'
		   , '207057'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia de Produção')
		   , 'Física I'
		   , '207014'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia de Produção')
		   , 'Física II'
		   , '207017'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia de Produção')
		   , 'Física III'
		   , '207023'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia de Produção')
		   , 'Geometria Analitíca e Algebra Linear'
		   , '207000'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia de Produção')
		   , 'Gestão da Inovação Tecnólogica'
		   , '207039'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia de Produção')
		   , 'Gestão Mercadológica'
		   , '207018'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia de Produção')
		   , 'Informática Aplicada'
		   , '207008'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia de Produção')
		   , 'Introdução à Ciência dos Materiais'
		   , '207029'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia de Produção')
		   , 'Introdução à Engenharia'
		   , '207001'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia de Produção')
		   , 'Leitura e Produção de Textos Científicos'
		   , '207053'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia de Produção')
		   , 'Mecânica dos Sólidos'
		   , '207024'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia de Produção')
		   , 'Mecânica Geral'
		   , '207030'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia de Produção')
		   , 'Pesquisa Operacional I'
		   , '207033'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia de Produção')
		   , 'Pesquisa Operacional II'
		   , '207040'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia de Produção')
		   , 'Planejamento e Otimização de Experimentos'
		   , '207034'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia de Produção')
		   , 'Planejamento Programação e Controle da Produção I'
		   , '207041'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia de Produção')
		   , 'Probabilidade e Estatística'
		   , '207019'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia de Produção')
		   , 'Processos Industriais'
		   , '207035'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia de Produção')
		   , 'Psicologia Organizacional e do Trabalho'
		   , '207047'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia de Produção')
		   , 'Química Geral e Analítica'
		   , '207004'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia de Produção')
		   , 'Sistemas Construtivos'
		   , '207058'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia de Produção')
		   , 'Sistemas de Produção'
		   , '207042'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia de Produção')
		   , 'Sociologia, Ética e Cidadania'
		   , '207009'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Elétrica')
		   , 'Algoritmos e Estrutura de Dados'
		   , '206061'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Elétrica')
		   , 'Análise de Sistemas Elétricos de Potência'
		   , '206064'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Elétrica')
		   , 'Automação, Instrumentação e Controle'
		   , '206037'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Elétrica')
		   , 'Calculo I'
		   , '206002'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Elétrica')
		   , 'Calculo II'
		   , '206006'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Elétrica')
		   , 'Calculo III'
		   , '206010'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Elétrica')
		   , 'Calculo Numérico'
		   , '206020'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Elétrica')
		   , 'Ciências Ambientais'
		   , '206016'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Elétrica')
		   , 'Ciências da Religião'
		   , '206026'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Elétrica')
		   , 'Circuitos Elétricos I'
		   , '206023'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Elétrica')
		   , 'Circuitos Elétricos II'
		   , '206025'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Elétrica')
		   , 'Circuitos Lógicos'
		   , '206012'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Elétrica')
		   , 'Conversão de Energia'
		   , '206039'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Elétrica')
		   , 'Desenho Técnico'
		   , '206009'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Elétrica')
		   , 'Eletrônica de Potência'
		   , '206032'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Elétrica')
		   , 'Eletrônica I'
		   , '206022'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Elétrica')
		   , 'Eletrônica II'
		   , '206027'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Elétrica')
		   , 'Engenharia de Segurança'
		   , '206063'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Elétrica')
		   , 'Estágio Supervisionado I'
		   , '206034'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Elétrica')
		   , 'Estágio Supervisionado II'
		   , '206038'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Elétrica')
		   , 'Estágio Supervisionado III'
		   , '206043'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Elétrica')
		   , 'Estágio Supervisionado IV'
		   , '206048'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Elétrica')
		   , 'Fenômeno de Transporte'
		   , '206033'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Elétrica')
		   , 'Física I'
		   , '206011'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Elétrica')
		   , 'Física II'
		   , '206017'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Elétrica')
		   , 'Física III'
		   , '206021'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Elétrica')
		   , 'Geometria Analítica e Álgebra Linear'
		   , '206001'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Elétrica')
		   , 'Geração de Energia Elétrica'
		   , '206044'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Elétrica')
		   , 'Informática Aplicada'
		   , '206008'
		   , 12
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Elétrica')
		   , 'Informática Aplicada'
		   , '206008'
		   , 20
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Elétrica')
		   , 'Informática Aplicada'
		   , '206008'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Elétrica')
		   , 'Instalações Elétricas Prediais'
		   , '206052'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Elétrica')
		   , 'Introdução à Engenharia'
		   , '206000'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Elétrica')
		   , 'Introdução às Ciências dos Materiais'
		   , '206024'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Elétrica')
		   , 'Leitura e Produção de Textos Científicos'
		   , '206060'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Elétrica')
		   , 'Mecânica dos Sólidos'
		   , '206029'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Elétrica')
		   , 'Microprocessadores'
		   , '206040'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Elétrica')
		   , 'Ondas Eletromagnéticas'
		   , '206041'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Elétrica')
		   , 'Princípios da Comunicação'
		   , '206035'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Elétrica')
		   , 'Probabilidade e Estatística'
		   , '206018'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Elétrica')
		   , 'Qualidade de Energia Elétrica - Optativa'
		   , '206055'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Elétrica')
		   , 'Química Geral e Analítica'
		   , '206004'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Elétrica')
		   , 'Redes de Computadores'
		   , '206015'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Elétrica')
		   , 'Sinais e Sistemas Lineares'
		   , '206028'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Elétrica')
		   , 'Sistemas de Comunicação de Dados'
		   , '206045'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Elétrica')
		   , 'Sociologia, Ética e Cidadania'
		   , '206042'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Elétrica')
		   , 'Subestações - Optativa'
		   , '206069'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Elétrica')
		   , 'Teoria Eletromagnética I'
		   , '206030'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Elétrica')
		   , 'Teoria Eletromagnética II'
		   , '206036'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Elétrica')
		   , 'Trabalho de Conclusão de Curso I'
		   , '206065'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Engenharia Elétrica')
		   , 'Transmissão e Distribuição de Energia Elétrica'
		   , '206062'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Medicina Veterinária')
		   , 'Anatomia dos Animais Domésticos I'
		   , '210000'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Medicina Veterinária')
		   , 'Biofísica'
		   , '210003'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Medicina Veterinária')
		   , 'Bioquímica Aplicada à Medicina Veterinária'
		   , '210001'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Medicina Veterinária')
		   , 'Histologia e Embriologia'
		   , '210002'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Medicina Veterinária')
		   , 'Introdução à Medicina Veterinária e Ética Profissional'
		   , '210004'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Medicina Veterinária')
		   , 'Português Instrumental'
		   , '210005'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Sistemas de Informação')
		   , 'Administração'
		   , '302114'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Sistemas de Informação')
		   , 'Administração e Gerência de Redes'
		   , '302145'
		   , NULL
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Sistemas de Informação')
		   , 'Algoritmos de Programação I'
		   , '302112'
		   , 8
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Sistemas de Informação')
		   , 'Algoritmos de Programação II'
		   , '302118'
		   , 36
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Sistemas de Informação')
		   , 'Arquitetura de Computadores I'
		   , '302111'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Sistemas de Informação')
		   , 'Arquitetura de Computadores II'
		   , '302117'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Sistemas de Informação')
		   , 'Banco de Dados II'
		   , '302131'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Sistemas de Informação')
		   , 'Calculo I'
		   , '302115'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Sistemas de Informação')
		   , 'Ciências da Religião'
		   , '302122'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Sistemas de Informação')
		   , 'Criatividade Negociação e Empreendedorismo'
		   , '302143'
		   , NULL
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Sistemas de Informação')
		   , 'Engenharia de Software I'
		   , '302133'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Sistemas de Informação')
		   , 'Estágio Supervisionado I'
		   , '302165'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Sistemas de Informação')
		   , 'Estágio Supervisionado II'
		   , '302166'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Sistemas de Informação')
		   , 'Estrutura de Dados'
		   , '302123'
		   , 12
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Sistemas de Informação')
		   , 'Fundamentos de Inteligência Artificial'
		   , '302139'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Sistemas de Informação')
		   , 'Fundamentos de Matemática'
		   , '302109'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Sistemas de Informação')
		   , 'Interface Homem - Máquina'
		   , '302148'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Sistemas de Informação')
		   , 'Introdução à Economia - Optativa'
		   , '302152'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Sistemas de Informação')
		   , 'Língua Portuguesa'
		   , '302164'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro, ementa)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Sistemas de Informação')
		   , 'Linguagens e Técnicas de Programação I'
		   , '302113'
		   , 2
		   , CURRENT_TIMESTAMP
		   , 'Aspectos do estudo de Linguagens - Sintaxe, Semântica e Paradigmas. Linguagens fonte e objeto, Tradução, Compilação e Interpretação. Programação Estruturada. Pseudocódigo. Fundamentos de algoritmos: Variáveis e Constantes, Aplicação das Estruturas de Controle (sequência, seleção e repetição), Variáveis indexadas unidimensionais (vetores). Variáveis indexadas bidimensionais (matrizes).');
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Sistemas de Informação')
		   , 'Linguagens e Técnicas de Programação II'
		   , '302119'
		   , 36
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Sistemas de Informação')
		   , 'Linguagens e Técnicas de Programação III'
		   , '302124'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Sistemas de Informação')
		   , 'Linguagens e Técnicas de Programação V'
		   , '302132'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Sistemas de Informação')
		   , 'Lógica Matemática'
		   , '302116'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Sistemas de Informação')
		   , 'Metodologia Científica'
		   , '302110'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Sistemas de Informação')
		   , 'Probabilidade e Estatística'
		   , '302125'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Sistemas de Informação')
		   , 'Redes de Computadores I'
		   , '302134'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Sistemas de Informação')
		   , 'Redes de Computadores II'
		   , '302137'
		   , NULL
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Sistemas de Informação')
		   , 'Sistemas Distribuídos'
		   , '302142'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Sistemas de Informação')
		   , 'Sistemas Operacionais'
		   , '302126'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Sistemas de Informação')
		   , 'Sociologia das Organizações - Optativa'
		   , '302120'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Sistemas de Informação')
		   , 'Trabalho de Conclusão de Curso'
		   , '302163'
		   , 144
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Zootecnia')
		   , 'Alimentos e Alimentação'
		   , '2020228'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Zootecnia')
		   , 'Anatomia dos Animais Domésticos'
		   , '2020218'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Zootecnia')
		   , 'Associativismo, Cooperativismo e Extensão Rural - Optativa'
		   , '2020269'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Zootecnia')
		   , 'Avicultura'
		   , '2020256'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Zootecnia')
		   , 'Avicultura'
		   , '2020256'
		   , NULL
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Zootecnia')
		   , 'Bioclimatologia Zootécnica'
		   , '2020245'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Zootecnia')
		   , 'Biofísica'
		   , '2020223'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Zootecnia')
		   , 'Biologia Geral'
		   , '2020213'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Zootecnia')
		   , 'Bioquímica'
		   , '2020219'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Zootecnia')
		   , 'Bovinocultura de Corte'
		   , '2020246'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Zootecnia')
		   , 'Bovinocultura de Leite'
		   , '2020250'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Zootecnia')
		   , 'Calculo e Geometria Analítica'
		   , '2020220'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Zootecnia')
		   , 'Caprinocultura e Ovinocultura'
		   , '2020251'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Zootecnia')
		   , 'Ciências Ambientais'
		   , '2020252'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Zootecnia')
		   , 'Ciências da Religião'
		   , '2020238'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Zootecnia')
		   , 'Desenho Técnico e Construções Rurais'
		   , '2020224'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Zootecnia')
		   , 'Elaboração e Análise de Projetos Agroindustriais'
		   , '2020262'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Zootecnia')
		   , 'Elaboração e Análise de Projetos Agroindustriais'
		   , '2020262'
		   , NULL
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Zootecnia')
		   , 'Eqüideocultura'
		   , '2020257'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Zootecnia')
		   , 'Estágio Supervisionado I'
		   , '2020243'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Zootecnia')
		   , 'Estágio Supervisionado II'
		   , '2020249'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Zootecnia')
		   , 'Estágio Supervisionado III'
		   , '2020254'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Zootecnia')
		   , 'Estágio Supervisionado IV'
		   , '2020259'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Zootecnia')
		   , 'Estágio Supervisionado IV'
		   , '2020259'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Zootecnia')
		   , 'Estágio Supervisionado V'
		   , '2020264'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Zootecnia')
		   , 'Estatística Básica'
		   , '2020229'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Zootecnia')
		   , 'Estatística Experimental'
		   , '2020233'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Zootecnia')
		   , 'Etologia e Bem Estar Animal - Optativa'
		   , '2020267'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Zootecnia')
		   , 'Etologia e Bem Estar Animal - Optativa'
		   , '2020267'
		   , NULL
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Zootecnia')
		   , 'Fisiologia Animal I'
		   , '2020225'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Zootecnia')
		   , 'Fisiologia Animal II'
		   , '2020230'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Zootecnia')
		   , 'Fisiologia Vegetal'
		   , '2020231'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Zootecnia')
		   , 'Fisiologia Vegetal'
		   , '2020231'
		   , NULL
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Zootecnia')
		   , 'Forragicultura'
		   , '2020247'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Zootecnia')
		   , 'Genética Básica e Evolução'
		   , '2020232'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Zootecnia')
		   , 'Gestão Estratégica e Marketing do Agronegócio'
		   , '2020261'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Zootecnia')
		   , 'Histologia e Embriologia'
		   , '2020226'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Zootecnia')
		   , 'Imunologia e Microbiologia Zootécnica'
		   , '2020234'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Zootecnia')
		   , 'Informática Básica'
		   , '2020275'
		   , 8
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Zootecnia')
		   , 'Informática Básica'
		   , '2020275'
		   , 16
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Zootecnia')
		   , 'Informática Básica'
		   , '2020275'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Zootecnia')
		   , 'Introdução à Zootecnia'
		   , '2020215'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Zootecnia')
		   , 'Manejo e Conservação de Pastagens'
		   , '2020253'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Zootecnia')
		   , 'Mecânica e Máquinas Agrícolas'
		   , '2020255'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Zootecnia')
		   , 'Melhoramento Genético Animal I'
		   , '2020276'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Zootecnia')
		   , 'Melhoramento Genético Animal II'
		   , '2020278'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Zootecnia')
		   , 'Metodologia Científica'
		   , '2020216'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Zootecnia')
		   , 'Morfologia e Sistemática Vegetal'
		   , '2020221'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Zootecnia')
		   , 'Nutrição de Monogástricos'
		   , '2020277'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Zootecnia')
		   , 'Nutrição de Ruminantes'
		   , '2020279'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Zootecnia')
		   , 'Parasitologia Aplicada à Zootecnia'
		   , '2020241'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Zootecnia')
		   , 'Piscicultura e Aquicultura'
		   , '2020244'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Zootecnia')
		   , 'Português Instrumental'
		   , '2020222'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Zootecnia')
		   , 'Processamento de Produtos Agroindustriais'
		   , '2020280'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Zootecnia')
		   , 'Processamento de Produtos Agroindustriais'
		   , '2020280'
		   , NULL
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Zootecnia')
		   , 'Profilaxia e Higiene Zootécnica'
		   , '2020248'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Zootecnia')
		   , 'Química Geral e Analítica'
		   , '2020217'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Zootecnia')
		   , 'Reprodução Animal'
		   , '2020242'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Zootecnia')
		   , 'Solos e Nutrição de Plantas'
		   , '2020237'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Zootecnia')
		   , 'Suinocultura'
		   , '2020258'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Zootecnia')
		   , 'Tópicos Especiais em Bovinocultura de Corte e Leite - Optativa'
		   , '2020268'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Zootecnia')
		   , 'Trabalho de Conclusão de Curso'
		   , '2020263'
		   , 72
		   , CURRENT_TIMESTAMP);
INSERT INTO disciplina (uuid, id_curso, nome, cod_interno, qtd_horas_total, data_hora_cadastro)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Zootecnia')
		   , 'Zoologia Geral'
		   , '2020227'
		   , 72
		   , CURRENT_TIMESTAMP);
-- endregion

-- region BIBLIOGRAFIAS
INSERT INTO bibliografia (uuid, descricao)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , 'LEISERSON, C. E.; RIVEST, R.; CORMEN, T. H. Algoritmos – Teoria e Prática. São Paulo: Campus, 2002.');
INSERT INTO bibliografia (uuid, descricao)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , 'OLIVEIRA, J. F.; MANZANO, J. A. N. G. Algoritmos. São Paulo: Érica, 2001. ');
INSERT INTO bibliografia (uuid, descricao)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , 'SEBESTA, R. W. Conceitos de Linguagem de Programação. São Paulo: Bookman. 2003.');
INSERT INTO bibliografia (uuid, descricao)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , 'GUIMARÃES, A. M., Algoritmos e estruturas de dados, Rio de Janeiro: LTC, 1994.');
INSERT INTO bibliografia (uuid, descricao)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , 'KOTANI, A. M. Lógica de Programação – Primeiros Passos. São Paulo: Érica 1991.');
INSERT INTO bibliografia (uuid, descricao)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , 'VAREJÃO, F. Linguagens de Programação JAVA, C e C++ e outras, Rio de Janeiro, Elsevier, 2004.');
INSERT INTO bibliografia (uuid, descricao)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , 'OLIVEIRA, A. B. O. e BORATTI, I. C., Introdução à programação. 3a Edição, Florianópolis, Visual Books, 2007.');
INSERT INTO bibliografia (uuid, descricao)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , 'LOPES, A. e GARCIA, G., Introdução à Programação, Rio de Janeiro, Elsevier, 2002.');
INSERT INTO bibliografia (uuid, descricao)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , 'Nina Edelweiss e Maria Aparecida Castro Livi. Algoritmos e Programação com Exemplos em Pascal e C. 1a Ed. 2014. Ebook Biblioteca A.');
INSERT INTO bibliografia (uuid, descricao)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , 'Schildt, Herbert. Java para iniciantes. 6a Ed. 2015. Ebook Biblioteca A.');
-- endregion

-- region PERIODOS LETIVOS
INSERT INTO periodo_letivo (uuid, descricao, dt_inicio_preenchimento, dt_fim_preenchimento)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , '2018/2'
		   , STR_TO_DATE('2018-07-05', '%Y-%m-%d')
		   , STR_TO_DATE('2018-07-31', '%Y-%m-%d'));
INSERT INTO periodo_letivo (uuid, descricao, dt_inicio_preenchimento, dt_fim_preenchimento)
	VALUES (unhex(replace(uuid(), '-', ''))
		   , '2019/1'
		   , STR_TO_DATE('2018-12-20', '%Y-%m-%d')
		   , STR_TO_DATE('2019-01-10', '%Y-%m-%d'));
-- endregion

-- region CONFIGURAÇÃO DO SISTEMA
INSERT INTO config_sistema (deleted, uuid, data_hora_cadastro)
	VALUES (FALSE, unhex(replace(uuid(), '-', '')), CURRENT_TIMESTAMP);
-- endregion

-- region COMPETENCIAS
INSERT INTO competencia (data_hora_cadastro, deleted, uuid, descricao)
	VALUES (CURRENT_TIMESTAMP
		   , FALSE
		   , unhex(replace(uuid(), '-', ''))
		   , 'Modelar, especificar, implementar, implantar, validar e manter soluções baseadas em sistemas de informação, incluíndo aspectos de interação humano-computador.');
INSERT INTO competencia (data_hora_cadastro, deleted, uuid, descricao)
	VALUES (CURRENT_TIMESTAMP
		   , FALSE
		   , unhex(replace(uuid(), '-', ''))
		   , 'Diagnosticar e mapear, com base científica, problemas e pontos de melhoria nas organizações, propondo alternativas de soluções baseadas em Tecnologias da Informação.');
INSERT INTO competencia (data_hora_cadastro, deleted, uuid, descricao)
	VALUES (CURRENT_TIMESTAMP
		   , FALSE
		   , unhex(replace(uuid(), '-', ''))
		   , 'Ter uma visão contextualizada da área de sistemas de informação em termos políticos, sociais e econômicos.');
INSERT INTO competencia (data_hora_cadastro, deleted, uuid, descricao)
	VALUES (CURRENT_TIMESTAMP
		   , FALSE
		   , unhex(replace(uuid(), '-', ''))
		   , 'Atuar social e profissionalmente de forma ética.');
INSERT INTO competencia (data_hora_cadastro, deleted, uuid, descricao)
	VALUES (CURRENT_TIMESTAMP
		   , FALSE
		   , unhex(replace(uuid(), '-', ''))
		   , 'Participar e conduzir processos de negociação.');
-- endregion

-- region HABILIDADES
INSERT INTO habilidade (data_hora_cadastro, deleted, uuid, descricao)
	VALUES (CURRENT_TIMESTAMP
		   , FALSE
		   , unhex(replace(uuid(), '-', ''))
		   , 'Desenvolver o conceito de função do primeiro grau associado a assuntos simples do cotidiano e a conceitos da economia.');
INSERT INTO habilidade (data_hora_cadastro, deleted, uuid, descricao)
	VALUES (CURRENT_TIMESTAMP
		   , FALSE
		   , unhex(replace(uuid(), '-', ''))
		   , 'Aplicar o conceito e as propriedades das funções para resolver problemas simples de interessada Economia e Administração.');
INSERT INTO habilidade (data_hora_cadastro, deleted, uuid, descricao)
	VALUES (CURRENT_TIMESTAMP
		   , FALSE
		   , unhex(replace(uuid(), '-', ''))
		   , 'Desenvolver o conceito de função do segundo grau associado a assuntos simples do cotidiano e a conceitos da economia.');
INSERT INTO habilidade (data_hora_cadastro, deleted, uuid, descricao)
	VALUES (CURRENT_TIMESTAMP
		   , FALSE
		   , unhex(replace(uuid(), '-', ''))
		   , 'Desenvolver o conceito de função exponencial e logarítmica associado a assuntos simples do cotidiano e a conceitos da economia.');
INSERT INTO habilidade (data_hora_cadastro, deleted, uuid, descricao)
	VALUES (CURRENT_TIMESTAMP
		   , FALSE
		   , unhex(replace(uuid(), '-', ''))
		   , 'Estabelecer e aplicar relações entre coeficientes e raízes de polinômios.');
INSERT INTO habilidade (data_hora_cadastro, deleted, uuid, descricao)
	VALUES (CURRENT_TIMESTAMP, FALSE, unhex(replace(uuid(), '-', '')), 'Desenvolver projetos de algoritmos.');
INSERT INTO habilidade (data_hora_cadastro, deleted, uuid, descricao)
	VALUES (CURRENT_TIMESTAMP
		   , FALSE
		   , unhex(replace(uuid(), '-', '')), 'Implementar os algoritmos propostos em linguagem de programação.');
INSERT INTO habilidade (data_hora_cadastro, deleted, uuid, descricao)
	VALUES (CURRENT_TIMESTAMP
		   , FALSE
		   , unhex(replace(uuid(), '-', '')), 'Realizar testes de mesa para a validação dos resultados.');
INSERT INTO habilidade (data_hora_cadastro, deleted, uuid, descricao)
	VALUES (CURRENT_TIMESTAMP
		   , FALSE
		   , unhex(replace(uuid(), '-', '')), 'Empregar conteúdos de matemática e lógica aplicados à computação;');
-- endregion

-- region CONTEUDOS
INSERT INTO conteudo (data_hora_cadastro, deleted, uuid, descricao)
	VALUES (CURRENT_TIMESTAMP, FALSE, unhex(replace(uuid(), '-', '')), 'Função do segundo grau e suas aplicações');
INSERT INTO conteudo (data_hora_cadastro, deleted, uuid, descricao)
	VALUES (CURRENT_TIMESTAMP
		   , FALSE
		   , unhex(replace(uuid(), '-', ''))
		   , 'Apresentação da disciplina, ementa e plano de aula. Noções básicas da disciplina, sua importância e contexto em um curso de sistemas de informação.');
INSERT INTO conteudo (data_hora_cadastro, deleted, uuid, descricao)
	VALUES (CURRENT_TIMESTAMP
		   , FALSE
		   , unhex(replace(uuid(), '-', '')), 'Apresentação da disciplina e do plano de ensino');
INSERT INTO conteudo (data_hora_cadastro, deleted, uuid, descricao)
	VALUES (CURRENT_TIMESTAMP
		   , FALSE
		   , unhex(replace(uuid(), '-', ''))
		   , 'Aspectos fundamentais das linguagens de programação: sintaxe, semântica e estrutura do código');
-- endregion

-- region METODOLOGIAS
INSERT INTO habilidade (data_hora_cadastro, deleted, uuid, descricao)
	VALUES (CURRENT_TIMESTAMP, FALSE, unhex(replace(uuid(), '-', '')), 'Aula expositiva');
INSERT INTO habilidade (data_hora_cadastro, deleted, uuid, descricao)
	VALUES (CURRENT_TIMESTAMP, FALSE, unhex(replace(uuid(), '-', '')), 'Análise e resolução de problemas');
INSERT INTO habilidade (data_hora_cadastro, deleted, uuid, descricao)
	VALUES (CURRENT_TIMESTAMP, FALSE, unhex(replace(uuid(), '-', '')), 'Leitura de artigo científico');
-- endregion

-- region RECURSOS
INSERT INTO habilidade (data_hora_cadastro, deleted, uuid, descricao)
	VALUES (CURRENT_TIMESTAMP, FALSE, unhex(replace(uuid(), '-', '')), 'Quadro branco');
INSERT INTO habilidade (data_hora_cadastro, deleted, uuid, descricao)
	VALUES (CURRENT_TIMESTAMP, FALSE, unhex(replace(uuid(), '-', '')), 'Pincel');
INSERT INTO habilidade (data_hora_cadastro, deleted, uuid, descricao)
	VALUES (CURRENT_TIMESTAMP, FALSE, unhex(replace(uuid(), '-', '')), 'Laboratório de Informática');
INSERT INTO habilidade (data_hora_cadastro, deleted, uuid, descricao)
	VALUES (CURRENT_TIMESTAMP, FALSE, unhex(replace(uuid(), '-', '')), 'Laboratório de hardware');
INSERT INTO habilidade (data_hora_cadastro, deleted, uuid, descricao)
	VALUES (CURRENT_TIMESTAMP, FALSE, unhex(replace(uuid(), '-', '')), 'Computador');
INSERT INTO habilidade (data_hora_cadastro, deleted, uuid, descricao)
	VALUES (CURRENT_TIMESTAMP, FALSE, unhex(replace(uuid(), '-', '')), 'Smartphone');
-- endregion

-- region TURMAS
# INSERT INTO turma (data_hora_cadastro, uuid, id_disciplina, id_curso, id_professor, nome, status_plano, id_periodo_letivo)
# 	VALUES (CURRENT_TIMESTAMP
# 		   , unhex(replace(uuid(), '-', ''))
# 		   , (SELECT d.uuid
# 		FROM disciplina d
# 		WHERE d.cod_interno = '302113')
# 		   , (SELECT c.uuid FROM curso c WHERE c.nome = 'Sistemas de Informação')
# 		   , (SELECT p.uuid FROM usuario p WHERE p.matricula = '2020319')
# 		   , '1234A'
# 		   , 'AGUARDANDO_PRODUCAO', (SELECT pl.uuid FROM periodo_letivo pl WHERE pl.descricao = '2018/2'));
-- endregion