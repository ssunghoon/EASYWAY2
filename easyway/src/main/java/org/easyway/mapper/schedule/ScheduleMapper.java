package org.easyway.mapper.schedule;

import java.util.List;

import org.easyway.domain.schedule.ScheduleVO;

public interface ScheduleMapper {
	//@Select("select * from schedule")
		public List<ScheduleVO> getList();//일정목록확인
		
		public int insert(ScheduleVO schedule);//일정생성
		
//		public int modify(Long scheduleId);
//		
//		public int read(Long scheduleId);
}
