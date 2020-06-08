/* GEO V1.0 */
/* Creation des droits sur l'ensemble des objets */
/* geo_10_structure.sql */
/* PostgreSQL/PostGIS */
/* Conseil régional Nouvelle-Aquitaine - https://cartographie.nouvelle-aquitaine.fr/ */
/* Auteur : Tony VINCENT */


------------------------------------------------------------------------
-- Schéma : Géo

-- DROP SCHEMA upload;
CREATE SCHEMA IF NOT EXIST upload  AUTHORIZATION "pre-sig-usr";

COMMENT ON SCHEMA upload  IS 'Schema pour les médias (JPG,PDF,DOCX,...)';
  

------------------------------------------------------------------------
-- Table: upload.media_bdd

-- DROP TABLE upload.media_bdd;
CREATE TABLE upload.media_bdd
(
    id serial,
    id_object integer NOT NULL,
    media bytea,
    miniature bytea,
    nom_du_fichier text,
    type text,
    titre character varying(255),
    description text,
    auteur character varying(255),
    date date,
    CONSTRAINT id_media_bdd_pkey PRIMARY KEY (id)
);

COMMENT ON TABLE upload.media_bdd IS 'En base de données : les médias seront converti pour être stockés directement dans la table de media_bdd (donc dans la base PostgreSQL)';

COMMENT ON COLUMN  upload.media_bdd.id_object IS 'identifiant des objets auxquels seront rattachés les médias - champ de même type que le champ de l identifiant de la géotable contenant les objets';
COMMENT ON COLUMN  upload.media_bdd.media IS 'champ contenant le média converti au format binaire - champ de type "BYTE"';
COMMENT ON COLUMN  upload.media_bdd.miniature IS 'champ contenant la miniature créée et convertie au format binaire - champ de type "BYTE"';
COMMENT ON COLUMN  upload.media_bdd.nom_du_fichier IS 'champ contenant le nom du fichier duquel est issu le média d origine - champ de type "TEXT"';
COMMENT ON COLUMN  upload.media_bdd.type IS 'champ contenant le type de média (JPG, PDF, DOCX...) - champ de type "TEXT"';

ALTER TABLE upload.media_bdd
  OWNER TO "pre-sig-usr";


------------------------------------------------------------------------
-- Table: upload.media_rep

-- DROP TABLE upload.media_rep;
CREATE TABLE upload.media_rep
(
    id serial,
    id_object integer NOT NULL,
    media text,
    miniature bytea,
    nom_du_fichier text,
    type text,
    titre character varying(255),
    description text,
    auteur character varying(255),
    date date,
    CONSTRAINT id_media_rep_pkey PRIMARY KEY (id)
);

COMMENT ON TABLE upload.media_rep IS 'Dans un répertoire de votre serveur : la table de média ne contiendra alors qu une URL pointant vers votre répertoire serveur';

COMMENT ON COLUMN  upload.media_rep.id_object IS 'identifiant des objets auxquels seront rattachés les médias - champ de même type que le champ de l identifiant de la géotable contenant les objets';
COMMENT ON COLUMN  upload.media_rep.media IS 'champ contenant le média converti au format binaire - champ de type "BYTE"';
COMMENT ON COLUMN  upload.media_rep.miniature IS 'champ contenant la miniature créée et convertie au format binaire - champ de type "BYTE"';
COMMENT ON COLUMN  upload.media_rep.nom_du_fichier IS 'champ contenant le nom du fichier duquel est issu le média d origine - champ de type "TEXT"';
COMMENT ON COLUMN  upload.media_rep.type IS 'champ contenant le type de média (JPG, PDF, DOCX...) - champ de type "TEXT"';

ALTER TABLE upload.media_rep
  OWNER TO "pre-sig-usr";
------------------------------------------------------------------------


------------------------------------------------------------------------
-- Table: upload.media_signaletique

-- DROP TABLE upload.media_signaletique;
CREATE TABLE upload.media_signaletique
(
    id serial,
    id_object character varying(15) NOT NULL,
    id_object_num integer,
    media bytea,
    miniature bytea,
    nom_fichier text,
    type text,
    titre character varying(255),
    description text,
    auteur character varying(255),
    date_ajout date,
    date_modification date,
    prestataire character varying(255),
    CONSTRAINT media_signaletique_pkey PRIMARY KEY (id)
);

COMMENT ON TABLE upload.media_signaletique IS 'En base de données : les médias seront converti pour être stockés directement dans la table de media_bdd (donc dans la base PostgreSQL)';

