package kosta.mvc.vo;

import java.sql.Timestamp;

public class EvTime {

	private int evNo;
	private Timestamp evCreateTime;
	private Timestamp evStartTime;
	private Timestamp evEndTime;
	private Timestamp evBookStartTime;
	private Timestamp evBookEndTime;
	
	public EvTime(){}

	/**
	 * 이벤트 시간목록 등록용
	 * @param evStartTime
	 * @param evEndTime
	 * @param evBookStartTime
	 * @param evBookEndTime
	 */
	public EvTime(Timestamp evStartTime, Timestamp evEndTime, Timestamp evBookStartTime, Timestamp evBookEndTime) {
		super();
		this.evStartTime = evStartTime;
		this.evEndTime = evEndTime;
		this.evBookStartTime = evBookStartTime;
		this.evBookEndTime = evBookEndTime;
	}

	public EvTime(int evNo, Timestamp evCreateTime, Timestamp evStartTime, Timestamp evEndTime, Timestamp evBookStartTime,
			Timestamp evBookEndTime) {
		this(evStartTime, evEndTime, evBookStartTime, evBookEndTime);
		this.evNo = evNo;
		this.evCreateTime = evCreateTime;

	}

	public int getEvNo() {
		return evNo;
	}

	public void setEvNo(int evNo) {
		this.evNo = evNo;
	}

	public Timestamp getEvCreateTime() {
		return evCreateTime;
	}

	public void setEvCreateTime(Timestamp evCreateTime) {
		this.evCreateTime = evCreateTime;
	}

	public Timestamp getEvStartTime() {
		return evStartTime;
	}

	public void setEvStartTime(Timestamp evStartTime) {
		this.evStartTime = evStartTime;
	}

	public Timestamp getEvEndTime() {
		return evEndTime;
	}

	public void setEvEndTime(Timestamp evEndTime) {
		this.evEndTime = evEndTime;
	}

	public Timestamp getEvBookStartTime() {
		return evBookStartTime;
	}

	public void setEvBookStartTime(Timestamp evBookStartTime) {
		this.evBookStartTime = evBookStartTime;
	}

	public Timestamp getEvBookEndTime() {
		return evBookEndTime;
	}

	public void setEvBookEndTime(Timestamp evBookEndTime) {
		this.evBookEndTime = evBookEndTime;
	}
	
	

}
