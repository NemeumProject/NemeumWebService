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
	public Scenario(Integer idScenario, Integer idSport, Integer idCompanyUser, Double price, Boolean isIndoor,
			Integer capacity, Date dateScenario) {
		super();
		this.idScenario = idScenario;
		this.idSport = idSport;
		this.idCompanyUser = idCompanyUser;
		this.price = price;
		this.isIndoor = isIndoor;
		this.capacity = capacity;
		this.dateScenario = dateScenario;
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
	
}
