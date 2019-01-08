package selectmethods;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.naming.InitialContext;
import javax.sql.DataSource;

import beans.CompanyUser;
import beans.IndividualUser;

public class CompanyUserSelect implements SelectDatabase{
	Connection connection;
    String strEstat;
	@Override
	public List<CompanyUser> findDatabase(String query) {
		List<CompanyUser> result = new ArrayList<CompanyUser>();
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
                    	CompanyUser l = new CompanyUser();
                    	l.setId_CompanyUser(rs.getInt("id_company"));
                    	l.setIsPremium(rs.getBoolean("ispremium"));
                    	l.setComercialName(rs.getString("comercial_name"));
                    	l.setCompanyName(rs.getString("company_name"));
                    	l.setContactPerson(rs.getString("contact_person"));
                    	l.setSsn(rs.getString("ssn"));
                    	l.setEmail(rs.getString("email"));
                    	l.setCity(rs.getString("city"));
                    	l.setAddress(rs.getString("address"));
                    	l.setPostal_code(rs.getString("postal_code"));
                    	l.setPhone(rs.getInt("phone"));
                    	l.setSlogan(rs.getString("title"));
                    	l.setDescription(rs.getString("description"));
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
