package org.easyway.mapper.schedule;

import java.util.List;

import org.easyway.domain.schedule.ScheduleVO;

public interface ScheduleMapper {
	//@Select("select * from schedule")
		public List<ScheduleVO> scheduleList();//일정목록확인
		
		public int register(ScheduleVO schedule);//일정생성
}
