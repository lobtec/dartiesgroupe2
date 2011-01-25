PROC SQL ;

Libname darties "C:\SAS\SAS_Darties_Gr2";

insert into darties.Enseigne  set idEnseigne=1, nomEnseigne ='Darty';
insert into darties.Enseigne  set idEnseigne=2, nomEnseigne ='Leroy merlin';
insert into darties.Enseigne  set idEnseigne=3, nomEnseigne ='Boulanger';

insert into darties.Continent  set idContinent=1, nomContinent='Europe';

insert into darties.Devise  set idDevise=1, nomDevise='Euro';
insert into darties.Devise  set idDevise=2, nomDevise='Franc Suisse';

insert into darties.Pays  set idPays=1, idContinent=1, idDevise=1, nomPays='France';
insert into darties.Pays  set idPays=2, idContinent=1, idDevise=1, nomPays='Italie';
insert into darties.Pays  set idPays=3, idContinent=1, idDevise=1, nomPays='Espagne';
insert into darties.Pays  set idPays=4, idContinent=1, idDevise=2, nomPays='Suisse';

insert into darties.RegionCommerciale  set idRegionCommerciale=1, idPays=1, nomRegionCommerciale='Nord Ouest';
insert into darties.RegionCommerciale  set idRegionCommerciale=2, idPays=1, nomRegionCommerciale='Nord Est';
insert into darties.RegionCommerciale  set idRegionCommerciale=3, idPays=1, nomRegionCommerciale='Region parisienne';
insert into darties.RegionCommerciale  set idRegionCommerciale=4, idPays=1, nomRegionCommerciale='Sud Ouest';
insert into darties.RegionCommerciale  set idRegionCommerciale=5, idPays=1, nomRegionCommerciale='Sud Est';

insert into darties.Ville set idVille=1, idRegionCommerciale=5, nomVille='Lyon', populationVille=1888248, tauxOuvrierVille=13.7, tauxCadreVille=5.6, tauxInactifVille=39.6, moins25ansVille=35.6, les2535ans=15.7, plus35ans=48.7;
insert into darties.Ville set idVille=2, idRegionCommerciale=3, nomVille='Paris Nord', populationVille=1006645, tauxOuvrierVille=6.3, tauxCadreVille=13.1, tauxInactifVille=26.7, moins25ansVille=27.1, les2535ans=18.9, plus35ans=54;
insert into darties.Ville set idVille=3, idRegionCommerciale=3, nomVille='Paris Sud', populationVille=883942, tauxOuvrierVille=12.7, tauxCadreVille=3.3, tauxInactifVille=37.9, moins25ansVille=30.4, les2535ans=13.9, plus35ans=55.7;
insert into darties.Ville set idVille=4, idRegionCommerciale=2, nomVille='Strasbourg', populationVille=1624001, tauxOuvrierVille=17.2, tauxCadreVille=4.4, tauxInactifVille=39.9, moins25ansVille=34.6, les2535ans=16.5, plus35ans=48.9;
insert into darties.Ville set idVille=5, idRegionCommerciale=4, nomVille='Bastia', populationVille=249729, tauxOuvrierVille=10.4, tauxCadreVille=3, tauxInactifVille=46, moins25ansVille=29.6, les2535ans=14.9,plus35ans=55.5;
insert into darties.Ville set idVille=6, idRegionCommerciale=1, nomVille='Lille', populationVille=1540569, tauxOuvrierVille=14.1, tauxCadreVille=4.2, tauxInactifVille=45.4, moins25ansVille=39.7, les2535ans=15.7, plus35ans=44.6;

insert into darties.HistoriqueDevise  set moisHistoriqueDevise=7,anneeHistoriqueDevise=2010, idDevise=2, tauxHistoriqueDevise=1.31;
insert into darties.HistoriqueDevise  set moisHistoriqueDevise=8,anneeHistoriqueDevise=2010, idDevise=2, tauxHistoriqueDevise=1.32;
insert into darties.HistoriqueDevise  set moisHistoriqueDevise=9,anneeHistoriqueDevise=2010, idDevise=2, tauxHistoriqueDevise=1.33;

