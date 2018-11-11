package beans;

import java.sql.Date;

public class Event {

	private Integer idEvent;
	private Integer id_CompanyUser;
	private Integer id_TrainerUser;
	private Integer id_IndividualUser;
	private Integer idSport;
	private Boolean isIndoor;
	private Integer capacity;
	private Double price;
	private String city;
	private String address;
	private String postalCode;
	private Integer phone;
	private Date dateEvent;
	public Event(Integer idEvent, Integer id_CompanyUser, Integer id_TrainerUser, Integer id_IndividualUser,
			Integer idSport, Boolean isIndoor, Integer capacity, Double price, String city, String address,
			String postalCode, Integer phone, Date dateEvent) {
		super();
		this.idEvent = idEvent;
		this.id_CompanyUser = id_CompanyUser;
		this.id_TrainerUser = id_TrainerUser;
		this.id_IndividualUser = id_IndividualUser;
		this.idSport = idSport;
		this.isIndoor = isIndoor;
		this.capacity = capacity;
		this.price = price;
		this.city = city;
		this.address = address;
		this.postalCode = postalCode;
		this.phone = phone;
		this.dateEvent = dateEvent;
	}
	public Integer getIdEvent() {
		return idEvent;
	}
	public void setIdEvent(Integer idEvent) {
		this.idEvent = idEvent;
	}
	public Integer getId_CompanyUser() {
		return id_CompanyUser;
	}
	public void setId_CompanyUser(Integer id_CompanyUser) {
		this.id_CompanyUser = id_CompanyUser;
	}
	public Integer getId_TrainerUser() {
		return id_TrainerUser;
	}
	public void setId_TrainerUser(Integer id_TrainerUser) {
		this.id_TrainerUser = id_TrainerUser;
	}
	public Integer getId_IndividualUser() {
		return id_IndividualUser;
	}
	public void setId_IndividualUser(Integer id_IndividualUser) {
		this.id_IndividualUser = id_IndividualUser;
	}
	public Integer getIdSport() {
		return idSport;
	}
	public void setIdSport(Integer idSport) {
		this.idSport = idSport;
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
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
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
	public String getPostalCode() {
		return postalCode;
	}
	public void setPostalCode(String postalCode) {
		this.postalCode = postalCode;
	}
	public Integer getPhone() {
		return phone;
	}
	public void setPhone(Integer phone) {
		this.phone = phone;
	}
	public Date getDateEvent() {
		return dateEvent;
	}
	public void setDateEvent(Date dateEvent) {
		this.dateEvent = dateEvent;
	}
	
	
}
