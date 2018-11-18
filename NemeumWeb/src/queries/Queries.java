package queries;

import java.util.List;

import javax.jws.WebMethod;
import javax.jws.WebService;

import beans.CompanyUser;
import beans.IndividualUser;
import beans.TrainerUser;
import selectmethods.CompanyUserSelect;
import selectmethods.IndividualUserSelect;
import selectmethods.TrainerUserSelect;
import updatemethods.UpdateDatabase;

import java.sql.Connection;

@WebService()
public class Queries {
	Connection connection;
	String strEstat;
	IndividualUserSelect ius;
	CompanyUserSelect cus;
	TrainerUserSelect tus;
	UpdateDatabase ud;
	
	@WebMethod
	public List<IndividualUser> getIndividualUsers(){
		List<IndividualUser> individuaList;
		ius = new IndividualUserSelect();
		String query = "SELECT * FROM \"nemeum\".individualuser ORDER BY id_user;";
		individuaList = ius.findDatabase(query);
		return individuaList;
	}
	@WebMethod
	public List<CompanyUser> getCompanyUsers(){
		List<CompanyUser> companyList;
		cus = new CompanyUserSelect();
		String query = "SELECT * FROM \"nemeum\".companyuser ORDER BY id_company;";
		companyList = cus.findDatabase(query);
		return companyList;
	}
	@WebMethod
	public List<TrainerUser> getTrainerUsers(){
		List<TrainerUser> trainerList;
		tus = new TrainerUserSelect();
		String query = "SELECT * FROM \"nemeum\".traineruser ORDER BY id_trainer;";
		trainerList = tus.findDatabase(query);
		return trainerList;
	}
	@WebMethod
	public List<IndividualUser> getIndividualUser(Integer id){
		List<IndividualUser> individuaList;
		ius = new IndividualUserSelect();
		String query = "SELECT * FROM \"nemeum\".individualuser WHERE id_user = '"+ id + "' ORDER BY id_user;";
		individuaList = ius.findDatabase(query);
		return individuaList;
	}
	@WebMethod
	public List<CompanyUser> getCompanyUser(Integer id){
		List<CompanyUser> companyList;
		cus = new CompanyUserSelect();
		String query = "SELECT * FROM \"nemeum\".companyuser WHERE id_company = '"+ id + "' ORDER BY id_company;";
		companyList = cus.findDatabase(query);
		return companyList;
	}
	@WebMethod
	public List<TrainerUser> getTrainerUser(Integer id){
		List<TrainerUser> trainerList;
		tus = new TrainerUserSelect();
		String query = "SELECT * FROM \"nemeum\".traineruser WHERE id_trainer = '"+ id + "' ORDER BY id_trainer;";
		trainerList = tus.findDatabase(query);
		return trainerList;
	}
	
	@WebMethod()
	public void deleteIndividualUser(int id) {
		ud = new UpdateDatabase();
		String query = "DELETE FROM \"nemeum\".individualuser "
				+ "WHERE id_user = '"+ id +"';";
		ud.updateDatabase(query);	
	}
	
	@WebMethod()
	public void deleteCompanyUser(int id) {
		ud = new UpdateDatabase();
		String query = "DELETE FROM \"nemeum\".companyuser "
				+ "WHERE id_company = '"+ id +"';";
		ud.updateDatabase(query);	
	}
	
	@WebMethod()
	public void deleteTrainerUser(int id) {
		ud = new UpdateDatabase();
		String query = "DELETE FROM \"nemeum\".traineruser "
				+ "WHERE id_trainer = '"+ id +"';";
		ud.updateDatabase(query);	
	}
	
	@WebMethod()
    public void createIndividualUser(IndividualUser user) {
    	int idUser = getLastIdUser();
    	ud = new UpdateDatabase();
		String query = "INSERT INTO \"nemeum\".individualuser (id_user, ispremium, first_name, middle_surname_initial, last_surname, ssn, email, free_training, free_facility, rented_hours, trained_hours, city, address, postal_code, phone)"
		          + "VALUES('" + idUser + "', '" + user.getIsPremium() + "', '" + user.getFirst_name() + "', '" 
		          + user.getMiddle_surname_initial() + "', '" + user.getLast_surname() + "', '" 
		          + user.getSsn()  + "', '" + user.getEmail() + "', '" 
		          + user.getFree_training() + "', '" + user.getFree_facility() + "', '" + user.getRented_hours() + "', '" + user.getTrained_hours() + "', '" + user.getCity() + "', '" + user.getAddress() + "', '" + user.getPostal_code() + "', '" + user.getPhone() + "');" + "\n"; 
		ud.updateDatabase(query);	
    }
	
	protected int getLastIdUser() {
		int newPk;
		ius = new IndividualUserSelect();
		String query = "SELECT MAX(id_user) FROM \"nemeum\".individualuser;";
		newPk = ius.findMaxPk(query);
		return newPk + 1;
	}
	
