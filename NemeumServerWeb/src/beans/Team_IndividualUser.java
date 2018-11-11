package beans;

public class Team_IndividualUser {

	private Integer team_IndividualUser;
	private Integer idTeam;
	private Integer id_IndividualUser;
	public Team_IndividualUser(Integer team_IndividualUser, Integer idTeam, Integer id_IndividualUser) {
		super();
		this.team_IndividualUser = team_IndividualUser;
		this.idTeam = idTeam;
		this.id_IndividualUser = id_IndividualUser;
	}
	public Integer getTeam_IndividualUser() {
		return team_IndividualUser;
	}
	public void setTeam_IndividualUser(Integer team_IndividualUser) {
		this.team_IndividualUser = team_IndividualUser;
	}
	public Integer getIdTeam() {
		return idTeam;
	}
	public void setIdTeam(Integer idTeam) {
		this.idTeam = idTeam;
	}
	public Integer getId_IndividualUser() {
		return id_IndividualUser;
	}
	public void setId_IndividualUser(Integer id_IndividualUser) {
		this.id_IndividualUser = id_IndividualUser;
	}
	
	
}
