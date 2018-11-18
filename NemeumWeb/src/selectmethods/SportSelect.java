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
import beans.Sport;

public class SportSelect implements SelectDatabase{

	Connection connection;
    String strEstat;
	@Override
	public List<Sport> findDatabase(String query) {
		List<Sport> result = new ArrayList<Sport>();
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
                    	Sport l = new Sport();
                    	l.setIdSport(rs.getInt("id_sport"));
                    	l.setName(rs.getString("name_sport"));
                    	l.setMax_players(rs.getInt("max_player"));
                    	l.setIsTeamSport(rs.getBoolean("is_team_sport"));
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
