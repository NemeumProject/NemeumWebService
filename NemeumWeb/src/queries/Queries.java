package queries;

import java.util.Iterator;
import java.util.List;

import javax.jws.WebMethod;
import javax.jws.WebService;

import beans.CompanyUser;
import beans.Event;
import beans.IndividualUser;
import beans.Scenario;
import beans.Scenario_IndividualUser;
import beans.Sport;
import beans.Team;
import beans.Team_IndividualUser;
import beans.TrainerUser;
import selectmethods.BookingSelect;
import selectmethods.CompanyUserSelect;
import selectmethods.EventSelect;
import selectmethods.IndividualUserSelect;
import selectmethods.ScenarioSelect;
import selectmethods.SportSelect;
import selectmethods.TeamSelect;
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
	ScenarioSelect ss;
	SportSelect sps;
	TeamSelect ts;
	EventSelect es;
	UpdateDatabase ud;
	BookingSelect bs;
	
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
	public List<Scenario> getScenarios(){
		List<Scenario> scenarioList;
		ss = new ScenarioSelect();
		String query = "SELECT * FROM \"nemeum\".scenario ORDER BY id_scenario";
		scenarioList = ss.findDatabase(query);
		return scenarioList;
	}
	
	@WebMethod
	public List<Sport> getSports(){
		List<Sport> sportList;
		sps = new SportSelect();
		String query = "SELECT * FROM \"nemeum\".sport ORDER BY id_sport;";
		sportList = sps.findDatabase(query);
		return sportList;
	}
	
	@WebMethod
	public List<Team> getTeams(){
		List<Team> teamList;
		ts = new TeamSelect();
		String query = "SELECT * FROM \"nemeum\".team ORDER BY id_team;";
		teamList = ts.findDatabase(query);
		return teamList;
	}
	
	@WebMethod
	public List<Event> getEvents(){
		List<Event> eventList;
		es = new EventSelect();
		String query = "SELECT * FROM \"nemeum\".event ORDER BY id_event;";
		eventList = es.findDatabase(query);
		return eventList;
	}
	
	@WebMethod
	public List<Event> getEvent(int id){
		List<Event> eventList;
		es = new EventSelect();
		String query = "SELECT * FROM \"nemeum\".event WHERE id_event = '"+ id + "' ORDER BY id_event;";
		eventList = es.findDatabase(query);
		return eventList;
	}
	
	@WebMethod
	public List<Team> getTeam(int id){
		List<Team> teamList;
		ts = new TeamSelect();
		String query = "SELECT * FROM \"nemeum\".team WHERE id_team = '"+ id + "' ORDER BY id_team;";
		teamList = ts.findDatabase(query);
		return teamList;
	}
	
	@WebMethod
	public List<Team_IndividualUser> getUserOfTeam(int id){
		List<Team_IndividualUser> listUsers;
		ts = new TeamSelect();
		String query = "SELECT DISTINCT ind.* FROM \"nemeum\".team team, \"nemeum\".team_individualuser ind WHERE team.id_team = ind.id_team AND team.id_team = '"+ id + "' ORDER BY ind.id_user;";
		listUsers = ts.findDatabaseIntermediate(query);
		return listUsers;
	}
	
	@WebMethod
	public List<Scenario> getScenario(Integer id){
		List<Scenario> scenario;
		ss = new ScenarioSelect();
		String query = "SELECT * FROM \"nemeum\".scenario WHERE id_scenario = '"+ id + "' ORDER BY id_scenario;";
		scenario = ss.findDatabase(query);
		return scenario;
	}
	
	@WebMethod
	public List<Scenario> getScenarioByTile(String title){
		List<Scenario> scenario;
		ss = new ScenarioSelect();
		String query = "SELECT * FROM \"nemeum\".scenario WHERE title = '"+ title + "' ORDER BY id_scenario;";
		scenario = ss.findDatabase(query);
		return scenario;
	}
	
	@WebMethod
	public List<Sport> getSport(Integer id){
		List<Sport> sportList;
		sps = new SportSelect();
		String query = "SELECT * FROM \"nemeum\".sport WHERE id_sport = '"+ id + "' ORDER BY id_sport;";
		sportList = sps.findDatabase(query);
		return sportList;
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
	public void deleteTeam(int id) {
		ud = new UpdateDatabase();
		String query = "DELETE FROM \"nemeum\".team "
				+ "WHERE id_team = '"+ id +"';";
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
	
	@WebMethod
	public void deleteScenario(int id) {
		ud = new UpdateDatabase();
		String query = "DELETE FROM \"nemeum\".scenario "
				+ "WHERE id_scenario = '"+ id +"';";
		ud.updateDatabase(query);
	}
	
	@WebMethod
	public void deleteMemberOfTeam(int id) {
		ud = new UpdateDatabase();
		String query = "DELETE FROM \"nemeum\".team_individualuser "
				+ "WHERE id_user = '"+ id +"';";
		ud.updateDatabase(query);
	}
	
	@WebMethod
	public void deleteEvent(int id) {
		ud = new UpdateDatabase();
		String query = "DELETE FROM \"nemeum\".event "
				+ "WHERE id_event = '"+ id +"';";
		ud.updateDatabase(query);
	}
	
	@WebMethod()
    public void createIndividualUser(IndividualUser user) {
    	int idUser = getLastIdUser();
    	ud = new UpdateDatabase();
    	Boolean premium = false;
    	String username = user.getFirst_name();
		String query = "INSERT INTO \"nemeum\".individualuser (id_user, ispremium, first_name, middle_surname_initial, last_surname, ssn, email, city, address, postal_code, phone, username, password)"
		          + "VALUES('" + idUser + "', '" + premium + "', '" + user.getFirst_name() + "', '" 
		          + user.getMiddle_surname_initial() + "', '" + user.getLast_surname() + "', '" 
		          + user.getSsn()  + "', '" + user.getEmail() + "', '" 
		          + user.getCity() + "', '" + user.getAddress() + "', '" + user.getPostal_code() + "', '" + user.getPhone() + "', '" + username + "', '" + username + "');" + "\n"; 
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
    	Boolean premium = false;
    	String username = user.getCompanyName();
		String query = "INSERT INTO \"nemeum\".companyuser (id_company, ispremium, comercial_name, company_name, contact_person, ssn, email, city, address, postal_code, phone, username, password, title, description)"
		          + "VALUES('" + idUser + "', '" + premium + "', '" + user.getComercialName() + "', '" 
		          + user.getCompanyName() + "', '" + user.getContactPerson() + "', '" 
		          + user.getSsn()  + "', '" + user.getEmail() + "', '" 
		          + user.getCity() + "', '" + user.getAddress() + "', '" + user.getPostal_code() + "', '" + user.getPhone() + "', '" + username + "', '" + username + "', '" + user.getSlogan() + "', '" + user.getDescription() + "');" + "\n"; 
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
    	Boolean premium = false;
    	String username = user.getFirst_name();
		String query = "INSERT INTO \"nemeum\".traineruser (id_trainer, ispremium, first_name, middle_surname_initial, last_surname, ssn, email, city, address, postal_code, phone, username, password, title, description)"
		          + "VALUES('" + idUser + "', '" + premium + "', '" + user.getFirst_name() + "', '" 
		          + user.getMiddle_surname_initial() + "', '" + user.getLast_surname() + "', '" + user.getSsn() + "', '" + user.getEmail() + "', '"
		          + user.getCity() + "', '" + user.getAddress() + "', '" + user.getPostal_code() + "', '" + user.getPhone() + "', '" 
		          + username + "', '" + username + "', '" + user.getTitle() + "', '" + user.getDescription() + "');" + "\n"; 
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
    public void createScenario(Scenario scenario) {
    	int idScenario = getLastIdScenario();
    	ud = new UpdateDatabase();
		String query = "INSERT INTO \"nemeum\".scenario (id_scenario, sport_id, price, capacity, company_id, date_scenario, city, address, title, description)"
		          + "VALUES('" + idScenario + "', '" + scenario.getIdSport() + "', '" + scenario.getPrice() + "', '" 
		          + scenario.getCapacity() + "', '" 
		          + scenario.getIdCompanyUser()  + "', '" + scenario.getDateScenario() + "', '" + scenario.getCity() + "', '" + scenario.getAddress() + "', '" + scenario.getTitle() + "', '" + scenario.getDescription() + "' );" + "\n"; 
		ud.updateDatabase(query);	
    }
	
	@WebMethod()
    public void createEvent(Event event) {
    	int idEvent = getLastIdEvent();
    	ud = new UpdateDatabase();
		String query = "INSERT INTO \"nemeum\".event (id_event, id_sport, isindoor, capacity, price, city, address, postal_code, phone, date_event, title, description)"
		          + "VALUES('" + idEvent + "', '" + event.getIdSport() + "', '" + event.getIsIndoor()  +
		          "', '" + event.getCapacity() + "', '" + event.getPrice() + "', '" + event.getCity() + "', '" + event.getAddress() + "', '" + event.getPostalCode() + "', '" + event.getPhone() + "', '" + event.getDateEvent() + "', '" + event.getTitle() + "', '" + event.getDescription() + "');" + "\n"; 
		ud.updateDatabase(query);	
    }
	
	@WebMethod()
    public void createBooking(Scenario_IndividualUser indScenario) {
    	int idTeam = getLastIdBooking();
    	ud = new UpdateDatabase();
		String query = "INSERT INTO \"nemeum\".user_scenario (id_user_scenario, id_scenario, date_booking, start_scenario, end_scenario, phone, name_customer, email)"
		          + "VALUES('" + idTeam + "', '" + indScenario.getId_Scenario() + "', '" + indScenario.getDateBooking() + "', '" + indScenario.getStartBooking() + "', '" + indScenario.getEndBooking() + "', '" + indScenario.getPhone() + "', '" + indScenario.getCustomerName() + "', '" + indScenario.getEmail() + "' );" + "\n"; 
		ud.updateDatabase(query);	

    }
	
	protected int getLastIdEvent() {
		int newPk;
		es = new EventSelect();
		String query = "SELECT MAX(id_event) FROM \"nemeum\".event;";
		newPk = es.findMaxPk(query);
		return newPk + 1;
	}
	
	protected int getLastIdTeam() {
		int newPk;
		ts = new TeamSelect();
		String query = "SELECT MAX(id_team) FROM \"nemeum\".team;";
		newPk = ts.findMaxPk(query);
		return newPk + 1;
	}
	
	protected int getLastIdBooking() {
		int newPk;
		bs = new BookingSelect();
		String query = "SELECT MAX(id_user_scenario) FROM \"nemeum\".user_scenario;";
		newPk = bs.findMaxPk(query);
		return newPk + 1;
	}
	
	protected int getLastIdTeamUser() {
		int newPk;
		ts = new TeamSelect();
		String query = "SELECT MAX(id_team_user) FROM \"nemeum\".team_individualuser;";
		newPk = ts.findMaxPk(query);
		return newPk + 1;
	}
	
	protected int getLastIdScenario() {
		int newPk;
		ss = new ScenarioSelect();
		String query = "SELECT MAX(id_scenario) FROM \"nemeum\".scenario;";
		newPk = ss.findMaxPk(query);
		return newPk + 1;
	}
	
	@WebMethod
	public List<Sport> getIdSportByName(String name) {
		List<Sport> sport;
		sps = new SportSelect();
		String query = "SELECT * FROM \"nemeum\".sport WHERE name_sport = '"+ name + "' ORDER BY id_sport;";
		sport = sps.findDatabase(query);
		return sport;
	}
	
	@WebMethod
	public List<CompanyUser> getIdCompanyByName(String name) {
		List<CompanyUser> company;
		cus = new CompanyUserSelect();
		String query = "SELECT * FROM \"nemeum\".companyuser WHERE company_name = '"+ name + "' ORDER BY id_company;";
		company = cus.findDatabase(query);
		return company;
	}
	
	@WebMethod
	public List<IndividualUser> getIdIndividualByName(String name) {
		List<IndividualUser> user;
		ius = new IndividualUserSelect();
		String query = "SELECT * FROM \"nemeum\".individualuser WHERE first_name = '"+ name + "' ORDER BY id_user;";
		user = ius.findDatabase(query);
		return user;
	}
	
	@WebMethod()
	public void updateIndividualUser(int idUser, IndividualUser user) {
		ud = new UpdateDatabase();
		String query = "UPDATE \"nemeum\".individualuser SET first_name='"+ user.getFirst_name() +"', middle_surname_initial='"+ user.getMiddle_surname_initial() +"', last_surname='"+ user.getLast_surname() +"', ssn= '"+ user.getSsn() +"', "
						+ "email='"+ user.getEmail() +"', city='" + user.getCity() +"', address='" + user.getAddress() +"', postal_code='" + user.getPostal_code() +"', phone='" + user.getPhone() +"' WHERE id_user='"+ idUser +"';";
		
		ud.updateDatabase(query);
	}
	
	@WebMethod()
	public void updateCompanyUser(int idUser, CompanyUser user) {
		ud = new UpdateDatabase();
		String query = "UPDATE \"nemeum\".companyuser SET comercial_name='"+ user.getComercialName() +"', company_name='"+ user.getCompanyName() +"', contact_person='"+ user.getContactPerson() +"', ssn= '"+ user.getSsn() +"', "
						+ "email='"+ user.getEmail() +"', city='" + user.getCity() +"', address='" + user.getAddress() +"', postal_code='" + user.getPostal_code() +"', phone='" + user.getPhone() + "', title='" + user.getSlogan() + "', description='" + user.getDescription() + "' WHERE id_company='"+ idUser +"';";
		
		ud.updateDatabase(query);
	}
	
	@WebMethod()
	public void updateTrainerUser(int idUser, TrainerUser user) {
		ud = new UpdateDatabase();
		String query = "UPDATE \"nemeum\".traineruser SET first_name='"+ user.getFirst_name() +"', middle_surname_initial='"+ user.getMiddle_surname_initial() +"', last_surname='"+ user.getLast_surname() +"', ssn= '"+ user.getSsn() +"', "
						+ "email='"+ user.getEmail() +"', city='" + user.getCity() +"', address='" + user.getAddress() +"', postal_code='" + user.getPostal_code() +"', phone='" + user.getPhone() +"', title='" + user.getTitle() + "', description='" + user.getDescription() + "' WHERE id_trainer='"+ idUser +"';";
		
		ud.updateDatabase(query);
	}
	
	@WebMethod()
	public void updateScenario(int idScenario, Scenario scenario) {
		ud = new UpdateDatabase();
		String query = "UPDATE \"nemeum\".scenario SET price= "+ scenario.getPrice() +", "
				+ "capacity='"+ scenario.getCapacity() +"', company_id='"+ scenario.getIdCompanyUser() +"', sport_id= '"+ scenario.getIdSport() +"', "
						+ "date_scenario='"+ scenario.getDateScenario() +"', city='" + scenario.getCity() + "', address='" + scenario.getAddress() + "', title='" + scenario.getTitle() + "', description='" + scenario.getDescription() + "' WHERE id_scenario='"+ idScenario +"';";
		
		ud.updateDatabase(query);
	}
	
	@WebMethod()
	public void updateEvent(Event event) {
		ud = new UpdateDatabase();
		String query = "UPDATE \"nemeum\".event SET id_sport= "+ event.getIdSport() +", "
				+" isindoor= '"+ event.getIsIndoor() +"', "
						+ "capacity='"+ event.getCapacity() + "', price='" + event.getPrice() + "', city='" + event.getCity() + "', address='" + event.getAddress() +"', "
								+ "postal_code='" + event.getPostalCode() + "', phone='" + event.getPhone() + "', date_event='" + event.getDateEvent() + "', title='" + event.getTitle() + "', description='" + event.getDescription() + "' WHERE id_event='"+ event.getIdEvent() +"';";
		
		ud.updateDatabase(query);
	}
	
	@WebMethod()
	public void updateTeam(Team team, List<IndividualUser> users, List<Team_IndividualUser> userIntermediate) {
		ud = new UpdateDatabase();
		String query = "UPDATE \"nemeum\".team SET sport_id= "+ team.getIdSport() +", "
				+ "name_team='"+ team.getName() +"' WHERE id_team='"+ team.getIdTeam() +"';";
		ud.updateDatabase(query);
		Iterator<Team_IndividualUser> i = userIntermediate.iterator();
		String query2 = "";
		String query3 = "";
		for(IndividualUser user : users) {
			List<Team_IndividualUser> list = getIdTeamIntermediateByUser(user.getId_IndividualUser());
			while(i.hasNext()) {
				if(!i.next().getId_IndividualUser().equals(list.get(0).getId_IndividualUser())) {
					int idTeamUser = getLastIdTeamUser();
					query3 = "DELETE FROM \"nemeum\".team_individualuser "
							+ "WHERE id_user = '"+ i.next().getId_IndividualUser() +"';";
					query2 = "INSERT INTO \"nemeum\".team_individualuser (id_team_user, id_team, id_user) VALUES('"+ idTeamUser + "', '" + team.getIdTeam() + "', '" + user.getId_IndividualUser() +"');"; 
					i.remove();
					break;
				}
			}
			ud.updateDatabase(query3);
			ud.updateDatabase(query2);
		}
	}
	
	protected List<Team_IndividualUser> getIdTeamIntermediateByUser(int id) {
		List<Team_IndividualUser> list;
		ts = new TeamSelect();
		String query = "SELECT * FROM \"nemeum\".team_individualuser WHERE id_user='" + id +"';";
		list = ts.findDatabaseIntermediate(query);
		return list;
	}
}
