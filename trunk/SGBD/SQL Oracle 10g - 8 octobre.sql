/*==============================================================*/
/* DBMS name:      ORACLE Version 10g                           */
/* Created on:     08/10/2010 17:51:47                          */
/*==============================================================*/


alter table Etude
   drop constraint FK_ETUDE_ETUDESTAT_STATUT;
alter table "Etude"
   drop constraint FK_ETUDE_ETUDESTAT_STATUT;

alter table Etude
   drop constraint FK_ETUDE_ETUDESUTI_UTILISAT;
alter table "Etude"
   drop constraint FK_ETUDE_ETUDESUTI_UTILISAT;

alter table Faits
   drop constraint FK_FAITS_FAITSFAMI_FAMILLEA;
alter table "Faits"
   drop constraint FK_FAITS_FAITSFAMI_FAMILLEA;

alter table Faits
   drop constraint FK_FAITS_FAITSMAGA_MAGASIN;
alter table "Faits"
   drop constraint FK_FAITS_FAITSMAGA_MAGASIN;

alter table FamilleArticleEtude
   drop constraint FK_FAMILLEA_FAMILLEAR_ETUDE;
alter table "FamilleArticleEtude"
   drop constraint FK_FAMILLEA_FAMILLEAR_ETUDE;

alter table FamilleArticleEtude
   drop constraint FK_FAMILLEA_FAMILLEAR_FAMILLEA;
alter table "FamilleArticleEtude"
   drop constraint FK_FAMILLEA_FAMILLEAR_FAMILLEA;

alter table HistoriqueDevise
   drop constraint FK_HISTORIQ_DEVISEHIS_DEVISE;
alter table "HistoriqueDevise"
   drop constraint FK_HISTORIQ_DEVISEHIS_DEVISE;
   
alter table Magasin
   drop constraint FK_MAGASIN_MAGASINEN_ENSEIGNE;
alter table "Magasin"
   drop constraint FK_MAGASIN_MAGASINEN_ENSEIGNE;
   
alter table Magasin
   drop constraint FK_MAGASIN_MAGASINVI_VILLE;
alter table "Magasin"
   drop constraint FK_MAGASIN_MAGASINVI_VILLE;
   
alter table Pays
   drop constraint FK_PAYS_PAYSCONTI_CONTINEN;
alter table "Pays"
   drop constraint FK_PAYS_PAYSCONTI_CONTINEN;
   
alter table Pays
   drop constraint FK_PAYS_PAYSDEVIS_DEVISE;
alter table "Pays"
   drop constraint FK_PAYS_PAYSDEVIS_DEVISE;
   
alter table RegionCommerciale
   drop constraint FK_REGIONCO_REGIONPAY_PAYS;
alter table "RegionCommerciale"
   drop constraint FK_REGIONCO_REGIONPAY_PAYS;
   
alter table Resultat
   drop constraint FK_RESULTAT_RESULTATS_ETUDE;
alter table "Resultat"
   drop constraint FK_RESULTAT_RESULTATS_ETUDE;
   
alter table Statistique
   drop constraint FK_STATISTI_STATSETUD_ETUDE;
alter table "Statistique"
   drop constraint FK_STATISTI_STATSETUD_ETUDE;

alter table StatutEtape
   drop constraint FK_STATUTET_STATUTETA_ETUDE;
alter table "StatutEtape"
   drop constraint FK_STATUTET_STATUTETA_ETUDE;
   
alter table StatutEtape
   drop constraint FK_STATUTET_STATUTETA_ETAPE;
alter table "StatutEtape"
   drop constraint FK_STATUTET_STATUTETA_ETAPE;
   
alter table StatutEtape
   drop constraint FK_STATUTET_STATUTETA_STATUT;
alter table "StatutEtape"
   drop constraint FK_STATUTET_STATUTETA_STATUT;
   
alter table Utilisateur
   drop constraint FK_UTILISAT_UTIREGION_REGIONCO;
alter table "Utilisateur"
   drop constraint FK_UTILISAT_UTIREGION_REGIONCO;
   
alter table Utilisateur
   drop constraint FK_UTILISAT_UTILISATE_MAGASIN;