COMMENT ON COLUMN  upload.media_signaletique.id_object IS 'Identifiant des objets auxquels seront rattachés les médias';
COMMENT ON COLUMN  upload.media_signaletique.media IS 'Champ contenant le média converti au format binaire';
COMMENT ON COLUMN  upload.media_signaletique.miniature IS 'Champ contenant la miniature créée et convertie au format binaire';
COMMENT ON COLUMN  upload.media_signaletique.nom_fichier IS 'Champ contenant le nom du fichier duquel est issu le média d origine';
COMMENT ON COLUMN  upload.media_signaletique.type IS 'Champ contenant le type de média (JPG, PDF, DOCX...)';


------------------------------------------------------------------------
-- Table: upload.media_dsi_localisation_site

-- DROP TABLE upload.media_dsi_localisation_site;
CREATE TABLE upload.media_dsi_localisation_site
(
    id serial,
    id_object character varying(15) NOT NULL,
    id_object_num integer,
    media bytea,
    miniature bytea,
    nom_fichier text,
    type text,
    titre character varying(255),
    description text,
    auteur character varying(255),
    date_ajout date,
    date_modification date,
    prestataire character varying(255),
    CONSTRAINT media_dsi_localisation_site_pkey PRIMARY KEY (id)
);

COMMENT ON TABLE upload.media_dsi_localisation_site IS 'En base de données : les médias seront converti pour être stockés directement dans la table de media_bdd (donc dans la base PostgreSQL)';

COMMENT ON COLUMN  upload.media_dsi_localisation_site.id_object IS 'Identifiant des objets auxquels seront rattachés les médias';
COMMENT ON COLUMN  upload.media_dsi_localisation_site.media IS 'Champ contenant le média converti au format binaire';
COMMENT ON COLUMN  upload.media_dsi_localisation_site.miniature IS 'Champ contenant la miniature créée et convertie au format binaire';
COMMENT ON COLUMN  upload.media_dsi_localisation_site.nom_fichier IS 'Champ contenant le nom du fichier duquel est issu le média d origine';
COMMENT ON COLUMN  upload.media_dsi_localisation_site.type IS 'Champ contenant le type de média (JPG, PDF, DOCX...)';


------------------------------------------------------------------------
-- Table: upload.media_dsi_localisation_site

-- DROP TABLE upload.media_dsi_localisation_site;
CREATE TABLE upload.media_dsi_localisation_site
(
    id serial,
    id_object character varying(15) NOT NULL,
    id_object_num integer,
    media bytea,
    miniature bytea,
    nom_fichier text,
    type text,
    titre character varying(255),
    description text,
    auteur character varying(255),
    date_ajout date,
    date_modification date,
    prestataire character varying(255),
    CONSTRAINT media_dsi_localisation_site_pkey PRIMARY KEY (id)
);

COMMENT ON TABLE upload.media_dsi_localisation_site IS 'En base de données : les médias seront converti pour être stockés directement dans la table de media_bdd (donc dans la base PostgreSQL)';

COMMENT ON COLUMN  upload.media_dsi_localisation_site.id_object IS 'Identifiant des objets auxquels seront rattachés les médias';
COMMENT ON COLUMN  upload.media_dsi_localisation_site.media IS 'Champ contenant le média converti au format binaire';
COMMENT ON COLUMN  upload.media_dsi_localisation_site.miniature IS 'Champ contenant la miniature créée et convertie au format binaire';
COMMENT ON COLUMN  upload.media_dsi_localisation_site.nom_fichier IS 'Champ contenant le nom du fichier duquel est issu le média d origine';
COMMENT ON COLUMN  upload.media_dsi_localisation_site.type IS 'Champ contenant le type de média (JPG, PDF, DOCX...)';


------------------------------------------------------------------------
-- Table: upload.media_terri_tepos

-- DROP TABLE upload.media_terri_tepos;
CREATE TABLE upload.media_terri_tepos
(
    id serial,
    id_object character varying(15) NOT NULL,
    id_object_num integer,
    media bytea,
    miniature bytea,
    nom_fichier text,
    type text,
    titre character varying(255),
    description text,
    auteur character varying(255),
    date_ajout date,
    date_modification date,
    prestataire character varying(255),
    CONSTRAINT media_terri_tepos_pkey PRIMARY KEY (id)
);

COMMENT ON TABLE upload.media_terri_tepos IS 'En base de données : les médias seront converti pour être stockés directement dans la table de media_bdd (donc dans la base PostgreSQL)';

COMMENT ON COLUMN  upload.media_terri_tepos.id_object IS 'Identifiant des objets auxquels seront rattachés les médias';
COMMENT ON COLUMN  upload.media_terri_tepos.media IS 'Champ contenant le média converti au format binaire';
COMMENT ON COLUMN  upload.media_terri_tepos.miniature IS 'Champ contenant la miniature créée et convertie au format binaire';
COMMENT ON COLUMN  upload.media_terri_tepos.nom_fichier IS 'Champ contenant le nom du fichier duquel est issu le média d origine';
COMMENT ON COLUMN  upload.media_terri_tepos.type IS 'Champ contenant le type de média (JPG, PDF, DOCX...)';



