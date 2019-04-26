package vo;

import java.util.List;

public class CharStatVO {
	
	private String characterId;
	private String characterName;
	private int level;
	private String jobId;
	private String jobGrowId;
	private String jobName;
	private String jobGrowName;
	private String adventureName;
	private String guildId;
	private String guildName;
	
	private List<StatBuffVO> buff;
	private List<CharMainStatus> status;

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

	public String getAdventureName() {
		return adventureName;
	}

	public void setAdventureName(String adventureName) {
		this.adventureName = adventureName;
	}

	public String getGuildId() {
		return guildId;
	}

	public void setGuildId(String guildId) {
		this.guildId = guildId;
	}

	public String getGuildName() {
		return guildName;
	}

	public void setGuildName(String guildName) {
		this.guildName = guildName;
	}

	public List<StatBuffVO> getBuff() {
		return buff;
	}

	public void setBuff(List<StatBuffVO> buff) {
		this.buff = buff;
	}

	public List<CharMainStatus> getStatus() {
		return status;
	}

	public void setStatus(List<CharMainStatus> status) {
		this.status = status;
	}	

}