alter table "Utilisateur"
   drop constraint FK_UTILISAT_UTILISATE_MAGASIN;
   
alter table Utilisateur
   drop constraint FK_UTILISAT_UTILISATE_PROFIL;
alter table "Utilisateur"
   drop constraint FK_UTILISAT_UTILISATE_PROFIL;
   
alter table Ville
   drop constraint FK_VILLE_VILLEREGI_REGIONCO;
alter table "Ville"
   drop constraint FK_VILLE_VILLEREGI_REGIONCO;

drop table "Continent" cascade constraints;
drop table Continent cascade constraints;

drop table "Devise" cascade constraints;
drop table Devise cascade constraints;

drop table "Enseigne" cascade constraints;
drop table Enseigne cascade constraints;

drop table "Etape" cascade constraints;
drop table Etape cascade constraints;

drop index ETUDESTATUT_FK;

drop index ETUDESUTILISATEUR_FK;

drop table "Etude" cascade constraints;
drop table Etude cascade constraints;

drop index FAITSFAMILLEARTICLE_FK;

drop index FAITSMAGASIN_FK;

drop table "Faits" cascade constraints;
drop table Faits cascade constraints;

drop table "FamilleArticle" cascade constraints;
drop table FamilleArticle cascade constraints;

drop index FAMILLEARTICLEETUDE2_FK;

drop index FAMILLEARTICLEETUDE_FK;

drop table "FamilleArticleEtude" cascade constraints;
drop table FamilleArticleEtude cascade constraints;

drop index DEVISEHISTORIQUEDEVISE_FK;

drop table "HistoriqueDevise" cascade constraints;
drop table HistoriqueDevise cascade constraints;

drop index MAGASINENSEIGNE_FK;

drop index MAGASINVILLE_FK;

drop table "Magasin" cascade constraints;
drop table Magasin cascade constraints;

drop index PAYSDEVISE_FK;

drop index PAYSCONTINENT_FK;

drop table "Pays" cascade constraints;
drop table Pays cascade constraints;

drop table "Profil" cascade constraints;
drop table Profil cascade constraints;

drop index REGIONPAYS_FK;

drop table "RegionCommerciale" cascade constraints;
drop table RegionCommerciale cascade constraints;

drop index RESULTATSETUDES_FK;

drop table "Resultat" cascade constraints;
drop table Resultat cascade constraints;

drop index STATSETUDES_FK;

drop table "Statistique" cascade constraints;
drop table Statistique cascade constraints;

drop table "Statut" cascade constraints;
drop table Statut cascade constraints;

drop index STATUTETAPE3_FK;

drop index STATUTETAPE2_FK;

drop index STATUTETAPE_FK;

drop table "StatutEtape" cascade constraints;
drop table StatutEtape cascade constraints;

drop index UTILISATEURMAGASIN_FK;

drop index UTILISATEURPROFIL_FK;

drop index UTIREGIONCOMMERCIALE_FK;

drop table "Utilisateur" cascade constraints;
drop table Utilisateur cascade constraints;

drop index VILLEREGION_FK;

drop table "Ville" cascade constraints;
drop table Ville cascade constraints;

drop sequence "S_Continent";

drop sequence "S_Devise";

drop sequence "S_Enseigne";

drop sequence "S_Etape";

drop sequence "S_Etude";

drop sequence "S_FamilleArticle";

drop sequence "S_Magasin";

drop sequence "S_Pays";

drop sequence "S_Profil";

drop sequence "S_RegionCommerciale";

drop sequence "S_Resultat";

drop sequence "S_Statistique";

drop sequence "S_Statut";

drop sequence "S_Utilisateur";

drop sequence "S_Ville";

drop sequence S_Continent;

drop sequence S_Devise;

drop sequence S_Enseigne;

drop sequence S_Etape;

drop sequence S_Etude;

drop sequence S_FamilleArticle;

drop sequence S_Magasin;

drop sequence S_Pays;

drop sequence S_Profil;

drop sequence S_RegionCommerciale;

drop sequence S_Resultat;

drop sequence S_Statistique;

