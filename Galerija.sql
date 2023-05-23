drop database if exists galerija;
create database galerija;
use galerija;

create table galerija(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null,
    nadredena varchar(50),
    autor int
);
create table autor(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null
);
create table slika(
    sifra int not null primary key auto_increment,
    galerija int not null,
    putanja varchar(50)
);
create table slika_oznaka(
    slika int not null,
    oznaka int not null
);
create table oznaka(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null
);

alter table galerija add foreign key (autor)
references autor(sifra);
alter table slika add foreign key (galerija)
references galerija(sifra);
alter table slika_oznaka add foreign key (slika)
references slika(sifra);
alter table slika_oznaka add foreign key (oznaka)
references oznaka slika(sifra);

--unjeti nadredenog
insert into galerija (sifra,naziv,nadredena) values
(null,'Bosko-rostilj prvi maj',''),
(null,'Zadar plocice Mato',''),
(null,'Kresimir kolaci','');

insert into autor (sifra,ime,prezime) values
(null,'Ivan','Kantar'),
(null,'Bosko','Radic'),
(null,'Luka','Kuruc');

