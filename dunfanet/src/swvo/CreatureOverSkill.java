package swvo;

public class CreatureOverSkill {
	
	private String name;
	private String description;
	private int cooldownTime;
	private int level;
	
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
	public int getLevel() {
		return level;
	}
	public void setLevel(int level) {
		this.level = level;
	}

}
