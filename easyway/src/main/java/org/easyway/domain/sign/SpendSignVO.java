package org.easyway.domain.sign;


import java.io.Serializable;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class SpendSignVO implements Serializable{
	
	private long singSpendId; //SS_ID
	private long signFormId; // SF_ID
	private String signSpendRange; // SS_RANGE
	private String signSpendImportance; // SS_IMPORTANCE
	private long signId; // SIGN_ID
	private String signTitle; // SIGN_TITLE
	private String signContent; // SIGN_CONTENT
}
