
PROC SQL ;
CREATE TABLE Continent (
idContinent integer,
nomContinent CHAR(80));

create table Devise (
idDevise integer,
nomDevise CHAR(80));

create table Enseigne  (
   idEnseigne integer,
   nomEnseigne CHAR(80));

create table Etape  (
   idEtape integer,
   libelleEtape CHAR(80),
   ordreEtape INTEGER);
 


create table Etude  (
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



create table Faits  (
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

create table FamilleArticle  (
   idFamilleArticle   integer,
   nomFamilleArticle  char(80)
);

create table FamilleArticleEtude  (
   idEtude            integer,
   idFamilleArticle   integer
);

create table HistoriqueDevise  (
   moisHistoriqueDevise INTEGER  ,
   anneeHistoriqueDevise INTEGER  ,
   idDevise           integer,
   tauxHistoriqueDevise numeric 
);


create table Magasin  (
   idMagasin          integer,
   idVille            integer,
   idEnseigne         integer,
   emplacementMagasin char(80),
   nbCaisseMagasin    INTEGER,
   horaireOuvertureMagasin char(80),
   adresseMagasin     char(80)
);

create table Pays  (
   idPays             integer,
   idContinent        integer,
   idDevise           integer,
   nomPays            char(80)
);

create table Profil  (
   idProfil           integer,
   nomProfil          char(80)
);

create table RegionCommerciale  (
   idRegionCommerciale integer,
   idPays             integer,
   nomRegionCommerciale char(80)
);

create table Resultat  (
   idResultat         integer,
   idEtude            integer,
   requeteResultat    char(1024),
   ordreResultat      INTEGER,
   commentaireResultat char(1024)
);

create table Statistique  (
   idStatistique      integer,
   idEtude            integer,
   accesStatistique   char(1024),
   ordreStatistique   INTEGER,
   commentaireStatistique char(1024)
);

create table Statut  (
   idStatut           integer,
   nomStatut          char(80)
);

create table StatutEtape  (
   idEtude            integer,
   idEtape            integer,
   idStatut           integer,
   ordreStatutEtape   INTEGER,
   commentaireStatutEtape char(1024)
);

create table Utilisateur  (
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


 create table Ville  (
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