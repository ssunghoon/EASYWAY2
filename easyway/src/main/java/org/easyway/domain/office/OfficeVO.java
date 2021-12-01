package org.easyway.domain.office;



import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class OfficeVO{
	
	private int office_id;
	private String office_name;
	private String office_code;
}
