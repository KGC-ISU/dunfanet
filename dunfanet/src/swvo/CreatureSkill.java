package swvo;

public class CreatureSkill {
	
	private String name;
	private String description;
	private int cooldownTime;
	private String levelupCondition;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getCooldownTime() {
		return cooldownTime;
	}
	public void setCooldownTime(int cooldownTime) {
		this.cooldownTime = cooldownTime;
	}
	public String getLevelupCondition() {
		return levelupCondition;
	}
	public void setLevelupCondition(String levelupCondition) {
		this.levelupCondition = levelupCondition;
	}
	
}
