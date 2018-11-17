package selectmethods;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.naming.InitialContext;
import javax.sql.DataSource;

import beans.IndividualUser;

public class IndividualUserSelect  implements SelectDatabase{

	Connection connection;
    String strEstat;
	@Override
	public List<IndividualUser> findDatabase(String query) {
		List<IndividualUser> result = new ArrayList<IndividualUser>();
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
                    	IndividualUser l = new IndividualUser();
                    	l.setId_IndividualUser(rs.getInt("id_user"));
                    	l.setIsPremium(rs.getBoolean("ispremium"));
                    	l.setFirst_name(rs.getString("first_name"));
                    	l.setMiddle_surname_initial(rs.getString("middle_surname_initial"));
                    	l.setLast_surname(rs.getString("last_surname"));
                    	l.setSsn(rs.getString("ssn"));
                    	l.setEmail(rs.getString("email"));
                    	l.setAddress(rs.getString("address"));
                    	l.setFree_training(rs.getBoolean("free_training"));
                    	l.setFree_facility(rs.getBoolean("free_facility"));
                    	l.setRented_hours(rs.getInt("rented_hours"));
                    	l.setTrained_hours(rs.getInt("trained_hours"));
                    	l.setCity(rs.getString("city"));
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
