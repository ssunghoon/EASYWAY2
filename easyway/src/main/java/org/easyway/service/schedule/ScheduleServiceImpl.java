package org.easyway.service.schedule;

import java.util.List;

import org.easyway.domain.schedule.ScheduleVO;
import org.easyway.mapper.schedule.ScheduleMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class ScheduleServiceImpl implements ScheduleService {

	@Autowired
	private ScheduleMapper mapper;

	@Override
	public List<ScheduleVO> getListDo() {
		log.info("list......");
		return mapper.getList();
	}

	@Override
	public void register(ScheduleVO schedule) {
		log.info("register........");
		mapper.insert(schedule);
	}
//	@Override
//	public void modify(Long scheduleId) {
//		log.info("modify........");
//		mapper.modify(scheduleId);
//	}
//
//	@Override
//	public void detail(Long scheduleId) {
//		log.info("detail");
//		mapper.read(scheduleId);
//		
//	}
	
	
}