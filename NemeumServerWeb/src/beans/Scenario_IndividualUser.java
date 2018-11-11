package beans;

public class Scenario_IndividualUser {

	private Integer id_UserScenario;
	private Integer id_IndividualUser;
	private Integer id_Scenario;
	public Scenario_IndividualUser(Integer id_UserScenario, Integer id_IndividualUser, Integer id_Scenario) {
		super();
		this.id_UserScenario = id_UserScenario;
		this.id_IndividualUser = id_IndividualUser;
		this.id_Scenario = id_Scenario;
	}
	public Integer getId_UserScenario() {
		return id_UserScenario;
	}
	public void setId_UserScenario(Integer id_UserScenario) {
		this.id_UserScenario = id_UserScenario;
	}
	public Integer getId_IndividualUser() {
		return id_IndividualUser;
	}
	public void setId_IndividualUser(Integer id_IndividualUser) {
		this.id_IndividualUser = id_IndividualUser;
	}
	public Integer getId_Scenario() {
		return id_Scenario;
	}
	public void setId_Scenario(Integer id_Scenario) {
		this.id_Scenario = id_Scenario;
	}
	
	
}
