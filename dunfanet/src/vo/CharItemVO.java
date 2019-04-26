package vo;

public class CharItemVO {
	
	private String slotId;
	private String slotName;
	private String itemId;
	private String itemName;
	private String itemType;
	private String itemTypeDetail;
	private int itemAvailableLevel;
	private String itemRarity;
	private String setItemId;
	private String setItemName;
	private int reinforce;
	private int refine;
	private String amplificationName;
	private String itemGradeName;
	
	private CharEnchantVO enchant;
	
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
	public String getItemType() {
		return itemType;
	}
	public void setItemType(String itemType) {
		this.itemType = itemType;
	}
	public String getItemTypeDetail() {
		return itemTypeDetail;
	}
	public void setItemTypeDetail(String itemTypeDetail) {
		this.itemTypeDetail = itemTypeDetail;
	}
	public int getItemAvailableLevel() {
		return itemAvailableLevel;
	}
	public void setItemAvailableLevel(int itemAvailableLevel) {
		this.itemAvailableLevel = itemAvailableLevel;
	}
	public String getItemRarity() {
		return itemRarity;
	}
	public void setItemRarity(String itemRarity) {
		this.itemRarity = itemRarity;
	}
	public String getSetItemId() {
		return setItemId;
	}
	public void setSetItemId(String setItemId) {
		this.setItemId = setItemId;
	}
	public String getSetItemName() {
		return setItemName;
	}
	public void setSetItemName(String setItemName) {
		this.setItemName = setItemName;
	}
	public int getReinforce() {
		return reinforce;
	}
	public void setReinforce(int reinforce) {
		this.reinforce = reinforce;
	}
	public int getRefine() {
		return refine;
	}
	public void setRefine(int refine) {
		this.refine = refine;
	}
	public String getAmplificationName() {
		return amplificationName;
	}
	public void setAmplificationName(String amplificationName) {
		this.amplificationName = amplificationName;
	}
	public String getItemGradeName() {
		return itemGradeName;
	}
	public void setItemGradeName(String itemGradeName) {
		this.itemGradeName = itemGradeName;
	}
	public CharEnchantVO getEnchant() {
		return enchant;
	}
	public void setEnchant(CharEnchantVO enchant) {
		this.enchant = enchant;
	}
	
	@Override
	public String toString() {
		return "CharItemVO [slotId=" + slotId + ", slotName=" + slotName + ", itemId=" + itemId + ", itemName="
				+ itemName + ", itemType=" + itemType + ", itemTypeDetail=" + itemTypeDetail + ", itemAvailableLevel="
				+ itemAvailableLevel + ", itemRarity=" + itemRarity + ", setItemId=" + setItemId + ", setItemName="
				+ setItemName + ", reinforce=" + reinforce + ", refine=" + refine + ", amplificationName="
				+ amplificationName + ", itemGradeName=" + itemGradeName + ", enchant=" + enchant + "]";
	}
	
}
