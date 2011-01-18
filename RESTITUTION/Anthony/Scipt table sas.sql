PROC SQL ;

Libname darties "C:\SAS\SAS_Darties_Gr2";
CREATE TABLE darties.Continent (
idContinent integer,
nomContinent CHAR(80));

create table darties.Devise (
idDevise integer,
nomDevise CHAR(80));

create table darties.Enseigne  (
   idEnseigne integer,
   nomEnseigne CHAR(80));

create table darties.Etape  (
   idEtape integer,
   libelleEtape CHAR(80),
   ordreEtape INTEGER);
 


create table darties.Etude  (
   idEtude            integer,
   idUtilisateur      integer,
   idStatut           integer,
   objectifEtude      char(80),
   interpretationEtude char(1024),
   dateAcceptationEtude DATE,
   dateDebutEtude     DATE,
   dateEnvoiEtude     DATE,
   dateMajEtude       DATE,
   dateDemandeEtude   DATE
);



create table darties.Faits  (
   moisFaits          INTEGER  ,
   anneeFaits         INTEGER  ,
   idMagasin          integer,
   idFamilleArticle   integer,
   CAObjectifFaits    numeric,
   CAReelFaits        numeric,
   margeObjectifFaits numeric,
   margeReelFaits     numeric,
   ventesObjectifFaits numeric,
   ventesReelFaits    numeric
);

create table darties.FamilleArticle  (
   idFamilleArticle   integer,
   nomFamilleArticle  char(80)
);

create table darties.FamilleArticleEtude  (
   idEtude            integer,
   idFamilleArticle   integer
);

create table darties.HistoriqueDevise  (
   moisHistoriqueDevise INTEGER  ,
   anneeHistoriqueDevise INTEGER  ,
   idDevise           integer,
   tauxHistoriqueDevise numeric 
);


create table darties.Magasin  (
   idMagasin          integer,
   idVille            integer,
   idEnseigne         integer,
   emplacementMagasin char(80),
   nbCaisseMagasin    INTEGER,
   horaireOuvertureMagasin char(80),
   adresseMagasin     char(80)
);

create table darties.Pays  (
   idPays             integer,
   idContinent        integer,
   idDevise           integer,
   nomPays            char(80)
);

create table darties.Profil  (
   idProfil           integer,
   nomProfil          char(80)
);

create table darties.RegionCommerciale  (
   idRegionCommerciale integer,
   idPays             integer,
   nomRegionCommerciale char(80)
);

create table darties.Resultat  (
   idResultat         integer,
   idEtude            integer,
   requeteResultat    char(1024),
   ordreResultat      INTEGER,
   commentaireResultat char(1024)
);

create table darties.Statistique  (
   idStatistique      integer,
   idEtude            integer,
   accesStatistique   char(1024),
   ordreStatistique   INTEGER,
   commentaireStatistique char(1024)
);

create table darties.Statut  (
   idStatut           integer,
   nomStatut          char(80)
);

create table darties.StatutEtape  (
   idEtude            integer,
   idEtape            integer,
   idStatut           integer,
   ordreStatutEtape   INTEGER,
   commentaireStatutEtape char(1024)
);

create table darties.Utilisateur  (
   idUtilisateur      integer,
   idProfil           integer,
   idRegionCommerciale integer,
   idMagasin          integer,
   nomUtilisateur     char(80),
   prenomUtilisateur  char(80),
   adresseUtilisateur char(100),
   telUtilisateur     char(80),
   dateModifUtilisateur DATE,
   identifiantUtilisateur char(80),
   mdpUtilisateur     char(80)
);


 create table darties.Ville  (
   idVille            integer,
   idRegionCommerciale integer,
   nomVille           char(80),
   populationVille integer,
   tauxOuvrierVille numeric,
   tauxCadreVille numeric,
   tauxInactifVille numeric,
   moins25ansVille numeric,
   les2535ans numeric,
   plus35ans numeric
);

;
QUIT