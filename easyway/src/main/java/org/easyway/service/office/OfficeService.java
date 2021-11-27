package org.easyway.service.office;

import java.util.List;

import org.easyway.domain.member.MemberVO;
import org.easyway.domain.office.OfficeVO;

public interface OfficeService {
	public List<OfficeVO> getList(Long memberId);
	public int create(String officeName, Long memberId);
}
