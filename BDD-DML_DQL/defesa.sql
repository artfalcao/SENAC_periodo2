# DDL

create database defesa;

create table forca_armada (
	id_forca_armada int auto_increment not null primary key, 
	nome varchar(45) not null
);
    
create table patente (
	id_patente int not null auto_increment primary key,
    nome varchar(30) not null,
    sigla varchar(3) not null,
    tipo char(1) not null
    check(tipo='P' or tipo='G')
);

create table forca_patente (
	id_forca_patente int not null  auto_increment primary key,
    id_forca int not null,
    id_patente int not null,
    foreign key (id_forca) references forca_armada(id_forca_armada),
    foreign key (id_patente) references patente(id_patente)
);

# DML

insert into forca_armada values (
	"exercito",
	"marinha",
    "aeronautica"
);

insert into patente values 
	("almirante", "Alte", "P"),
	("almirante de esquadra", "AE", "P"),
	("vice-almirante", "VA", "P"),
    ("contra-almirante", "CA", "P"),
    ("capitao de mar e guerra", "CMG", "P"),
    ("capitao de mar e guerra e guerra intendente", "CMG(IM)", "P"),
    ("capitao de fragata", "CF", "P"),
    ("capitao de corveta", "CC", "P"),
    ("capitao-tenente", "CT", "P"),
    ("1º tenente", "1T", "P"),
    ("2º tenente", "2T", "P"),
    ("guarda-marinha", "GM", "P"),
    ("marechal", "Mar", "P"),
    ("general de exercito", "Gen Ex", "P"),
    ("general de divisao", "Gen Div", "P"),
    ("general de brigada", "Gen Bda", "P"),
    ("coronel", "Cel", "P"),
    ("tenente-coronel", "TC", "P"),
    ("major", "Maj", "P"),
    ("capitao", "Cap", "P"),
    ("aspirante a oficial", "Asp", "P"),
    ("aspirante", "Asp", "P"),
    ("aspirante", "Asp", "G"),
    ("marechal do ar", "Mar Ar", "P"),
    ("tenente-brigadeiro", "TB", "P"),
    ("major-brigadeiro", "MB", "P"),
    ("brigadeiro", "BR", "P"),
    ("suboficial", "SO", "G"),
    ("primeiro-sargento", "1º SG", "G"),
    ("segundo-sargento", "2º SG", "G"),
    ("terceiro-sargento", "3º SG", "G"),
    ("cabo", "CB", "G"),
    ("soldado", "SD", "G"),
    ("marinheiro", "MN", "G"),
    ("cadete", "Cad", "G"),
    ("subtenente", "ST", "G"),
    ("soldado de primeira classe", "S1", "G"),
    ("taifeiro-mor", "TM", "G"),
    ("taifeiro de primeira classe", "T1", "G"),
    ("taifeiro de segunda classe", "T2", "G")
;