drop sequence S_Statut;

drop sequence S_Utilisateur;

drop sequence S_Ville;

create sequence S_Continent MINVALUE 0;

create sequence S_Devise MINVALUE 0;

create sequence S_Enseigne MINVALUE 0;

create sequence S_Etape MINVALUE 0;

create sequence S_Etude MINVALUE 0;

create sequence S_FamilleArticle MINVALUE 0;

create sequence S_Magasin MINVALUE 0;

create sequence S_Pays MINVALUE 0;

create sequence S_Profil MINVALUE 0;

create sequence S_RegionCommerciale MINVALUE 0;

create sequence S_Resultat MINVALUE 0;

create sequence S_Statistique MINVALUE 0;

create sequence S_Statut MINVALUE 0;

create sequence S_Utilisateur MINVALUE 0;

create sequence S_Ville MINVALUE 0;

/*==============================================================*/
/* Table: Continent                                           */
/*==============================================================*/
create table Continent  (
   idContinent        NUMBER(6)                       not null,
   nomContinent       VARCHAR2(80),
   constraint PK_CONTINENT primary key (idContinent)
);

/*==============================================================*/
/* Table: Devise                                              */
/*==============================================================*/
create table Devise  (
   idDevise           NUMBER(6)                       not null,
   nomDevise          VARCHAR2(80),
   constraint PK_DEVISE primary key (idDevise)
);

/*==============================================================*/
/* Table: Enseigne                                            */
/*==============================================================*/
create table Enseigne  (
   idEnseigne         NUMBER(6)                       not null,
   nomEnseigne        VARCHAR2(80),
   constraint PK_ENSEIGNE primary key (idEnseigne)
);

/*==============================================================*/
/* Table: Etape                                               */
/*==============================================================*/
create table Etape  (
   idEtape            NUMBER(6)                       not null,
   libelleEtape       VARCHAR2(80),
   ordreEtape         INTEGER,
   constraint PK_ETAPE primary key (idEtape)
);

/*==============================================================*/
/* Table: Etude                                               */
/*==============================================================*/
create table Etude  (
   idEtude            NUMBER(6)                       not null,
   idUtilisateur      NUMBER(6)                       not null,
   idStatut           NUMBER(6)                       not null,
   objectifEtude      VARCHAR2(80),
   interpretationEtude VARCHAR2(1024),
   dateAcceptationEtude DATE,
   dateDebutEtude     DATE,
   dateEnvoiEtude     DATE,
   dateMajEtude       DATE,
   dateDemandeEtude   DATE,
   constraint PK_ETUDE primary key (idEtude)
);

/*==============================================================*/
/* Index: ETUDESUTILISATEUR_FK                                  */
/*==============================================================*/
create index ETUDESUTILISATEUR_FK on Etude (
   idUtilisateur ASC
);

/*==============================================================*/
/* Index: ETUDESTATUT_FK                                        */
/*==============================================================*/
create index ETUDESTATUT_FK on Etude (
   idStatut ASC
);

/*==============================================================*/
/* Table: Faits                                               */
/*==============================================================*/
create table Faits  (
   moisFaits          INTEGER                         not null,
   anneeFaits         INTEGER                         not null,
   idMagasin          NUMBER(6)                       not null,
   idFamilleArticle   NUMBER(6)                       not null,
   CAObjectifFaits    FLOAT,
   CAReelFaits        FLOAT,
   margeObjectifFaits FLOAT,
   margeReelFaits     FLOAT,
   ventesObjectifFaits NUMBER,
   ventesReelFaits    NUMBER,
   constraint PK_FAITS primary key (anneeFaits, moisFaits, idMagasin, idFamilleArticle)
);

/*==============================================================*/
/* Index: FAITSMAGASIN_FK                                       */
/*==============================================================*/
create index FAITSMAGASIN_FK on Faits (
   idMagasin ASC
);

/*==============================================================*/
/* Index: FAITSFAMILLEARTICLE_FK                                */
/*==============================================================*/
create index FAITSFAMILLEARTICLE_FK on Faits (
   idFamilleArticle ASC
);

