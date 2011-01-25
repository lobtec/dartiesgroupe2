package verification_excel;

public abstract class Verification {

	public abstract int Ouverture_fichier();
	public abstract String getResultat(int index);
	public abstract int Verification_onglets();
	public abstract int Verification_referentiel();
	public abstract int Verification_objectifs();
}
