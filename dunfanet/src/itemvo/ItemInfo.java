package itemvo;

import java.util.List;

public class ItemInfo {

	private String itemId;
	private String itemName;
	private String itemRarity;
	private String itemType;
	private String itemTypeDetail;
	private int itemAvailableLevel;
	private String itemObtainInfo;
	private String itemExplain;
	private String itemExplainDetail;
	private String itemFlavorText;
	private String setItemId;
	private String setItemName;
	
	private List<ItemStatus> itemStatus;
	private List<ItemReinforceSkill> itemReinforceSkill;
	
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
	public String getItemObtainInfo() {
		return itemObtainInfo;
	}
	public void setItemObtainInfo(String itemObtainInfo) {
		this.itemObtainInfo = itemObtainInfo;
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
	public String getItemFlavorText() {
		return itemFlavorText;
	}
	public void setItemFlavorText(String itemFlavorText) {
		this.itemFlavorText = itemFlavorText;
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
	public List<ItemStatus> getItemStatus() {
		return itemStatus;
	}
	public void setItemStatus(List<ItemStatus> itemStatus) {
		this.itemStatus = itemStatus;
	}
	public List<ItemReinforceSkill> getItemReinforceSkill() {
		return itemReinforceSkill;
	}
	public void setItemReinforceSkill(List<ItemReinforceSkill> itemReinforceSkill) {
		this.itemReinforceSkill = itemReinforceSkill;
	}
	
}
