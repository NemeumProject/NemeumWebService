package beans;

public class Sport_IndividualUser {

	private Integer id_SportUser;
	private Integer id_IndividualUser;
	private Integer idSport;
	private String level;
	public Sport_IndividualUser(Integer id_SportUser, Integer id_IndividualUser, Integer idSport, String level) {
		super();
		this.id_SportUser = id_SportUser;
		this.id_IndividualUser = id_IndividualUser;
		this.idSport = idSport;
		this.level = level;
	}
	public Integer getId_SportUser() {
		return id_SportUser;
	}
	public void setId_SportUser(Integer id_SportUser) {
		this.id_SportUser = id_SportUser;
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
	public String getLevel() {
		return level;
	}
	public void setLevel(String level) {
		this.level = level;
	}
	
	
}
