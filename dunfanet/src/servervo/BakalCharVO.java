package servervo;

public class BakalCharVO {

	private String characterId;
	private String characterName;
	private int level;
	private String jobId;
	private String jobGrowId;
	private String jobName;
	private String jobGrowName;
	private String server = "바칼";
	
	public String getCharacterId() {
		return characterId;
	}
	public void setCharacterId(String characterId) {
		this.characterId = characterId;
	}
	public String getCharacterName() {
		return characterName;
	}
	public void setCharacterName(String characterName) {
		this.characterName = characterName;
	}
	public int getLevel() {
		return level;
	}
	public void setLevel(int level) {
		this.level = level;
	}
	public String getJobId() {
		return jobId;
	}
	public void setJobId(String jobId) {
		this.jobId = jobId;
	}
	public String getJobGrowId() {
		return jobGrowId;
	}
	public void setJobGrowId(String jobGrowId) {
		this.jobGrowId = jobGrowId;
	}
	public String getJobName() {
		return jobName;
	}
	public void setJobName(String jobName) {
		this.jobName = jobName;
	}
	public String getJobGrowName() {
		return jobGrowName;
	}
	public void setJobGrowName(String jobGrowName) {
		this.jobGrowName = jobGrowName;
	}
	public String getServer() {
		return server;
	}
	public void setServer(String server) {
		this.server = server;
	}
	
}
