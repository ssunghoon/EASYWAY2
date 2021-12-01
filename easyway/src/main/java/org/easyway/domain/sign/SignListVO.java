package org.easyway.domain.sign;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class SignListVO {
	private long signListId; // SL_ID
	private long employeeId; //EMPLOYEE_ID
	private long signId; // SIGN_ID
	private String signListOrder; // SL_ORDER
	private String signListCheck; // SL_CHECK
	

}
