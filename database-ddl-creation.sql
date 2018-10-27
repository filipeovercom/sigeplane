create table planos (
	id           bigint         not null auto_increment,
	cidade       varchar(255),
	estado       varchar(255),
	nome         varchar(255),
	qtd_usuarios integer        not null,
	valor_mensal decimal(19, 2) not null,
	primary key (id)
)
	engine = InnoDB;

create table tenants (
	id                   bigint not null auto_increment,
	data_hora_alteracao  datetime(6),
	data_hora_cadastro   datetime(6),
	cnpj                 varchar(255),
	dominio              varchar(255),
	bairro               varchar(255),
	cep                  varchar(255),
	cidade               varchar(255),
	complemento          varchar(255),
	estado               varchar(255),
	logradouro           varchar(255),
	proximidade          varchar(255),
	nome                 varchar(255),
	razao_social         varchar(255),
	telefones            varchar(255),
	id_usuario_alteracao bigint,
	id_usuario_cadastro  bigint,
	id_plano             bigint,
	primary key (id)
)
	engine = InnoDB;

create table usuario_perfil (
	id_usuario bigint      not null,
	perfil     varchar(40) not null,
	primary key (id_usuario, perfil)
)
	engine = InnoDB;

create table usuarios (
	id        bigint not null auto_increment,
	ativo     bit    not null,
	email     varchar(255),
	nome      varchar(255),
	password  varchar(255),
	locale    varchar(10),
	time_zone varchar(10),
	primary key (id)
)
	engine = InnoDB;

alter table tenants
	add constraint FKcltk5096srlxrt4r79du83005 foreign key (id_usuario_alteracao) references usuarios (id);

alter table tenants
	add constraint FK6dbqxtytewb881ko6yih84x8 foreign key (id_usuario_cadastro) references usuarios (id);

alter table tenants
	add constraint FK_TENANT_PLANO foreign key (id_plano) references planos (id);

alter table usuario_perfil
	add constraint FK_USUARIO_PERFIL_USUARIO foreign key (id_usuario) references usuarios (id);
