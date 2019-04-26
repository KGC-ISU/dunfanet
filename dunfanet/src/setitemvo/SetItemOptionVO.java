package setitemvo;

import java.util.List;

public class SetItemOptionVO {
	private int optionNo;
	private String explain;
	
	private List<SetStatusVO> status;

	public int getOptionNo() {
		return optionNo;
	}

	public void setOptionNo(int optionNo) {
		this.optionNo = optionNo;
	}

	public String getExplain() {
		return explain;
	}

	public void setExplain(String explain) {
		this.explain = explain;
	}

	public List<SetStatusVO> getStatus() {
		return status;
	}

	public void setStatus(List<SetStatusVO> status) {
		this.status = status;
	}
}
