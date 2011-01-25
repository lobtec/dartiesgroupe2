package verification_excel;

import java.sql.Connection;
import java.sql.SQLException;
import oracle.jdbc.pool.OracleDataSource;

public class Connexion {
    private Connection connect;

    public Connexion() throws SQLException {
        // - Paramètres de connexion à la base de données
        OracleDataSource ods = new OracleDataSource();

        // type de pilote oracle
        ods.setDriverType("thin");

        // nom de la machine sur laquelle se trouve la base
        ods.setServerName("pedagowin710.univ-lyon1.fr");

        // numero du port pour se connecter à la base
        ods.setPortNumber(1521);

        // nom de la base
        ods.setDatabaseName("orapeda1");
        // Pour ouvrir une session (représentée par l'objet connect
        connect = ods.getConnection("EPU3AGRP22", "EPU3AGRP22");

        System.out.println("connexion avec Oracle ouverte");
    }

    public void fermer() throws SQLException{
        connect.close();
    }

    public  Connection connection() {
        return connect;
    }
}
