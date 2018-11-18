package beans;

public class Sport {

	private Integer idSport;
	private String name;
	private Integer max_players;
	private Boolean isTeamSport;
	public Sport(Integer idSport, String name, Integer max_players, Boolean isTeamSport) {
		super();
		this.idSport = idSport;
		this.name = name;
		this.max_players = max_players;
		this.isTeamSport = isTeamSport;
	}
	public Sport() {
		super();
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
	public Integer getMax_players() {
		return max_players;
	}
	public void setMax_players(Integer max_players) {
		this.max_players = max_players;
	}
	public Boolean getIsTeamSport() {
		return isTeamSport;
	}
	public void setIsTeamSport(Boolean isTeamSport) {
		this.isTeamSport = isTeamSport;
	}
	
	
}
