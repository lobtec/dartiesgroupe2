PROC SQL ;
Libname darties "C:\SAS\SAS_Darties_Gr2";
insert into darties.Continent  set idContinent=1, nomContinent='Europe';

insert into darties.Ville set idVille=1, idRegionCommerciale=5, nomVille='Lyon', populationVille=1888248, tauxOuvrierVille=13.7, tauxCadreVille=5.6, tauxInactifVille=39.6, moins25ansVille=35.6, les2535ans=15.7, plus35ans=48.7;
insert into darties.Ville set idVille=2, idRegionCommerciale=3, nomVille='Paris Nord', populationVille=1006645, tauxOuvrierVille=6.3, tauxCadreVille=13.1, tauxInactifVille=26.7, moins25ansVille=27.1, les2535ans=18.9, plus35ans=54;
insert into darties.Ville set idVille=3, idRegionCommerciale=3, nomVille='Paris Sud', populationVille=883942, tauxOuvrierVille=12.7, tauxCadreVille=3.3, tauxInactifVille=37.9, moins25ansVille=30.4, les2535ans=13.9, plus35ans=55.7;
insert into darties.Ville set idVille=4, idRegionCommerciale=2, nomVille='Strasbourg', populationVille=1624001, tauxOuvrierVille=17.2, tauxCadreVille=4.4, tauxInactifVille=39.9, moins25ansVille=34.6, les2535ans=16.5, plus35ans=48.9;
insert into darties.Ville set idVille=5, idRegionCommerciale=4, nomVille='Bastia', populationVille=249729, tauxOuvrierVille=10.4, tauxCadreVille=3, tauxInactifVille=46, moins25ansVille=29.6, les2535ans=14.9,plus35ans=55.5;
insert into darties.Ville set idVille=6, idRegionCommerciale=1, nomVille='Lille', populationVille=1540569, tauxOuvrierVille=14.1, tauxCadreVille=4.2, tauxInactifVille=45.4, moins25ansVille=39.7, les2535ans=15.7, plus35ans=44.6;

Insert into darties.FamilleArticle values (2,'Hifi');
Insert into darties.FamilleArticle values (3,'Magnetoscope');
Insert into darties.FamilleArticle values (1,'Fours');

insert into darties.Devise  set idDevise=1, nomDevise='Euro';
insert into darties.Devise  set idDevise=2, nomDevise='Franc Suisse';

