package swvo;

import java.util.List;

import vo.CharAvatarOptionVO;
import vo.CharItemVO;

public class SwitchingBuff {
	
	private String skillName;
	
	private List<CharItemVO> equipment;
	private List<CharAvatarOptionVO> avatar;
	private List<SwitchingCreature> creature;
	
	public String getSkillName() {
		return skillName;
	}
	public void setSkillName(String skillName) {
		this.skillName = skillName;
	}
	public List<CharItemVO> getEquipment() {
		return equipment;
	}
	public void setEquipment(List<CharItemVO> equipment) {
		this.equipment = equipment;
	}
	public List<CharAvatarOptionVO> getAvatar() {
		return avatar;
	}
	public void setAvatar(List<CharAvatarOptionVO> avatar) {
		this.avatar = avatar;
	}
	public List<SwitchingCreature> getCreature() {
		return creature;
	}
	public void setCreature(List<SwitchingCreature> creature) {
		this.creature = creature;
	}

}
