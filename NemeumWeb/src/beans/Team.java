package beans;

public class Team {

	private Integer idTeam;
	private Integer idSport;
	private String name;
	public Team(Integer idTeam, Integer idSport, String name) {
		super();
		this.idTeam = idTeam;
		this.idSport = idSport;
		this.name = name;
	}
	public Integer getIdTeam() {
		return idTeam;
	}
	public void setIdTeam(Integer idTeam) {
		this.idTeam = idTeam;
	}
	public Integer getIdSport() {
		return idSport;
	}
	public void setIdSport(Integer idSport) {
		this.idSport = idSport;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	
}
