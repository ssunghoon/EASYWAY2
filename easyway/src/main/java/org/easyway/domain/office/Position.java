package org.easyway.domain.office;
import java.io.Serializable;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@AllArgsConstructor
@NoArgsConstructor
public class Position{
	
	private Long position_id;
	private String position_name;
	private int office_id;
}
