package org.easyway.service.attendance;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;

import org.easyway.domain.attendance.AttendanceVO;
import org.easyway.mapper.attendance.AttendanceMapper;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class AttendanceTest {

	@Autowired
	 private AttendanceService service;
//	private AttendanceMapper mapper;

	@Test
	 public void testMain(){
	 service.main();
	 }

//	public void testMain() {
//		AttendanceVO attendance = new AttendanceVO();
//		//attendance.setEmployee_id(1);
//
//		Timestamp timestamp = new Timestamp(System.currentTimeMillis());
//		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
//		
//		attendance.setAttendance_start(sdf.format(timestamp));
//		attendance.setAttendance_out(sdf.format(timestamp));
//		attendance.setAttendance_end(sdf.format(timestamp));
//		
//		log.info("현재시각 : " + sdf.format(timestamp));
//		
//		mapper.add(attendance);
//
//	}

}