/*==============================================================*/
/* Table: FamilleArticle                                      */
/*==============================================================*/
create table FamilleArticle  (
   idFamilleArticle   NUMBER(6)                       not null,
   nomFamilleArticle  VARCHAR2(80),
   constraint PK_FAMILLEARTICLE primary key (idFamilleArticle)
);

/*==============================================================*/
/* Table: FamilleArticleEtude                                 */
/*==============================================================*/
create table FamilleArticleEtude  (
   idEtude            NUMBER(6)                       not null,
   idFamilleArticle   NUMBER(6)                       not null,
   constraint PK_FAMILLEARTICLEETUDE primary key (idEtude, idFamilleArticle)
);

/*==============================================================*/
/* Index: FAMILLEARTICLEETUDE_FK                                */
/*==============================================================*/
create index FAMILLEARTICLEETUDE_FK on FamilleArticleEtude (
   idEtude ASC
);

/*==============================================================*/
/* Index: FAMILLEARTICLEETUDE2_FK                               */
/*==============================================================*/
create index FAMILLEARTICLEETUDE2_FK on FamilleArticleEtude (
   idFamilleArticle ASC
);

/*==============================================================*/
/* Table: HistoriqueDevise                                    */
/*==============================================================*/
create table HistoriqueDevise  (
   moisHistoriqueDevise INTEGER                         not null,
   anneeHistoriqueDevise INTEGER                         not null,
   idDevise           NUMBER(6)                       not null,
   tauxHistoriqueDevise FLOAT,
   constraint PK_HISTORIQUEDEVISE primary key (anneeHistoriqueDevise, moisHistoriqueDevise)
);

/*==============================================================*/
/* Index: DEVISEHISTORIQUEDEVISE_FK                             */
/*==============================================================*/
create index DEVISEHISTORIQUEDEVISE_FK on HistoriqueDevise (
   idDevise ASC
);

/*==============================================================*/
/* Table: Magasin                                             */
/*==============================================================*/
create table Magasin  (
   idMagasin          NUMBER(6)                       not null,
   idVille            NUMBER(6)                       not null,
   idEnseigne         NUMBER(6)                       not null,
   emplacementMagasin VARCHAR2(80),
   nbCaisseMagasin    INTEGER,
   horaireOuvertureMagasin CLOB,
   adresseMagasin     CLOB,
   constraint PK_MAGASIN primary key (idMagasin)
);

/*==============================================================*/
/* Index: MAGASINVILLE_FK                                       */
/*==============================================================*/
create index MAGASINVILLE_FK on Magasin (
   idVille ASC
);

/*==============================================================*/
/* Index: MAGASINENSEIGNE_FK                                    */
/*==============================================================*/
create index MAGASINENSEIGNE_FK on Magasin (
   idEnseigne ASC
);

/*==============================================================*/
/* Table: Pays                                                */
/*==============================================================*/
create table Pays  (
   idPays             NUMBER(6)                       not null,
   idContinent        NUMBER(6)                       not null,
   idDevise           NUMBER(6)                       not null,
   nomPays            VARCHAR2(80),
   constraint PK_PAYS primary key (idPays)
);

/*==============================================================*/
/* Index: PAYSCONTINENT_FK                                      */
/*==============================================================*/
create index PAYSCONTINENT_FK on Pays (
   idContinent ASC
);

/*==============================================================*/
/* Index: PAYSDEVISE_FK                                         */
/*==============================================================*/
create index PAYSDEVISE_FK on Pays (
   idDevise ASC
);

/*==============================================================*/
/* Table: Profil                                              */
/*==============================================================*/
create table Profil  (
   idProfil           NUMBER(6)                       not null,
   nomProfil          VARCHAR2(80),
   constraint PK_PROFIL primary key (idProfil)
);

/*==============================================================*/
/* Table: RegionCommerciale                                   */
/*==============================================================*/
create table RegionCommerciale  (
   idRegionCommerciale NUMBER(6)                       not null,
   idPays             NUMBER(6)                       not null,
   nomRegionCommerciale VARCHAR2(80),
   constraint PK_REGIONCOMMERCIALE primary key (idRegionCommerciale)
);

