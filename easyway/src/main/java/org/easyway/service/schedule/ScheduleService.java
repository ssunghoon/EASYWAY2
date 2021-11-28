package org.easyway.service.schedule;

import java.util.List;

import org.easyway.domain.schedule.ScheduleVO;

public interface ScheduleService {

		public List<ScheduleVO> scheduleList();//일정목록
		
		public void register(ScheduleVO schedule);//일정생성
	
//	public void modify(ScheduleVO schedule);
//	
//	public void delete();
//
//	public void detail();

}