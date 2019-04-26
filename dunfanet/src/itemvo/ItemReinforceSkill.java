package itemvo;

import java.util.List;

public class ItemReinforceSkill {
	
	private String jobName;
	private String jobId;
	
	private List<ItemSkills> skills;
	private List<ItemSkillsRange> levelRange;

	public List<ItemSkillsRange> getLevelRange() {
		return levelRange;
	}

	public void setLevelRange(List<ItemSkillsRange> levelRange) {
		this.levelRange = levelRange;
	}

	public String getJobName() {
		return jobName;
	}

	public void setJobName(String jobName) {
		this.jobName = jobName;
	}

	public String getJobId() {
		return jobId;
	}

	public void setJobId(String jobId) {
		this.jobId = jobId;
	}

	public List<ItemSkills> getSkills() {
		return skills;
	}

	public void setSkills(List<ItemSkills> skills) {
		this.skills = skills;
	} 

}
