package org.easyway.domain.office;

import java.io.Serializable;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class AnnualVacation {
	
	private int av_id;
	private int av_annual;//몇년차인지
	private int office_id;	
}