	@WebMethod()
    public void createCompanyUser(CompanyUser user) {
    	int idUser = getLastIdCompanyUser();
    	ud = new UpdateDatabase();
		String query = "INSERT INTO \"nemeum\".companyuser (id_company, ispremium, comercial_name, company_name, contact_person, ssn, email, city, address, postal_code, phone)"
		          + "VALUES('" + idUser + "', '" + user.getIsPremium() + "', '" + user.getComercialName() + "', '" 
		          + user.getCompanyName() + "', '" + user.getContactPerson() + "', '" 
		          + user.getSsn()  + "', '" + user.getEmail() + "', '" 
		          + user.getCity() + "', '" + user.getAddress() + "', '" + user.getPostal_code() + "', '" + user.getPhone() + "');" + "\n"; 
		ud.updateDatabase(query);	
    }
	
	protected int getLastIdCompanyUser() {
		int newPk;
		cus = new CompanyUserSelect();
		String query = "SELECT MAX(id_company) FROM \"nemeum\".companyuser;";
		newPk = cus.findMaxPk(query);
		return newPk + 1;
	}
	
	@WebMethod()
    public void createTrainerUser(TrainerUser user) {
    	int idUser = getLastIdTrainerUser();
    	ud = new UpdateDatabase();
		String query = "INSERT INTO \"nemeum\".traineruser (id_trainer, ispremium, first_name, middle_surname_initial, last_surname, ssn, email, teached_hours, city, address, postal_code, phone)"
		          + "VALUES('" + idUser + "', '" + user.getIsPremium() + "', '" + user.getFirst_name() + "', '" 
		          + user.getMiddle_surname_initial() + "', '" + user.getLast_surname() + "', '" 
		          + user.getSsn()  + "', '" + user.getEmail() + "', '" 
		          + user.getTeached_hours() + "', '" + user.getCity() + "', '" + user.getAddress() + "', '" + user.getPostal_code() + "', '" + user.getPhone() + "');" + "\n"; 
		ud.updateDatabase(query);	
    }
	
	protected int getLastIdTrainerUser() {
		int newPk;
		tus = new TrainerUserSelect();
		String query = "SELECT MAX(id_trainer) FROM \"nemeum\".traineruser;";
		newPk = tus.findMaxPk(query);
		return newPk + 1;
	}
	
	@WebMethod()
	public void updateIndividualUser(int idUser, IndividualUser user) {
		ud = new UpdateDatabase();
		String query = "UPDATE \"nemeum\".individualuser SET ispremium= "+ user.getIsPremium() +", "
				+ "first_name='"+ user.getFirst_name() +"', middle_surname_initial='"+ user.getMiddle_surname_initial() +"', last_surname='"+ user.getLast_surname() +"', ssn= '"+ user.getSsn() +"', "
						+ "email='"+ user.getEmail() +"', free_training='"+ user.getFree_training() +"', free_facility='" + user.getFree_facility() +"', rented_hours='" + user.getRented_hours() +"', trained_hours='" + user.getTrained_hours() +"', city='" + user.getCity() +"', address='" + user.getAddress() +"', postal_code='" + user.getPostal_code() +"', phone='" + user.getPhone() +"' WHERE id_user='"+ idUser +"';";
		
		ud.updateDatabase(query);
	}
	
	@WebMethod()
	public void updateCompanyUser(int idUser, CompanyUser user) {
		ud = new UpdateDatabase();
		String query = "UPDATE \"nemeum\".companyuser SET ispremium= "+ user.getIsPremium() +", "
				+ "comercial_name='"+ user.getComercialName() +"', company_name='"+ user.getCompanyName() +"', contact_person='"+ user.getContactPerson() +"', ssn= '"+ user.getSsn() +"', "
						+ "email='"+ user.getEmail() +"', city='" + user.getCity() +"', address='" + user.getAddress() +"', postal_code='" + user.getPostal_code() +"', phone='" + user.getPhone() +"' WHERE id_company='"+ idUser +"';";
		
		ud.updateDatabase(query);
	}
	
	@WebMethod()
	public void updateTrainerUser(int idUser, TrainerUser user) {
		ud = new UpdateDatabase();
		String query = "UPDATE \"nemeum\".traineruser SET ispremium= "+ user.getIsPremium() +", "
				+ "first_name='"+ user.getFirst_name() +"', middle_surname_initial='"+ user.getMiddle_surname_initial() +"', last_surname='"+ user.getLast_surname() +"', ssn= '"+ user.getSsn() +"', "
						+ "email='"+ user.getEmail() +"', teached_hours='" + user.getTeached_hours() +"', city='" + user.getCity() +"', address='" + user.getAddress() +"', postal_code='" + user.getPostal_code() +"', phone='" + user.getPhone() +"' WHERE id_trainer='"+ idUser +"';";
		
		ud.updateDatabase(query);
	}
}