Insert into darties.Utilisateur values (4,1,2,1,'FORGE','Emric','emric.forge@gmail.com','0601020304',to_timestamp('24/01/11 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'emric','bou');
Insert into darties.Utilisateur values (1,1,5,1,'GIRARD','Romain','contact@romaingirard.com','0601020304',to_timestamp('11/01/11 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'borower','bou');
Insert into darties.Utilisateur values (2,3,5,1,'GALZY','Charlotte','charlotte.galzy@gmail.com','0601020304',to_timestamp('17/01/11 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'chacha','bou');
Insert into darties.Utilisateur values (3,2,2,2,'REQUET','Laura','laura.requet@gmail.com','0601020304',to_timestamp('24/01/11 00:00:00,000000000','DD/MM/RR HH24:MI:SS,FF'),'laura','bou');

Insert into darties.Magasin values (1,1,1,'ZAC',15,'Du lundi au samedi : 8h-12h et 14h-19h','Rue de la république');
Insert into darties.Magasin values (2,2,1,'Centre ville',16,'Du lundi au samedi : 8h-12h et 14h-19h','Avenue des champs Elysée');
Insert into darties.Magasin values (3,3,1,'Centre',17,'Du lundi au samedi : 8h-12h et 14h-19h','Paris Sud');
Insert into darties.Magasin values (4,4,1,'Centre',18,'Du lundi au samedi : 8h-12h et 14h-19h','Strasbourg');
Insert into darties.Magasin values (5,5,1,'Centre',19,'Du lundi au samedi : 8h-12h et 14h-19h','Bastia');
Insert into darties.Magasin values (6,6,1,'Centre',20,'Du lundi au samedi : 8h-12h et 14h-19h','Lille');



insert into darties.Magasin  set idMagasin=1,idVille=1,	idEnseigne=1,	emplacementMagasin='ZAC',	nbCaisseMagasin=15,	horaireOuvertureMagasin='Du lundi au samedi : 8h-12h et 14h-19h', adresseMagasin='Rue de la république';
insert into darties.Magasin  set idMagasin=2,idVille=2,	idEnseigne=1,	emplacementMagasin='Centre ville',	nbCaisseMagasin=16,	horaireOuvertureMagasin='Du lundi au samedi : 8h-12h et 14h-19h', adresseMagasin='Avenue des champs Elysée';
insert into darties.Magasin  set idMagasin=3,idVille=3,	idEnseigne=1,	emplacementMagasin='Centre',	nbCaisseMagasin=17,	horaireOuvertureMagasin='Du lundi au samedi : 8h-12h et 14h-19h', adresseMagasin='Paris Sud';
insert into darties.Magasin  set idMagasin=4,idVille=4,	idEnseigne=1,	emplacementMagasin='Centre',	nbCaisseMagasin=18,	horaireOuvertureMagasin='Du lundi au samedi : 8h-12h et 14h-19h', adresseMagasin='Strasbourg';
insert into darties.Magasin  set idMagasin=5,idVille=5,	idEnseigne=1,	emplacementMagasin='Centre',	nbCaisseMagasin=19,	horaireOuvertureMagasin='Du lundi au samedi : 8h-12h et 14h-19h', adresseMagasin='Bastia';
insert into darties.Magasin  set idMagasin=6,idVille=6,	idEnseigne=1,	emplacementMagasin='Centre',	nbCaisseMagasin=20,	horaireOuvertureMagasin='Du lundi au samedi : 8h-12h et 14h-19h', adresseMagasin='Lille';


insert into darties.Enseigne  set idEnseigne=1, nomEnseigne ='Darty';
insert into darties.Enseigne  set idEnseigne=2, nomEnseigne ='Leroy merlin';
insert into darties.Enseigne  set idEnseigne=3, nomEnseigne ='Boulanger';

insert into darties.RegionCommerciale  set idRegionCommerciale=1, idPays=1, nomRegionCommerciale='Nord Ouest';
insert into darties.RegionCommerciale  set idRegionCommerciale=2, idPays=1, nomRegionCommerciale='Nord Est';
insert into darties.RegionCommerciale  set idRegionCommerciale=3, idPays=1, nomRegionCommerciale='Region parisienne';
insert into darties.RegionCommerciale  set idRegionCommerciale=4, idPays=1, nomRegionCommerciale='Sud Ouest';
insert into darties.RegionCommerciale  set idRegionCommerciale=5, idPays=1, nomRegionCommerciale='Sud Est';

insert into darties.Pays  set idPays=1, idContinent=1, idDevise=1, nomPays='France';
insert into darties.Pays  set idPays=2, idContinent=1, idDevise=1, nomPays='Italie';
insert into darties.Pays  set idPays=3, idContinent=1, idDevise=1, nomPays='Espagne';
insert into darties.Pays  set idPays=4, idContinent=1, idDevise=2, nomPays='Suisse';

Insert into darties.Statut values (1,'Nouvelle');
Insert into darties.Statut values (2,'En cours');
Insert into darties.Statut values (3,'Terminée');
Insert into darties.Statut values (4,'Exportée');
Insert into darties.Statut values (5,'Envoyée');
Insert into darties.Statut values (6,'Rejetée');

insert into darties.HistoriqueDevise  set moisHistoriqueDevise=7,anneeHistoriqueDevise=2010, idDevise=2, tauxHistoriqueDevise=1.31;
insert into darties.HistoriqueDevise  set moisHistoriqueDevise=8,anneeHistoriqueDevise=2010, idDevise=2, tauxHistoriqueDevise=1.32;
insert into darties.HistoriqueDevise  set moisHistoriqueDevise=9,anneeHistoriqueDevise=2010, idDevise=2, tauxHistoriqueDevise=1.33;

Insert into darties.Profil values (1,'Responsable régional');
Insert into darties.Profil values (2,'Responsable magasin');
Insert into darties.Profil values (3,'Chef de produit');

;
QUIT