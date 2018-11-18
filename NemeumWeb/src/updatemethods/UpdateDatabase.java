package updatemethods;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import javax.naming.InitialContext;
import javax.sql.DataSource;

public class UpdateDatabase {

	Connection connection;
    String strEstat;

	public void updateDatabase(String query) {
		try
        {
            InitialContext cxt = new InitialContext(); 
            if ( cxt != null )
            {
               DataSource ds = (DataSource) cxt.lookup("java:jboss/PostgresXA");
                if ( ds == null ) strEstat = "Error al crear el datasource"; 
                else
                {
                	connection = ds.getConnection();
                    Statement stm = connection.createStatement();                    
                    stm.executeUpdate(query); 
                    connection.close();
                    stm.close();
               }
            } 
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        finally
        {
            try
            {
                connection.close();
            }
            catch(SQLException e)
            {
                e.printStackTrace();
            }
        }
	}
}
