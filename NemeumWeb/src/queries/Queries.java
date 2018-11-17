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

import java.sql.Connection;

@WebService()
public class Queries {
	Connection connection;
	String strEstat;
	IndividualUserSelect ius;
	CompanyUserSelect cus;
	TrainerUserSelect tus;
	
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
}
