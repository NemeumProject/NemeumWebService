package beans;

public class CompanyUser {

	private Integer id_CompanyUser;
	private Boolean isPremium;
	private String comercialName;
	private String companyName;
	private String contactPerson;
	private String ssn;
	private String email;
	private String city;
	private String address;
	private String postal_code;
	private Integer phone;
	public CompanyUser(Integer id_CompanyUser, Boolean isPremium, String comercialName, String companyName,
			String contactPerson, String ssn, String email, String city, String address, String postal_code,
			Integer phone) {
		super();
		this.id_CompanyUser = id_CompanyUser;
		this.isPremium = isPremium;
		this.comercialName = comercialName;
		this.companyName = companyName;
		this.contactPerson = contactPerson;
		this.ssn = ssn;
		this.email = email;
		this.city = city;
		this.address = address;
		this.postal_code = postal_code;
		this.phone = phone;
	}
	public CompanyUser() {
		super();
	}
	public Integer getId_CompanyUser() {
		return id_CompanyUser;
	}
	public void setId_CompanyUser(Integer id_CompanyUser) {
		this.id_CompanyUser = id_CompanyUser;
	}
	public Boolean getIsPremium() {
		return isPremium;
	}
	public void setIsPremium(Boolean isPremium) {
		this.isPremium = isPremium;
	}
	public String getComercialName() {
		return comercialName;
	}
	public void setComercialName(String comercialName) {
		this.comercialName = comercialName;
	}
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public String getContactPerson() {
		return contactPerson;
	}
	public void setContactPerson(String contactPerson) {
		this.contactPerson = contactPerson;
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
