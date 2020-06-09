/*GEO V1.0*/
/*Creation du fichier "00_droit" qui permet de suivre l'évolution du code*/
/* geo_99_droit.sql */
/*PostGIS*/

/* Propriétaire : Conseil régional Nouvelle-Aquitaine - http://cartographie.nouvelle-aquitaine.fr/ */
/* Auteur : Tony VINCENT*/

/-- Schéma GEO --/
--
GRANT ALL ON TABLE geo.z_terri_industrie_na TO "pre-sig-usr";
GRANT SELECT ON TABLE geo.z_terri_industrie_na TO "pre-sig-ro";

--
GRANT ALL ON TABLE geo.z_view_terri_industrie_na_epci TO "pre-sig-usr";
GRANT SELECT ON TABLE geo.z_view_terri_industrie_na_epci TO "pre-sig-ro";


/-- Schéma UPLOAD --/
GRANT ALL ON SCHEMA upload TO "pre-sig-usr";
GRANT ALL ON SCHEMA upload TO "pre-sig-ro";

--
GRANT ALL ON TABLE upload.media_bdd TO "pre-sig-usr";
GRANT ALL ON TABLE upload.media_bdd TO "pre-sig-ro";

GRANT ALL ON SEQUENCE upload.media_bdd_id_seq TO "pre-sig-usr";
GRANT ALL ON SEQUENCE upload.media_bdd_id_seq TO "pre-sig-ro";

--
GRANT ALL ON TABLE upload.media_rep TO "pre-sig-usr";
GRANT ALL ON TABLE upload.media_rep TO "pre-sig-ro";

--
GRANT ALL ON TABLE upload.media_signaletique TO "pre-sig-ro";
GRANT ALL ON SEQUENCE upload.media_signaletique_id_seq TO "pre-sig-ro";

--
GRANT ALL ON TABLE upload.media_dsi_localisation_site TO "pre-sig-ro";
GRANT ALL ON SEQUENCE upload.media_dsi_localisation_site_id_seq TO "pre-sig-ro";

-- Tables : upload.media_dsi_localisation_site
GRANT ALL ON TABLE upload.media_dsi_localisation_site TO "pre-sig-ro";
GRANT ALL ON SEQUENCE upload.media_dsi_localisation_site_id_seq TO "pre-sig-ro";


-- Tables : upload.media_terri_tepos
GRANT ALL ON TABLE upload.media_terri_tepos TO "pre-sig-ro";
GRANT ALL ON SEQUENCE upload.media_terri_tepos_id_seq TO "pre-sig-ro";