/*==============================================================*/
/* Index: REGIONPAYS_FK                                         */
/*==============================================================*/
create index REGIONPAYS_FK on RegionCommerciale (
   idPays ASC
);

/*==============================================================*/
/* Table: Resultat                                            */
/*==============================================================*/
create table Resultat  (
   idResultat         NUMBER(6)                       not null,
   idEtude            NUMBER(6)                       not null,
   requeteResultat    VARCHAR2(1024),
   ordreResultat      INTEGER,
   commentaireResultat VARCHAR2(1024),
   constraint PK_RESULTAT primary key (idResultat)
);

/*==============================================================*/
/* Index: RESULTATSETUDES_FK                                    */
/*==============================================================*/
create index RESULTATSETUDES_FK on Resultat (
   idEtude ASC
);

/*==============================================================*/
/* Table: Statistique                                         */
/*==============================================================*/
create table Statistique  (
   idStatistique      NUMBER(6)                       not null,
   idEtude            NUMBER(6)                       not null,
   accesStatistique   VARCHAR2(1024),
   ordreStatistique   INTEGER,
   commentaireStatistique VARCHAR2(1024),
   constraint PK_STATISTIQUE primary key (idStatistique)
);

/*==============================================================*/
/* Index: STATSETUDES_FK                                        */
/*==============================================================*/
create index STATSETUDES_FK on Statistique (
   idEtude ASC
);

/*==============================================================*/
/* Table: Statut                                              */
/*==============================================================*/
create table Statut  (
   idStatut           NUMBER(6)                       not null,
   nomStatut          VARCHAR2(80),
   constraint PK_STATUT primary key (idStatut)
);

/*==============================================================*/
/* Table: StatutEtape                                         */
/*==============================================================*/
create table StatutEtape  (
   idEtude            NUMBER(6)                       not null,
   idEtape            NUMBER(6)                       not null,
   idStatut           NUMBER(6)                       not null,
   ordreStatutEtape   INTEGER,
   commentaireStatutEtape VARCHAR2(1024),
   constraint PK_STATUTETAPE primary key (idEtude, idEtape, idStatut)
);

/*==============================================================*/
/* Index: STATUTETAPE_FK                                        */
/*==============================================================*/
create index STATUTETAPE_FK on StatutEtape (
   idEtude ASC
);

/*==============================================================*/
/* Index: STATUTETAPE2_FK                                       */
/*==============================================================*/
create index STATUTETAPE2_FK on StatutEtape (
   idEtape ASC
);

/*==============================================================*/
/* Index: STATUTETAPE3_FK                                       */
/*==============================================================*/
create index STATUTETAPE3_FK on StatutEtape (
   idStatut ASC
);

/*==============================================================*/
/* Table: Utilisateur                                         */
/*==============================================================*/
create table Utilisateur  (
   idUtilisateur      NUMBER(6)                       not null,
   idProfil           NUMBER(6)                       not null,
   idRegionCommerciale NUMBER(6)                       not null,
   idMagasin          NUMBER(6)                       not null,
   nomUtilisateur     VARCHAR2(80),
   prenomUtilisateur  VARCHAR2(80),
   adresseUtilisateur VARCHAR2(100),
   telUtilisateur     VARCHAR2(80),
   dateModifUtilisateur DATE,
   identifiantUtilisateur VARCHAR2(80),
   mdpUtilisateur     VARCHAR2(80),
   constraint PK_UTILISATEUR primary key (idUtilisateur)
);

/*==============================================================*/
/* Index: UTIREGIONCOMMERCIALE_FK                               */
/*==============================================================*/
create index UTIREGIONCOMMERCIALE_FK on Utilisateur (
   idRegionCommerciale ASC
);

/*==============================================================*/
/* Index: UTILISATEURPROFIL_FK                                  */
/*==============================================================*/
create index UTILISATEURPROFIL_FK on Utilisateur (
   idProfil ASC
);

/*==============================================================*/
/* Index: UTILISATEURMAGASIN_FK                                 */
/*==============================================================*/
create index UTILISATEURMAGASIN_FK on Utilisateur (
   idMagasin ASC
);

