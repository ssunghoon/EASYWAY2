package org.easyway.mapper;

import java.util.List;

import org.easyway.domain.schedule.ScheduleVO;
import org.easyway.mapper.schedule.ScheduleMapper;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration ("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class ScheduleMapperTests {
	
	@Setter(onMethod_ = @Autowired)
	private ScheduleMapper mapper;
	
	@Test
	public void test(ScheduleVO schedule){
//		List<ScheduleVO> vo = mapper.scheduleList();
		
		ScheduleVO vo = new ScheduleVO();
		
//		vo.setSchedule_title("testtitle");
//		vo.setSchedule_
		
		log.info(mapper);
		mapper.insert(schedule);
	}
	
	
}
