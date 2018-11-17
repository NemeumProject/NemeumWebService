package beans;

public class TrainerUser {

	private Integer id_TrainerUser;
	private Boolean isPremium;
	private String first_name;
	private String middle_surname_initial;
	private String last_surname;
	private String ssn;
	private String email;
	private Integer teached_hours;
	private String city;
	private String address;
	private String postal_code;
	private Integer phone;
	public TrainerUser(Integer id_TrainerUser, Boolean isPremium, String first_name, String middle_surname_initial,
			String last_surname, String ssn, String email, Integer teached_hours, String city, String address,
			String postal_code, Integer phone) {
		super();
		this.id_TrainerUser = id_TrainerUser;
		this.isPremium = isPremium;
		this.first_name = first_name;
		this.middle_surname_initial = middle_surname_initial;
		this.last_surname = last_surname;
		this.ssn = ssn;
		this.email = email;
		this.teached_hours = teached_hours;
		this.city = city;
		this.address = address;
		this.postal_code = postal_code;
		this.phone = phone;
	}
	public TrainerUser() {
		super();
	}
	public Integer getId_TrainerUser() {
		return id_TrainerUser;
	}
	public void setId_TrainerUser(Integer id_TrainerUser) {
		this.id_TrainerUser = id_TrainerUser;
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
	public Integer getTeached_hours() {
		return teached_hours;
	}
	public void setTeached_hours(Integer teached_hours) {
		this.teached_hours = teached_hours;
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
