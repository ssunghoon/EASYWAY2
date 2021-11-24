package org.easyway.mapper.office;

import java.util.List;

import org.easyway.domain.office.OfficeCreate;
import org.easyway.domain.office.OfficeVO;

public interface OfficeMapper {
	
	public int add(String officeName);
	public int insertOfficeCreate(OfficeCreate oc);
	public List<OfficeVO> list(Long member_id);
	public OfficeVO detailOffice(int seq);
	public int deleteOffice(int seq);	

}
