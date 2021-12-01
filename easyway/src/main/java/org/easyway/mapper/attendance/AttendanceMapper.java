package org.easyway.mapper.attendance;

import org.easyway.domain.attendance.AttendanceVO;

public interface AttendanceMapper {

	public void add(AttendanceVO attendance);
	public void updateAttendanceOut(AttendanceVO attendance);
	public void updateAttendanceEnd(AttendanceVO attendance);
	public AttendanceVO main();
//	
}
