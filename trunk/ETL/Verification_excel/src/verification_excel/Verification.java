package verification_excel;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;

public class Verification {

    private int annee_actuelle;
	private HSSFWorkbook classeur_excel;
    private String chemin;
    private String[] referentiel_titres = {"Ville","Action","Pays","Continent","Devise","Enseigne",
											"Publicite","Region","Emplacement","Adresse","Horaires_Ouverture",
											"Nb_Caisses","Population","Taux_Ouvrier","Taux_Cadre","Taux_Inactif",
											"Moins_25ans","Les_25_35ans","Plus_35ans"};
	private String[] materiel_titres = {"Ville", "Annee", "Mois", "O_Ventes", "O_CA", "O_MB"};
	
	Verification(String d) {
		chemin = d;
    }
	
	public int Ouverture_fichier() {
		Date maDate = new Date();
		SimpleDateFormat maDateLongue = new SimpleDateFormat("yyyy"); // Récupération de l'année
		annee_actuelle = Integer.parseInt(maDateLongue.format(maDate).toString());
		
		String nom_fichier = "Darties_" + annee_actuelle + ".xls";

		chemin = chemin + nom_fichier;

		InputStream fic;
		try {
			// Ouverture fichier
			fic = new FileInputStream(chemin);
			try {
				// Initialisation du classeur
				classeur_excel = new HSSFWorkbook(new POIFSFileSystem(fic));
			}
			catch (IOException ex) {
			   return 2; // Le fichier est corrumpu,...
			}
		}
		catch (FileNotFoundException ex) {
		 return 1; // Erreur sur l'ouverture du fichier: problème d'extension,chemin,...
		}
      return 0;
    }

    public int verification_onglets()
    {
		Sheet feuille1 = classeur_excel.getSheetAt(0); // Récupération du nom des feuilles
		if (feuille1 != null) {
			String nom_feuille1 = feuille1.getSheetName();
			if(nom_feuille1.compareTo("Referentiel") != 0) {
				return 3; // Le nom de la feuille 1 est incorrect
			}
		}
		Sheet feuille2 = classeur_excel.getSheetAt(1); // Récupération du nom des feuilles
		if (feuille2 != null) {
			String nom_feuille2 = feuille2.getSheetName();
			if(nom_feuille2.compareTo("Fours") != 0) {
				return 4; // Le nom de la feuille 2 est incorrect
			}
		}
		Sheet feuille3 = classeur_excel.getSheetAt(2); // Récupération du nom des feuilles
		if (feuille3 != null) {
			String nom_feuille3 = feuille3.getSheetName();
			if(nom_feuille3.compareTo("Magnetoscopes")!=0) {
				return 5; // Le nom de la feuille 3 est incorrect
			}
		 }
		Sheet feuille4 = classeur_excel.getSheetAt(3); // Récupération du nom des feuilles
		if (feuille4 != null) {
			String nom_feuille4 = feuille4.getSheetName();
			if(nom_feuille4.compareTo("Hifi")!= 0) {
				return 6; // Le nom de la feuille 4 est incorrect
			}
		}
		return 0;
     }
	
     public int Verification_referentiel() {
        int i = 0;
        int retour = 0;
        Sheet feuille1 = classeur_excel.getSheetAt(0);
        Row ligne1 = feuille1.getRow(0); // On se place sur la ligne1
        for (Cell cell : ligne1) { // On parcourt cellule par cellule
			if(referentiel_titres[i].compareTo(cell.getStringCellValue()) !=0 ) {
               retour = 7; // Erreur sur le titre d'une colonne
			}
			i++;
        }

        int j = 1;
        for(j = 1; j < feuille1.getLastRowNum(); j++) {
			Row row = feuille1.getRow(j);
            String action = row.getCell(1).getStringCellValue();
            if(action.compareTo("A") != 0 && action.compareTo("M") != 0 && action.compareTo("S") != 0) {
                retour = 8; // Problème sur la donnée Action
            }
            
        }
        return retour;
     }

     public int Verification_materiels() {
		 int colonne = 0;
		 int retour = 0;

		 // Parcours des trois feuilles concernant les objectifs
		 for (int index_feuille = 1; index_feuille < 4; index_feuille++) {
			 Sheet feuille_actuelle = classeur_excel.getSheetAt(index_feuille); // Placement sur la feuille souhaitée

			 String ville_actuelle = feuille_actuelle.getRow(1).getCell(0).getStringCellValue();
			 String ville_precedente = ville_actuelle;

			 int mois = 1;

			 // Vérification que le nombre de lignes correspond bien à ce qu'il y a dans la BDD

			 
			 for(Row ligne : feuille_actuelle) {
				 if(ligne.getRowNum() ==  0) { // Si on est sur la première ligne, on vérifie les titres
					 for(colonne = 0; colonne < materiel_titres.length; colonne++) {
						 try {
							 if(materiel_titres[colonne].compareTo(ligne.getCell(colonne).getStringCellValue()) != 0){
								return 7; // Erreur sur le titre d'une colonne
							 }
						 } catch (Exception e) {
							 return 8; // Erreur sur le nombre de colonnes
						 }
					 }
				 } else { // On n'est pas sur la ligne de titre, on vérifie les données
					 if(ligne.getCell(1).getNumericCellValue() != annee_actuelle) {
						 return 9; // L'année n'est pas correcte
					 }

					 ville_actuelle = ligne.getCell(0).getStringCellValue(); // Récupération de la ville courante
					 if (ville_actuelle.compareTo(ville_precedente) != 0) { // Nouvelle ville
						 mois = 1; // Le compteur de mois repart à 1
					 }
					 if (ligne.getCell(2).getNumericCellValue() != mois) { // Le mois n'est pas celui attendu
						 return 10; // Problème dans le nombre de mois
					 }
					 
					 mois++;
					 ville_precedente = ligne.getCell(0).getStringCellValue();
				  }
				  colonne = 0; // Remise à 0 de l'index pointant sur la colonne (pour les prochains onglets)
			 }
		 }
		 return retour;
     }
}
