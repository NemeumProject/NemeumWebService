package selectmethods;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.naming.InitialContext;
import javax.sql.DataSource;

public class BookingSelect {
	Connection connection;
    String strEstat;
	public int findMaxPk(String query) {
		int result = 0;
		ResultSet rs;
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
                    rs = stm.executeQuery(query);
                    while(rs.next()) {
                    	result = rs.getInt("max");
                    }
                    System.out.print(stm.executeQuery(query)); 
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
        return result;
    }
}
