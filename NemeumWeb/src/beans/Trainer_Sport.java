package beans;

public class Trainer_Sport {
	
	private Integer id_TrainerSport;
	private Integer idSport;
	private Integer idTrainer;
	private String experience;
	public Trainer_Sport(Integer id_TrainerSport, Integer idSport, Integer idTrainer, String experience) {
		super();
		this.id_TrainerSport = id_TrainerSport;
		this.idSport = idSport;
		this.idTrainer = idTrainer;
		this.experience = experience;
	}
	public Integer getId_TrainerSport() {
		return id_TrainerSport;
	}
	public void setId_TrainerSport(Integer id_TrainerSport) {
		this.id_TrainerSport = id_TrainerSport;
	}
	public Integer getIdSport() {
		return idSport;
	}
	public void setIdSport(Integer idSport) {
		this.idSport = idSport;
	}
	public Integer getIdTrainer() {
		return idTrainer;
	}
	public void setIdTrainer(Integer idTrainer) {
		this.idTrainer = idTrainer;
	}
	public String getExperience() {
		return experience;
	}
	public void setExperience(String experience) {
		this.experience = experience;
	}
	
	

}
