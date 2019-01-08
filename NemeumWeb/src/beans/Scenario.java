package beans;

import java.sql.Date;

public class Scenario {

	private Integer idScenario;
	private Integer idSport;
	private Integer idCompanyUser;
	private Double price;
	private Boolean isIndoor;
	private Integer capacity;
	private Date dateScenario;
	private String description;
	private String title;
	private String city;
	private String address;
	
	
	public Scenario(Integer idScenario, Integer idSport, Integer idCompanyUser, Double price, Boolean isIndoor,
			Integer capacity, Date dateScenario, String description, String title, String city, String address) {
		super();
		this.idScenario = idScenario;
		this.idSport = idSport;
		this.idCompanyUser = idCompanyUser;
		this.price = price;
		this.isIndoor = isIndoor;
		this.capacity = capacity;
		this.dateScenario = dateScenario;
		this.description = description;
		this.title = title;
		this.city = city;
		this.address = address;
	}
	public Scenario() {
		super();
	}
	public Integer getIdScenario() {
		return idScenario;
	}
	public void setIdScenario(Integer idScenario) {
		this.idScenario = idScenario;
	}
	public Integer getIdSport() {
		return idSport;
	}
	public void setIdSport(Integer idSport) {
		this.idSport = idSport;
	}
	public Integer getIdCompanyUser() {
		return idCompanyUser;
	}
	public void setIdCompanyUser(Integer idCompanyUser) {
		this.idCompanyUser = idCompanyUser;
	}
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	public Boolean getIsIndoor() {
		return isIndoor;
	}
	public void setIsIndoor(Boolean isIndoor) {
		this.isIndoor = isIndoor;
	}
	public Integer getCapacity() {
		return capacity;
	}
	public void setCapacity(Integer capacity) {
		this.capacity = capacity;
	}
	public Date getDateScenario() {
		return dateScenario;
	}
	public void setDateScenario(Date dateScenario) {
		this.dateScenario = dateScenario;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	
}
