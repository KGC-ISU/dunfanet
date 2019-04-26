package setitemvo;

import java.util.List;

public class SetItemInfo {
	private String setItemId;
	private String setItemName;
	
	private List<SetItemsVO> setItems;
	private List<SetItemOptionVO> setItemOption;
	
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
	public List<SetItemsVO> getSetItems() {
		return setItems;
	}
	public void setSetItems(List<SetItemsVO> setItems) {
		this.setItems = setItems;
	}
	public List<SetItemOptionVO> getSetItemOption() {
		return setItemOption;
	}
	public void setSetItemOption(List<SetItemOptionVO> setItemOption) {
		this.setItemOption = setItemOption;
	}
	
	

	
	
}
