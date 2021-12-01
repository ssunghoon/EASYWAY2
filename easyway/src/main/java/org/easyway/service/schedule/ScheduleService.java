package org.easyway.service.schedule;

import java.util.List;

import org.apache.ibatis.javassist.expr.NewArray;
import org.easyway.domain.schedule.ScheduleVO;

public interface ScheduleService {

		public List<ScheduleVO> getListDo();//일정목록
		
		public void register(ScheduleVO schedule);//일정등록성하기
	
//		public void modify(Long scheduleId);//일정수정
//		
//		public void detail(Long scheduleId);//상세보기
//	
//	public void remove();//일정제거
//

		

}