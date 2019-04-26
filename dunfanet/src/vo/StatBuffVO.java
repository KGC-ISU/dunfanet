package vo;

import java.util.List;

public class StatBuffVO {
	
	private String name;
	private int level;
	
	private List<StatBuffStatusVO> status;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getLevel() {
		return level;
	}

	public void setLevel(int level) {
		this.level = level;
	}

	public List<StatBuffStatusVO> getStatus() {
		return status;
	}

	public void setStatus(List<StatBuffStatusVO> status) {
		this.status = status;
	}

}
