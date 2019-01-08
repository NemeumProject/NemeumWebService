package beans;

import java.util.Date;

public class Scenario_IndividualUser {

	private Integer id_UserScenario;
	private Integer id_IndividualUser;
	private Integer id_Scenario;
	private Integer phone;
	private String email;
	private String customerName;
	private Date dateBooking;
	private Date startBooking;
	private Date endBooking;
	
	
	
	
	public Scenario_IndividualUser(Integer id_UserScenario, Integer id_IndividualUser, Integer id_Scenario,
			Integer phone, String email, String customerName, Date dateBooking, Date startBooking, Date endBooking) {
		super();
		this.id_UserScenario = id_UserScenario;
		this.id_IndividualUser = id_IndividualUser;
		this.id_Scenario = id_Scenario;
		this.phone = phone;
		this.email = email;
		this.customerName = customerName;
		this.dateBooking = dateBooking;
		this.startBooking = startBooking;
		this.endBooking = endBooking;
	}

	public Scenario_IndividualUser() {
		super();
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

	public Integer getPhone() {
		return phone;
	}

	public void setPhone(Integer phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getCustomerName() {
		return customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

	public Date getDateBooking() {
		return dateBooking;
	}

	public void setDateBooking(Date dateBooking) {
		this.dateBooking = dateBooking;
	}

	public Date getStartBooking() {
		return startBooking;
	}

	public void setStartBooking(Date startBooking) {
		this.startBooking = startBooking;
	}

	public Date getEndBooking() {
		return endBooking;
	}

	public void setEndBooking(Date endBooking) {
		this.endBooking = endBooking;
	}
	
	
	
	
}
