package verification_excel;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;

public class Verification_Mensuelle extends Verification {
	private String[] resultat = {"0 - Pas de probleme",
								"1 - Chemin ou nom de fichier incorrect",
								"2 - Fichier corrompu, illisible",
								"3 - Problème dans le nombre d’onglets",
								"4 - Problème dans le nom de l’un des onglets",
								"5 - Erreur sur le nombre de colonnes du premier onglet",
								"6 - Erreur sur le titre d’une colonne du premier onglet",
								"7 - Problème sur la donnée Action du premier onglet",
								"8 - Problème de connexion à la base de données",
								"9 -  Erreur sur le nombre de colonnes d’un des onglets concernant les objectifs",
								"10 - Erreur sur le titre d’une colonne d’un des onglets concernant les objectifs",
								"11 - L’année n’est pas correcte sur un des onglets concernant les objectifs",
								"12 - Le mois n’est pas correct sur un des onglets concernant les objectifs",
								"13 - Le nombre de lignes n’est pas celui attendu",
								"14 - Problème d’accès au contenu d’une cellule",
								"15 - Erreur inconnue"};

    private int annee_actuelle;
	private String mois_actuel;
	private HSSFWorkbook classeur_excel;
    private String chemin;
	private String[] onglets = {"Referentiel", "Fours", "Magnetoscopes", "Hifi"};
    private String[] referentiel_titres = {"Ville", "Action", "Pays", "Continent", "Devise", "Enseigne",
											"Publicite", "Region", "Emplacement", "Adresse", "Horaires_Ouverture",
											"Nb_Caisses", "Population", "Taux_Ouvrier", "Taux_Cadre", "Taux_Inactif",
											"Moins_25ans", "Les_25_35ans", "Plus_35ans"};
	private String[] objectifs_titres = {"Ville", "Annee", "Mois", "R_Ventes", "R_CA", "R_MB"};

	Verification_Mensuelle(String d) {
		chemin = d;
    }

	@Override
	public String getResultat(int index) {
		return resultat[index];
	}

	@Override
	public int Ouverture_fichier() {
		Date maDate = new Date();
		SimpleDateFormat formatAnnee = new SimpleDateFormat("yyyy");
		SimpleDateFormat formatMois = new SimpleDateFormat("MM");
		annee_actuelle = Integer.parseInt(formatAnnee.format(maDate).toString()); // Récupération de l'année
		mois_actuel = formatMois.format(maDate).toString(); // Récupération du mois
		String nom_fichier = "Darties_" + annee_actuelle + "_" + mois_actuel;
		nom_fichier = nom_fichier + ".xls";
		chemin = chemin + nom_fichier;

		System.out.println("Chemin : " + chemin);
		
		InputStream fichier;
		try {
			// Ouverture fichier
			fichier = new FileInputStream(chemin);
			try {
				// Initialisation du classeur
				classeur_excel = new HSSFWorkbook(new POIFSFileSystem(fichier));
			}
			catch (IOException ex) {
				return 2; // Le fichier est corrumpu, ...
			}
		}
		catch (FileNotFoundException ex) {
			return 1; // Erreur sur l'ouverture du fichier : problème d'extension, chemin, ...
		}
		return 0;
    }

	@Override
	public int Verification_onglets() {
		for(int i = 0; i < onglets.length; i++) {
			try {
				Sheet feuille_actuelle = classeur_excel.getSheetAt(i); // Récupération de la feuille
				if (feuille_actuelle != null) {
					String nom_feuille_actuelle = feuille_actuelle.getSheetName(); // Récupération du nom de la feuille
					if(nom_feuille_actuelle.compareTo(onglets[i]) != 0) {
						return 4; // Le nom d'un onglet est incorrect
					}
				}
			} catch (Exception e) {
				return 3; // Le nombre d'onglets est incorrect
			}
		}
		return 0;
	}

