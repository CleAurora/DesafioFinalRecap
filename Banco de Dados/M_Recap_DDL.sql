create database M_Recap

Use M_Recap

Create table Medicos
(
	IdMedico Int Identity not null primary key
	,Nome varchar(255) not null
	,Crm varchar(255) not null unique
	,CrmUf varchar(255) not null
);

Create table pacientes
(
	IdPaciente Int Identity not null primary key
	,Nome varchar(255) not null
	, DataNascimento DateTime not null
	, Cpf varchar(255) not null unique
	, IdMedico int foreign key references Medicos
);