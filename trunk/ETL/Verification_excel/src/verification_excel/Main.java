package verification_excel;

public class Main {

    public static void main(String[] args) {
		Verification verif;
		try {
			String chemin = "./";

			if(args[0].compareTo("A") == 0) { // Alimentation annuelle
				verif = new Verification_Annuelle(chemin);
			} else { // Alimentation mensuelle
				verif = new Verification_Mensuelle(chemin);
			}

			//Ouverture du fichier :
			int ouverture_fichier = verif.Ouverture_fichier();
			System.out.println("Ouverture fichier : " + verif.getResultat(ouverture_fichier));

			if(ouverture_fichier == 0) { // Ouverture du fichier OK

				// Vérification de l'existence des 4 onglets :
				int verification_onglets = verif.Verification_onglets();
				System.out.println("Verif onglets : " + verif.getResultat(verification_onglets));
				
				if(verification_onglets == 0) { // Vérif des onglets OK
					// Vérification de l'onglet référentiel :
					int verification_referentiel = verif.Verification_referentiel();
					System.out.println("Verif referentiel : " + verif.getResultat(verification_referentiel));
					
					if (verification_referentiel == 0) { // Vérif du référentiel OK
						// Vérification des onglets concernant le matériel :
						int verification_objectifs= verif.Verification_objectifs();
						System.out.println("Verif objectifs : " + verif.getResultat(verification_objectifs));
						System.exit(verification_objectifs);
					} else {
						System.exit(verification_referentiel);
					}
				} else {
					System.exit(verification_onglets);
				}
			} else {
				System.exit(ouverture_fichier);
			}
		} catch(Exception e) {
			System.exit(15);
		}
    }
}
