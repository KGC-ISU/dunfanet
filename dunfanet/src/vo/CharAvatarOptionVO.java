package vo;

import java.util.List;

public class CharAvatarOptionVO {
	private String slotId;
	private String slotName;
	private String itemId;
	private String itemName;
	private String itemRarity;
	private String cloneAvatarId;
	private String cloneAvatarName;
	private String optionAbility;
	
	private List<CharAvatarEmblemsVO> emblems;
	
	public String getSlotId() {
		return slotId;
	}
	public void setSlotId(String slotId) {
		this.slotId = slotId;
	}
	public String getSlotName() {
		return slotName;
	}
	public void setSlotName(String slotName) {
		this.slotName = slotName;
	}
	public String getItemId() {
		return itemId;
	}
	public void setItemId(String itemId) {
		this.itemId = itemId;
	}
	public String getItemName() {
		return itemName;
	}
	public void setItemName(String itemName) {
		this.itemName = itemName;
	}
	public String getItemRarity() {
		return itemRarity;
	}
	public void setItemRarity(String itemRarity) {
		this.itemRarity = itemRarity;
	}
	public String getCloneAvatarId() {
		return cloneAvatarId;
	}
	public void setCloneAvatarId(String cloneAvatarId) {
		this.cloneAvatarId = cloneAvatarId;
	}
	public String getCloneAvatarName() {
		return cloneAvatarName;
	}
	public void setCloneAvatarName(String cloneAvatarName) {
		this.cloneAvatarName = cloneAvatarName;
	}
	public String getOptionAbility() {
		return optionAbility;
	}
	public void setOptionAbility(String optionAbility) {
		this.optionAbility = optionAbility;
	}
	public List<CharAvatarEmblemsVO> getEmblems() {
		return emblems;
	}
	public void setEmblems(List<CharAvatarEmblemsVO> emblems) {
		this.emblems = emblems;
	}
	
	@Override
	public String toString() {
		return "CharAvatarOptionVO [slotId=" + slotId + ", slotName=" + slotName + ", itemId=" + itemId + ", itemName="
				+ itemName + ", itemRarity=" + itemRarity + ", cloneAvatarId=" + cloneAvatarId + ", cloneAvatarName="
				+ cloneAvatarName + ", optionAbility=" + optionAbility + ", emblems=" + emblems + "]";
	}

}
