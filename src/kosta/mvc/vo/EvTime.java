package kosta.mvc.vo;

public class EvTime {
	private int evNo;
	private long evCreateTime;
	private long evStartTime;
	private long evEndTime;
	private long evBookStartTime;
	private long evBookEndTime;
	
	public EvTime(){}

	/**
	 * 이벤트 시간목록 등록용
	 * @param evStartTime
	 * @param evEndTime
	 * @param evBookStartTime
	 * @param evBookEndTime
	 */
	public EvTime(long evStartTime, long evEndTime, long evBookStartTime, long evBookEndTime) {
		super();
		this.evStartTime = evStartTime;
		this.evEndTime = evEndTime;
		this.evBookStartTime = evBookStartTime;
		this.evBookEndTime = evBookEndTime;
	}


	public EvTime(int evNo, long evCreateTime, long evStartTime, long evEndTime, long evBookStartTime,
			long evBookEndTime) {
		this(evStartTime, evEndTime, evBookStartTime, evBookEndTime);
		this.evNo = evNo;
		this.evCreateTime = evCreateTime;
	}
	
	
}
