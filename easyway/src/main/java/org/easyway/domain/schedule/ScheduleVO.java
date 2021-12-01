package org.easyway.domain.schedule;

import java.io.Serializable;
import java.sql.Date;
import java.sql.Time;

import lombok.Data;

@Data
public class ScheduleVO implements Serializable{

	private Long scheduleId; //Long 과 int둘다 문제없음
	private Long employeeId;
	private String scheduleTitle;
	private Date scheduleStart; //기존중간에는 날짜를 String<->Date으로했음
	private Date scheduleEnd; //sql.date가 정답 time도 디비 새로운 컬럼생성하여 테스트해보기(알람)
	private String scheduleContent;
	private String scheduleImportance; 
	private String schedulePrivate;
	

	
}
