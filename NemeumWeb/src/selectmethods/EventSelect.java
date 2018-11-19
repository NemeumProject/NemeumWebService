package selectmethods;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.naming.InitialContext;
import javax.sql.DataSource;

import beans.Event;

public class EventSelect implements SelectDatabase{

	Connection connection;
    String strEstat;
	@Override
	public List<Event> findDatabase(String query) {
		List<Event> result = new ArrayList<Event>();
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
                    	Event l = new Event();
                    	l.setIdEvent(rs.getInt("id_event"));
                    	l.setIdSport(rs.getInt("id_sport"));
                    	l.setId_IndividualUser(rs.getInt("id_user"));
                    	l.setId_CompanyUser(rs.getInt("id_company"));
                    	l.setId_TrainerUser(rs.getInt("id_trainer"));
                    	l.setIsIndoor(rs.getBoolean("isindoor"));
                    	l.setCapacity(rs.getInt("capacity"));
                    	l.setPrice(rs.getDouble("price"));
                    	l.setCity(rs.getString("city"));
                    	l.setAddress(rs.getString("address"));
                    	l.setPostalCode(rs.getString("postal_code"));
                    	l.setPhone(rs.getInt("phone"));
                    	l.setDateEvent(rs.getDate("date_event"));
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
