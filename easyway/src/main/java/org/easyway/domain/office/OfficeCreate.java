package org.easyway.domain.office;



import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@AllArgsConstructor
@NoArgsConstructor
public class OfficeCreate{
	
	private int oc_id;
	private int member_id;
	private int office_id;
	
}
