CREATE DATABASE KadurinProcedur
USE KadurinProcedur

CREATE TABLE film(
filmId int PRIMARY KEY identity(1,1),
filmNimetus varchar(50),
kestvus int,
rezisoor varchar(50),
v_aasta int);
select * from film;

--mockaroo.com

insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Intimate Strangers (Confidences trop intimes)', 277, 'Spense Mahy', 2005);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Top Hat', 189, 'Mariel Altree', 1992);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Miss Firecracker', 189, 'Redford MacGiffin', 2003);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Dragon Gate Inn (Dragon Inn) (Long men kezhan)', 281, 'Tabbie Narracott', 2010);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Children of the Revolution', 211, 'Concettina McIlwreath', 2006);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Importance of Tying Your Own Shoes, The (Hur många lingon finns det i världen?)', 297, 'Stillmann Gasparro', 2011);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Treasure of the Four Crowns', 112, 'Debby Ivanishchev', 2010);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Coward, The (Kapurush)', 186, 'Garland Boots', 1995);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Hardware', 186, 'Avril Guiso', 2012);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Flying Swords of Dragon Gate, The (Long men fei jia)', 242, 'Ramon Brissenden', 2000);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Bell for Adano, A (John Hersey''s A Bell for Adano)', 138, 'Ethan Josebury', 2000);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('It Happened at the World''s Fair', 185, 'Tallou Yepiskopov', 2011);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('River, The', 225, 'Melodie Lismore', 1997);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Grandpa for Christmas, A (Bert & Becca)', 118, 'Robin Kubek', 2006);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Stalag Luft', 125, 'Roxanne Corter', 2011);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Buying the Cow', 230, 'Mendel Juschke', 2004);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Nocturno 29', 150, 'Courtney Dinzey', 2002);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Body Parts', 120, 'Lesley Caustick', 1995);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Postcards From the Edge', 116, 'Etienne Bedham', 2002);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Wit', 140, 'Marthena Dignum', 1995);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Down with Love', 160, 'Arv Mordon', 2008);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Rough Magic', 254, 'Lemmy Szymonwicz', 2003);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Hillsborough', 248, 'Risa Berger', 1973);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Godzilla vs. Hedorah (Gojira tai Hedorâ) (Godzilla vs. The Smog Monster) ', 264, 'Franni Warsop', 1995);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Finding Neverland', 134, 'Brynn Maryin', 2002);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Good Fairy, The', 160, 'Amelie Ewbank', 2005);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Harvest Month, The (Elokuu)', 144, 'Ingeberg Brumbie', 2003);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Harmontown', 104, 'Uriel Barrack', 2004);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('How to Be a Serial Killer', 290, 'Cosmo Gibbard', 1994);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Kissed by Winter (Vinterkyss)', 202, 'Balduin Trevor', 2004);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('The Amazing Screw-On Head', 230, 'Eugenio Copsey', 2007);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Sun Kissed', 176, 'Wilt Bernhardsson', 1992);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('(A)sexual', 160, 'Jean Marqyes', 1996);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Survival of the Dead', 291, 'Talbert Fechnie', 1987);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Mourning Forest, The (Mogari no mori)', 168, 'Natasha Sheffield', 2007);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Bride of Re-Animator', 247, 'Ram Pedroni', 1989);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('My Brother the Terrorist', 226, 'Garvy Vlach', 2010);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Alive Inside', 194, 'Cybill Anwell', 2004);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Rally On! (Ralliraita)', 205, 'Benton Romeo', 2012);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Prey, The (La proie)', 185, 'Miller Sempill', 2002);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Patsy, The', 249, 'Aluino Hearnaman', 2008);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Largo Winch (Heir Apparent: Largo Winch, The)', 139, 'Madelin Lowfill', 2009);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Horror Planet (a.k.a. Inseminoid)', 145, 'Bent Landell', 1990);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Big Bang in Tunguska (Das Rätsel von Tunguska)', 164, 'Dwain Pettegre', 2004);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Red Dragon', 269, 'Harmonie Swains', 2008);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Home Alone 3', 177, 'Calypso Keese', 1996);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Naked Gun 2 1/2: The Smell of Fear, The', 291, 'Ayn Rosenfield', 2009);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Beach Blanket Bingo', 177, 'Moselle Slinger', 1993);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Shanghai Surprise', 159, 'Bruis Shilston', 1985);
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values ('Food of the Gods, The', 222, 'Fayina Barukh', 2002);

select * from film;

--filmiNimetus otsing esimese tähe järgi

CREATE Procedure otsing1Taht
@taht char (1)
AS
Begin
	SELECT * FROM film
	WHERE filmNimetus LIKE CONCAT(@taht,'%');
End;

--käivitamine
EXEC otsing1Taht 'L';

--PROTSEDUur mis kutsutab sisestatud id järgi

CREATE procedure kutsutaFilm
@id int
AS
BEGIN
SELECT * FROM film;
DELETE FROM film WHERE filmId=@id;
SELECT * FROM film;
END;

EXEC kutsutaFilm 42;


--proceduur , mis loeb filmide arv kokku

CREATE procedure FilmideArv
AS
SELECT COUNT(*) AS 'filmide Arv' FROM film;

EXEC FilmideArv;
