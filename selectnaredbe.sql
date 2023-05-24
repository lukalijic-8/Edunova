#do sada smo radili
select * from smjer;
# minimalna forma select naredbe
select 1;

select naziv, sifra, naziv from smjer;

select *, naziv from smjer;

select naziv, 'Osijek' from smjer;

select naziv as smjer, 'Osijek' as grad from smjer;

select naziv, now() as datum, 2 as velicina, 66.22 as cijena from smjer;

select ime, prezime from osoba;

select * from osoba;

select * from osoba where sifra=1;

select * from osoba where sifra>=10;

select * from osoba where sifra>1 and sifra<3;

select * from osoba where sifra=2 or sifra=3;

select * from osoba where not (sifra>3 and sifra<9);

select ime, prezime from osoba
where ime!='Antonio';

select * from osoba where ime like'A%';
select * from osoba where ime like '%a';
select * from osoba where ime like '%a%';
select * from osoba where ime not like '%a%';
select * from osoba where sifra>=3 and sifra<=5;
select * from osoba where sifra between 3 and 5;

select * from osoba where sifra=2 or sifra=6 or sifra=9;
select * from osoba where sifra in (2,6,9);
update osoba set oib='6134940374'
where sifra=10;
select * from osoba where oib is not null;

insert into osoba (ime,prezime)
values("Shaqile","O'Neal");
select * from osoba where ime like 'S%';