/*==============================================================*/
/* Table: Ville                                               */
/*==============================================================*/
create table Ville  (
   idVille            NUMBER(6)                       not null,
   idRegionCommerciale NUMBER(6)                       not null,
   nomVille           VARCHAR2(80),
   populationVille NUMBER(10),
   tauxOuvrierVille FLOAT,
   tauxCadreVille FLOAT,
   tauxInactifVille FLOAT,
   moins25ansVille FLOAT,
   les2535ans FLOAT,
   plus35ans FLOAT,
   constraint PK_VILLE primary key (idVille)
);

/*==============================================================*/
/* Index: VILLEREGION_FK                                        */
/*==============================================================*/
create index VILLEREGION_FK on Ville (
   idRegionCommerciale ASC
);

alter table Etude
   add constraint FK_ETUDE_ETUDESTAT_STATUT foreign key (idStatut)
      references Statut (idStatut);

alter table Etude
   add constraint FK_ETUDE_ETUDESUTI_UTILISAT foreign key (idUtilisateur)
      references Utilisateur (idUtilisateur);

alter table Faits
   add constraint FK_FAITS_FAITSFAMI_FAMILLEA foreign key (idFamilleArticle)
      references FamilleArticle (idFamilleArticle);

alter table Faits
   add constraint FK_FAITS_FAITSMAGA_MAGASIN foreign key (idMagasin)
      references Magasin (idMagasin);

alter table FamilleArticleEtude
   add constraint FK_FAMILLEA_FAMILLEAR_ETUDE foreign key (idEtude)
      references Etude (idEtude);

alter table FamilleArticleEtude
   add constraint FK_FAMILLEA_FAMILLEAR_FAMILLEA foreign key (idFamilleArticle)
      references FamilleArticle (idFamilleArticle);

alter table HistoriqueDevise
   add constraint FK_HISTORIQ_DEVISEHIS_DEVISE foreign key (idDevise)
      references Devise (idDevise);

alter table Magasin
   add constraint FK_MAGASIN_MAGASINEN_ENSEIGNE foreign key (idEnseigne)
      references Enseigne (idEnseigne);

alter table Magasin
   add constraint FK_MAGASIN_MAGASINVI_VILLE foreign key (idVille)
      references Ville (idVille);

alter table Pays
   add constraint FK_PAYS_PAYSCONTI_CONTINEN foreign key (idContinent)
      references Continent (idContinent);

alter table Pays
   add constraint FK_PAYS_PAYSDEVIS_DEVISE foreign key (idDevise)
      references Devise (idDevise);

alter table RegionCommerciale
   add constraint FK_REGIONCO_REGIONPAY_PAYS foreign key (idPays)
      references Pays (idPays);

alter table Resultat
   add constraint FK_RESULTAT_RESULTATS_ETUDE foreign key (idEtude)
      references Etude (idEtude);

alter table Statistique
   add constraint FK_STATISTI_STATSETUD_ETUDE foreign key (idEtude)
      references Etude (idEtude);

alter table StatutEtape
   add constraint FK_STATUTET_STATUTETA_ETUDE foreign key (idEtude)
      references Etude (idEtude);

alter table StatutEtape
   add constraint FK_STATUTET_STATUTETA_ETAPE foreign key (idEtape)
      references Etape (idEtape);

alter table StatutEtape
   add constraint FK_STATUTET_STATUTETA_STATUT foreign key (idStatut)
      references Statut (idStatut);

alter table Utilisateur
   add constraint FK_UTILISAT_UTIREGION_REGIONCO foreign key (idRegionCommerciale)
      references RegionCommerciale (idRegionCommerciale);

alter table Utilisateur
   add constraint FK_UTILISAT_UTILISATE_MAGASIN foreign key (idMagasin)
      references Magasin (idMagasin);

alter table Utilisateur
   add constraint FK_UTILISAT_UTILISATE_PROFIL foreign key (idProfil)
      references Profil (idProfil);

alter table Ville
   add constraint FK_VILLE_VILLEREGI_REGIONCO foreign key (idRegionCommerciale)
      references RegionCommerciale (idRegionCommerciale);

