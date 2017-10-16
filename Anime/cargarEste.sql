drop database ANIME;
source anime.sql;

source ./datos/datos_anime.sql;
source ./datos/fecha.sql;
source ./datos/personajes.sql;

alter table PERSONAJES MODIFY sexo set('Hombre','Mujer') after nombre_anime;
update FECHA set estado="" where anio=2017 and temporada="Verano";
