package selectmethods;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.naming.InitialContext;
import javax.sql.DataSource;

import beans.TrainerUser;

public class TrainerUserSelect implements SelectDatabase{

	Connection connection;
    String strEstat;
	@Override
	public List<TrainerUser> findDatabase(String query) {
		List<TrainerUser> result = new ArrayList<TrainerUser>();
		ResultSet rs;

        try
        {
            InitialContext cxt = new InitialContext(); 
            if ( cxt != null )
            {
               DataSource ds = (DataSource) cxt.lookup( "java:jboss/PostgresXA");
                if ( ds == null ) strEstat = "Error al crear el datasource"; 
                else
                {
                	connection = ds.getConnection();
                    Statement stm = connection.createStatement();
                    rs = stm.executeQuery(query);
                    while(rs.next()) {
                    	TrainerUser l = new TrainerUser();
                    	l.setId_TrainerUser(rs.getInt("id_trainer"));
                    	l.setIsPremium(rs.getBoolean("ispremium"));
                    	l.setFirst_name(rs.getString("first_name"));
                    	l.setMiddle_surname_initial(rs.getString("middle_surname_initial"));
                    	l.setLast_surname(rs.getString("last_surname"));
                    	l.setSsn(rs.getString("ssn"));
                    	l.setEmail(rs.getString("email"));
                    	l.setTeached_hours(rs.getInt("teached_hours"));
                    	l.setCity(rs.getString("city"));
                    	l.setAddress(rs.getString("address"));
                    	l.setPostal_code(rs.getString("postal_code"));
                    	l.setPhone(rs.getInt("phone"));
                    	result.add(l);
                    }
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
