package org.easyway.domain.schedule;

import java.io.Serializable;
import java.sql.Date;

import lombok.Data;

@Data
public class ScheduleVO implements Serializable{

	private Long schedule_id; //Long 과 int둘다 문제없음
	private Long employee_id;
	private String schedule_title;
	private Date schedule_start; //기존중간에는 날짜를 String<->Date으로했음
	private Date schedule_end; //sql.date가 정답
	private String schedule_content;
	private String schedule_importance; 
	private String schedule_private;
	
}
