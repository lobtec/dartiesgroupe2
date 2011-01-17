package verification_excel;

public class Main {

    public static void main(String[] args) {
        String dossier = "./";
		String[] resultat = {	"0 - Pas de probleme",
								"1 - Probleme a l ouverture du fichier (extension, chemin,...)",
								"2 - Le fichier est corrompu", "3 - Probleme dans le nom des onglets",
								"4 - Erreur sur le nombre de colonnes de l onglet 1",
								"5 - Erreur sur le titre d une colonne de l onglet 1",
								"6 - Probleme sur la donnee Action de l onglet 1",
								"7 - Probleme d acces au contenu d une cellule de l onglet 1",
								"8 - Erreur sur le nombre de colonnes d un des onglets concernant le materiel",
								"9 - Erreur sur le titre d une colonne d un des onglets concernant le materiel",
								"10 - L annee n est pas correcte sur un des onglets concernant le materiel",
								"11 - Probleme dans le nombre de mois d un des onglets concernant le materiel",
								"12 - Probleme d acces a une cellule d un des onglets concernant le materiel"};
        try {
			Verification verif = new Verification(dossier);
			//Ouverture du fichier :
			int ouverture_fichier = verif.Ouverture_fichier();
			System.out.println("Ouverture fichier : " + resultat[ouverture_fichier]);
			if(ouverture_fichier == 0) {
				// Vérification de l'existence des 4 onglets :
				int verification_onglets = verif.Verification_onglets();
				System.out.println("Verif onglets : " + resultat[verification_onglets]);
				if(verification_onglets == 0) {
					// Vérification de l'onglet référentiel :
					int verification_referentiel = verif.Verification_referentiel();
					System.out.println("Verif referentiel : " + resultat[verification_referentiel]);
					if (verification_referentiel == 0) {
						// Vérification des onglets concernant le matériel :
						System.out.println("Verif materiel : " + resultat[verif.Verification_materiels()]);
					}
				}
			}
		} catch(Exception e) {

		}
    }

}
