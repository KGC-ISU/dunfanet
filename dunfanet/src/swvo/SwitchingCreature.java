package swvo;

public class SwitchingCreature {
	
	private String itemId;
	private String itemName;
	private String itemRarity;
	private String itemExplain;
	private String itemExplainDetail;
	private String itemAbility;
	private String optionAbility;
	
	private CreatureSkill skill;
	
	private CreatureOverSkill overskill;

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

	public String getItemExplain() {
		return itemExplain;
	}

	public void setItemExplain(String itemExplain) {
		this.itemExplain = itemExplain;
	}

	public String getItemExplainDetail() {
		return itemExplainDetail;
	}

	public void setItemExplainDetail(String itemExplainDetail) {
		this.itemExplainDetail = itemExplainDetail;
	}

	public String getItemAbility() {
		return itemAbility;
	}

	public void setItemAbility(String itemAbility) {
		this.itemAbility = itemAbility;
	}

	public String getOptionAbility() {
		return optionAbility;
	}

	public void setOptionAbility(String optionAbility) {
		this.optionAbility = optionAbility;
	}

	public CreatureSkill getSkill() {
		return skill;
	}

	public void setSkill(CreatureSkill skill) {
		this.skill = skill;
	}

	public CreatureOverSkill getOverskill() {
		return overskill;
	}

	public void setOverskill(CreatureOverSkill overskill) {
		this.overskill = overskill;
	}

	@Override
	public String toString() {
		return "SwitchingCreature [itemId=" + itemId + ", itemName=" + itemName + ", itemRarity=" + itemRarity
				+ ", itemExplain=" + itemExplain + ", itemExplainDetail=" + itemExplainDetail + ", itemAbility="
				+ itemAbility + ", optionAbility=" + optionAbility + ", skill=" + skill + ", overskill=" + overskill
				+ "]";
	}	

}
