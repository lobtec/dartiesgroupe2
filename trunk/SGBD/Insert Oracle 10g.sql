insert into Enseigne  values (S_Enseigne.nextval, 'Darty');
insert into Enseigne  values (S_Enseigne.nextval, 'Leroy merlin');
insert into Enseigne  values (S_Enseigne.nextval, 'Boulanger');

insert into Continent  values (S_Continent.nextval, 'Europe');

insert into Devise  values (S_Devise.nextval, 'Euro');
insert into Devise  values (S_Devise.nextval, 'Franc Suisse');

insert into Pays  values (S_Pays.nextval, 1, 1, 'France');
insert into Pays  values (S_Pays.nextval, 1, 1, 'Italie');
insert into Pays  values (S_Pays.nextval, 1, 1, 'Espagne');
insert into Pays  values (S_Pays.nextval, 1, 2, 'Suisse');

insert into RegionCommerciale  values (S_RegionCommerciale.nextval, 1, 'Nord Ouest');
insert into RegionCommerciale  values (S_RegionCommerciale.nextval, 1, 'Nord Est');
insert into RegionCommerciale  values (S_RegionCommerciale.nextval, 1, 'Region parisienne');
insert into RegionCommerciale  values (S_RegionCommerciale.nextval, 1, 'Sud Ouest');
insert into RegionCommerciale  values (S_RegionCommerciale.nextval, 1, 'Sud Est');

insert into Ville  values (S_Ville.nextval, 5, 'Lyon', 1888248, 13.7, 5.6, 39.6, 35.6, 15.7, 48.7);
insert into Ville  values (S_Ville.nextval, 3, 'Paris Nord', 1006645, 6.3, 13.1, 26.7, 27.1, 18.9, 54);
insert into Ville  values (S_Ville.nextval, 3, 'Paris Sud', 883942, 12.7, 3.3, 37.9, 30.4, 13.9, 55.7);
insert into Ville  values (S_Ville.nextval, 2, 'Strasbourg', 1624001, 17.2, 4.4, 39.9, 34.6, 16.5, 48.9);
insert into Ville  values (S_Ville.nextval, 4, 'Bastia', 249729, 10.4, 3, 46, 29.6, 14.9, 55.5);
insert into Ville  values (S_Ville.nextval, 1, 'Lille', 1540569, 14.1, 4.2, 45.4, 39.7, 15.7, 44.6);

insert into HistoriqueDevise  values (7,2010, 2, 1.31);
insert into HistoriqueDevise  values (8,2010, 2, 1.32);
insert into HistoriqueDevise  values (9,2010, 2, 1.33);

insert into Profil  values (S_Profil.nextval, 'Responsable régional');
insert into Profil  values (S_Profil.nextval, 'Responsable magasin');
insert into Profil  values (S_Profil.nextval, 'Chef de produit');

insert into Magasin  values (
	S_Magasin.nextval, 
	1,
	1,
	'ZAC',
	15,
	'Du lundi au samedi : 8h-12h et 14h-19h',
	'Rue de la république 69002 Lyon'
);

insert into Magasin  values (
	S_Magasin.nextval, 
	2,
	1,
	'Centre ville',
	16,
	'Du lundi au samedi : 8h-12h et 14h-19h',
	'Avenue des champs Elysée 75000 Paris'
);

insert into Utilisateur  values (
	S_Utilisateur.nextval, 
	1,
	5,
	1,
	'GIRARD',
	'Romain',
	'contact@romaingirard.com',
	'0601020304',
	null,
	'borower',
	'bou'
);

insert into Utilisateur  values (
	S_Utilisateur.nextval, 
	3,
	5,
	1,
	'GALZY',
	'Charlotte',
	'charlotte.galzy@gmail.com',
	'0601020304',
	null,
	'chacha',
	'bou'
);

insert into Utilisateur  values (
	S_Utilisateur.nextval, 
	2,
	2,
	2,
	'REQUET',
	'Laura',
	'laura.requet@gmail.com',
	'0601020304',
	null,
	'laura',
	'bou'
);

insert into FamilleArticle  values (S_FamilleArticle.nextval, 'Fours');
insert into FamilleArticle  values (S_FamilleArticle.nextval, 'Hifi');
insert into FamilleArticle  values (S_FamilleArticle.nextval, 'Magnetoscope');

insert into Faits values (
	10,
	2010,
	1,
	1,
	0,
	0,
	0.64,
	0.9,
	0,
	1
);

insert into Faits values (
	10,
	2010,
	2,
	2,
	187,
	101.5,
	0.82,
	0.8,
	35,
	19
);

insert into Statut  values (S_Statut.nextval, 'Nouvelle');
insert into Statut  values (S_Statut.nextval, 'En cours');
insert into Statut  values (S_Statut.nextval, 'Terminée');
insert into Statut  values (S_Statut.nextval, 'Exportée');
insert into Statut  values (S_Statut.nextval, 'Envoyée');
insert into Statut  values (S_Statut.nextval, 'Rejetée');


	

