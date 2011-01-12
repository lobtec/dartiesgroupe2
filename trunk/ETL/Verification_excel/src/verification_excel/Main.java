package verification_excel;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.poi.hssf.extractor.ExcelExtractor;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;

public class Main {

    public static void main(String[] args) {
        String dossier = "./";
        Verification verif = new Verification(dossier);
        //Ouverture du fichier :
		System.out.println("Ouverture fichier : " + verif.Ouverture_fichier());
		// Vérification de l'existence des 4 onglets :
        System.out.println("Verif onglets : " + verif.verification_onglets());
		// Vérification de l'onglet référentiel :
        System.out.println("Verif referentiel : " + verif.Verification_referentiel());
		// Vérification des onglets concernant le matériel :
		System.out.println("Verif materiel : " + verif.Verification_materiels());
    }

}
