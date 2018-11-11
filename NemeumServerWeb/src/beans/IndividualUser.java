package beans;

public class IndividualUser {

	private Integer id_IndividualUser;
	private Boolean isPremium;
	private String first_name;
	private String middle_surname_initial;
	private String last_surname;
	private String ssn;
	private String email;
	private Boolean free_training;
	private Boolean free_facility;
	private Integer rented_hours;
	private Integer trained_hours;
	private String city;
	private String address;
	private String postal_code;
	private Integer phone;
	public IndividualUser(Integer id_IndividualUser, Boolean isPremium, String first_name,
			String middle_surname_initial, String last_surname, String ssn, String email, Boolean free_training,
			Boolean free_facility, Integer rented_hours, Integer trained_hours, String city, String address,
			String postal_code, Integer phone) {
		super();
		this.id_IndividualUser = id_IndividualUser;
		this.isPremium = isPremium;
		this.first_name = first_name;
		this.middle_surname_initial = middle_surname_initial;
		this.last_surname = last_surname;
		this.ssn = ssn;
		this.email = email;
		this.free_training = free_training;
		this.free_facility = free_facility;
		this.rented_hours = rented_hours;
		this.trained_hours = trained_hours;
		this.city = city;
		this.address = address;
		this.postal_code = postal_code;
		this.phone = phone;
	}
	public Integer getId_IndividualUser() {
		return id_IndividualUser;
	}
	public void setId_IndividualUser(Integer id_IndividualUser) {
		this.id_IndividualUser = id_IndividualUser;
	}
	public Boolean getIsPremium() {
		return isPremium;
	}
	public void setIsPremium(Boolean isPremium) {
		this.isPremium = isPremium;
	}
	public String getFirst_name() {
		return first_name;
	}
	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}
	public String getMiddle_surname_initial() {
		return middle_surname_initial;
	}
	public void setMiddle_surname_initial(String middle_surname_initial) {
		this.middle_surname_initial = middle_surname_initial;
	}
	public String getLast_surname() {
		return last_surname;
	}
	public void setLast_surname(String last_surname) {
		this.last_surname = last_surname;
	}
	public String getSsn() {
		return ssn;
	}
	public void setSsn(String ssn) {
		this.ssn = ssn;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Boolean getFree_training() {
		return free_training;
	}
	public void setFree_training(Boolean free_training) {
		this.free_training = free_training;
	}
	public Boolean getFree_facility() {
		return free_facility;
	}
	public void setFree_facility(Boolean free_facility) {
		this.free_facility = free_facility;
	}
	public Integer getRented_hours() {
		return rented_hours;
	}
	public void setRented_hours(Integer rented_hours) {
		this.rented_hours = rented_hours;
	}
	public Integer getTrained_hours() {
		return trained_hours;
	}
	public void setTrained_hours(Integer trained_hours) {
		this.trained_hours = trained_hours;
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
	public String getPostal_code() {
		return postal_code;
	}
	public void setPostal_code(String postal_code) {
		this.postal_code = postal_code;
	}
	public Integer getPhone() {
		return phone;
	}
	public void setPhone(Integer phone) {
		this.phone = phone;
	}
	
	
	
}