insert into darties.Profil  set idProfil=1, nomProfil='Responsable régional';
insert into darties.Profil  set idProfil=2, nomProfil='Responsable magasin';
insert into darties.Profil  set idProfil=3, nomProfil='Chef de produit';

insert into darties.Magasin  set idMagasin=1,	idVille=1,	idEnseigne=1,	emplacementMagasin='ZAC',	nbCaisseMagasin=15,	horaireOuvertureMagasin='Du lundi au samedi : 8h-12h et 14h-19h', adresseMagasin='Rue de la république 69002 Lyon';
insert into darties.Magasin  set idMagasin=2, idVille=2,	idEnseigne=1,	emplacementMagasin='Centre ville',	nbCaisseMagasin=16,	horaireOuvertureMagasin='Du lundi au samedi : 8h-12h et 14h-19h', adresseMagasin='Avenue des champs Elysée 75000 Paris';

insert into darties.Utilisateur  set idUtilisateur=1, idProfil=1,	idRegionCommerciale=5,	idMagasin=1,	nomUtilisateur='GIRARD',	prenomUtilisateur='Romain',	adresseUtilisateur='contact@romaingirard.com',	telUtilisateur='0601020304',	dateModifUtilisateur=null,	identifiantUtilisateur='borower',	mdpUtilisateur='bou';
insert into darties.Utilisateur  set idUtilisateur=2, idProfil=3,	idRegionCommerciale=5,	idMagasin=1,	nomUtilisateur='GALZY',	prenomUtilisateur='Charlotte',	adresseUtilisateur='charlotte.galzy@gmail.com',	telUtilisateur='0601020304',	dateModifUtilisateur=null,	identifiantUtilisateur='chacha',	mdpUtilisateur='bou';
insert into darties.Utilisateur  set idUtilisateur=3, idProfil=2,	idRegionCommerciale=2,	idMagasin=2,	nomUtilisateur='REQUET',	prenomUtilisateur='Laura',	adresseUtilisateur='laura.requet@gmail.com',	telUtilisateur='0601020304',	dateModifUtilisateur=null,	identifiantUtilisateur='laura',	mdpUtilisateur='bou';

insert into darties.FamilleArticle  set idFamilleArticle=1, nomFamilleArticle='Fours';
insert into darties.FamilleArticle  set idFamilleArticle=2, nomFamilleArticle='Hifi';
insert into darties.FamilleArticle  set idFamilleArticle=3, nomFamilleArticle='Magnetoscope';

insert into darties.Faits set 	moisFaits=10,	anneeFaits=2010,	idMagasin=1,	idFamilleArticle=1,	CAObjectifFaits=0,	CAReelFaits=0,	margeObjectifFaits=0.64,	margeReelFaits=0.9,	ventesObjectifFaits=0,	ventesReelFaits=1;
insert into darties.Faits set 	moisFaits=10,	anneeFaits=2010,	idMagasin=2,	idFamilleArticle=2,	CAObjectifFaits=187,	CAReelFaits=101.5,	margeObjectifFaits=0.82,	margeReelFaits=0.8,	ventesObjectifFaits=35,	ventesReelFaits=19;

insert into darties.Statut  set idStatut=1, nomStatut='Nouvelle';
insert into darties.Statut  set idStatut=2, nomStatut='En cours';
insert into darties.Statut  set idStatut=3, nomStatut='Terminée';
insert into darties.Statut  set idStatut=4, nomStatut='Exportée';
insert into darties.Statut  set idStatut=5, nomStatut='Envoyée';
insert into darties.Statut  set idStatut=6, nomStatut='Rejetée';
;
QUIT