	@Override
	public int Verification_referentiel() {
        Sheet onglet1 = classeur_excel.getSheetAt(0); // On se place sur le premier onglet
		Row ligne_titre = onglet1.getRow(0); // On se place sur la première ligne (de titre)
		for(int colonne = 0; colonne < referentiel_titres.length; colonne++) {
			try {
				if(referentiel_titres[colonne].compareTo(ligne_titre.getCell(colonne).getStringCellValue()) != 0){
					return 6; // Erreur sur le titre d'une colonne
				}
			} catch (Exception e) {
				return 5; // Erreur sur le nombre de colonnes
			}
		}

        for(int i = 1; i < onglet1.getLastRowNum(); i++) {
			try {
				Row row = onglet1.getRow(i);
				String action = row.getCell(1).getStringCellValue();
				if(action.compareTo("A") != 0 && action.compareTo("M") != 0 && action.compareTo("S") != 0) {
					return 7; // Problème sur la donnée Action
				}
			} catch (Exception e) {
				return 14; // Probleme d'acces au contenu d'une cellule
			}
        }
        return 0;
	}

	@Override
	public int Verification_objectifs() {
		 int colonne = 0;
		 int nombre_villes_BDD = 0;
		 int nombre_villes_a_ajouter = 0;
		 int nombre_villes_a_supprimer = 0;
/*
		 // Connexion à la base de données et récupération du nombre de villes
		 try {
			// A FAIRE : Vérification que le nombre de lignes correspond bien à ce qu'il y a dans la BDD
			Connexion connexion = new Connexion();
			Connection cn = connexion.connection();
			Statement stat = cn.createStatement();
			String requete = "SELECT COUNT(idVille) As NbVilles FROM Ville";
			ResultSet resultat = stat.executeQuery(requete);
			while(resultat.next()) {
				nombre_villes_BDD = Integer.parseInt(resultat.getString(1));
			}
		} catch (SQLException ex) {
			return 8;
		}
*/
		 Sheet feuille1 = classeur_excel.getSheetAt(0);
		 for(Row ligne : feuille1) {
			 if(ligne.getCell(1).getStringCellValue().compareTo("A") == 0) {
				 nombre_villes_a_ajouter++;
			 } else {
				 if(ligne.getCell(1).getStringCellValue().compareTo("S") == 0) {
					nombre_villes_a_supprimer++;
				 }
			 }
		 }

		 // Nombre total de villes + ligne de titre
		 int nombre_total_lignes = 12*(nombre_villes_BDD+nombre_villes_a_ajouter-nombre_villes_a_supprimer) + 1;

		 // Parcours des trois onglets concernant les objectifs
		 for (int index_onglet = 1; index_onglet < 4; index_onglet++) {
			 Sheet onglet_actuel = classeur_excel.getSheetAt(index_onglet); // Placement sur l'onglet souhaité

			 for(Row ligne : onglet_actuel) {
				 if(ligne.getRowNum() ==  0) { // Si on est sur la première ligne, on vérifie les titres
					 for(colonne = 0; colonne < objectifs_titres.length; colonne++) {
						 try {
							 if(objectifs_titres[colonne].compareTo(ligne.getCell(colonne).getStringCellValue()) != 0){
								return 10; // Erreur sur le titre d'une colonne
							 }
						 } catch (Exception e) {
							 return 9; // Erreur sur le nombre de colonnes
						 }
					 }
				 } else { // On n'est pas sur la ligne de titre, on vérifie les données
					 try {
						 // Vérification de l'année
						 if(ligne.getCell(1).getNumericCellValue() != annee_actuelle) {
							 return 11; // L'année n'est pas correcte
						 }

						 // Vérification du mois
						 if(ligne.getCell(2).getNumericCellValue() != Integer.parseInt(mois_actuel)) {
							 return 12; // Le mois n'est pas correct
						 }

						 /*
						 // Vérification que le nombre de lignes est celui attendu
						 if(onglet_actuel.getLastRowNum() == nombre_total_lignes) {
							 return 13; // Le nombre de lignes n'est pas celui attendu
						 }
						*/
					 } catch (Exception e) {
						 return 14; // Problème d'accès à une cellule
					 }
				  }
				  colonne = 0; // Remise à 0 de l'index pointant sur la colonne (pour les prochains onglets)
			 }
		 }
		 return 0;
	}
}
