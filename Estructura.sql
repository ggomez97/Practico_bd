create table S (
    id_S VARCHAR (5) PRIMARY KEY NOT NULL,
    SNOMBRE VARCHAR(20) NOT NULL,
    SITUACION INT NOT NULL,
    CIUDAD VARCHAR (15) NOT NULL
);

create table P (
    id_p VARCHAR (5) PRIMARY KEY NOT NULL,
    PNOMBRE VARCHAR (20) NOT NULL,
    COLOR VARCHAR (20) NOT NULL,
    PESO INTEGER NOT NULL,
    CIUDAD VARCHAR (20) NOT NULL
);

create table J (
    id_j VARCHAR(5) PRIMARY KEY NOT NULL,    
    JNOMBRE VARCHAR (20) NOT NULL,
    CIUDAD VARCHAR (20) NOT NULL
);

insert into S (id_s,SNOMBRE,SITUACION,CIUDAD)
values("S1","Salazar",20,"Londres");
insert into S (id_s,SNOMBRE,SITUACION,CIUDAD)
values("S2","Jaimes",10,"Paris");
insert into S (id_s,SNOMBRE,SITUACION,CIUDAD)
values("S3","Bernal",30,"Paris");
insert into S (id_s,SNOMBRE,SITUACION,CIUDAD)
values("S4","Corona",20,"Londres");
insert into S (id_s,SNOMBRE,SITUACION,CIUDAD)
values("S5","Aldana",30,"Atenas");

insert into P (id_p,PNOMBRE,COLOR,PESO,CIUDAD)
values("P1","Tuerca","Rojo",12,"Londres");
insert into P (id_p,PNOMBRE,COLOR,PESO,CIUDAD)
values("P2","Perno","Verde",17,"Paris");
insert into P (id_p,PNOMBRE,COLOR,PESO,CIUDAD)
values("P3","Birlo","Azul",17,"Roma");
insert into P (id_p,PNOMBRE,COLOR,PESO,CIUDAD)
values("P4","Birlo","Rojo",14,"Londres");
insert into P (id_p,PNOMBRE,COLOR,PESO,CIUDAD)
values("P5","Leva","Azul",12,"Paris");
insert into P (id_p,PNOMBRE,COLOR,PESO,CIUDAD)
values("P6","Engrane","Rojo",19,"Londres");

insert into j (id_j,JNOMBRE,CIUDAD)
values("J1","Clasificador","Paris");
insert into j (id_j,JNOMBRE,CIUDAD)
values("J2","Perforadora","Roma");
insert into j (id_j,JNOMBRE,CIUDAD)
values("J3","Lectora","Atenas");
insert into j (id_j,JNOMBRE,CIUDAD)
values("J4","Consola","Atenas");
insert into j (id_j,JNOMBRE,CIUDAD)
values("J5","Compaginador","Londres");
insert into j (id_j,JNOMBRE,CIUDAD)
values("J6","Terminal","Oslo");
insert into j (id_j,JNOMBRE,CIUDAD)
values("J7","Cinta","Londres");





create table SPJ (
    fk_id_s VARCHAR (5) REFERENCES s (id_S),
    fk_id_p VARCHAR (5) REFERENCES p (id_p),
    fk_id_j VARCHAR (5) REFERENCES j (id_j),
    CANT INT NOT NULL
);

insert into SPJ (fk_id_s,fk_id_p,fk_id_j,CANT)
values ("S1","P1","J1",200);
insert into SPJ (fk_id_s,fk_id_p,fk_id_j,CANT)
values ("S1","P1","J4",700);
insert into SPJ (fk_id_s,fk_id_p,fk_id_j,CANT)
values ("S2","P3","J1",400);
insert into SPJ (fk_id_s,fk_id_p,fk_id_j,CANT)
values ("S2","P3","J2",200);
insert into SPJ (fk_id_s,fk_id_p,fk_id_j,CANT)
values ("S2","P3","J3",200);
insert into SPJ (fk_id_s,fk_id_p,fk_id_j,CANT)
values ("S2","P3","J4",500);
insert into SPJ (fk_id_s,fk_id_p,fk_id_j,CANT)
values ("S2","P3","J5",600);
insert into SPJ (fk_id_s,fk_id_p,fk_id_j,CANT)
values ("S2","P3","J6",400);
insert into SPJ (fk_id_s,fk_id_p,fk_id_j,CANT)
values ("S2","P3","J7",800);
insert into SPJ (fk_id_s,fk_id_p,fk_id_j,CANT)
values ("S2","P5","J2",100);
insert into SPJ (fk_id_s,fk_id_p,fk_id_j,CANT)
values ("S3","P3","J1",200);
insert into SPJ (fk_id_s,fk_id_p,fk_id_j,CANT)
values ("S3","P4","J2",500);
insert into SPJ (fk_id_s,fk_id_p,fk_id_j,CANT)
values ("S4","P6","J3",300);
insert into SPJ (fk_id_s,fk_id_p,fk_id_j,CANT)
values ("S4","P6","J7",300);
insert into SPJ (fk_id_s,fk_id_p,fk_id_j,CANT)
values ("S5","P2","J2",200);
insert into SPJ (fk_id_s,fk_id_p,fk_id_j,CANT)
values ("S5","P2","J2",100);
insert into SPJ (fk_id_s,fk_id_p,fk_id_j,CANT)
values ("S5","P5","J5",500);
insert into SPJ (fk_id_s,fk_id_p,fk_id_j,CANT)
values ("S5","P5","J7",100);
insert into SPJ (fk_id_s,fk_id_p,fk_id_j,CANT)
values ("S5","P1","J4",100);
insert into SPJ (fk_id_s,fk_id_p,fk_id_j,CANT)
values ("S5","P3","J4",200);
insert into SPJ (fk_id_s,fk_id_p,fk_id_j,CANT)
values ("S5","P4","J4",800);
insert into SPJ (fk_id_s,fk_id_p,fk_id_j,CANT)
values ("S5","P5","J4",400);
insert into SPJ (fk_id_s,fk_id_p,fk_id_j,CANT)
values ("S5","P6","J4",500);
