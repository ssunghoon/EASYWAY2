package org.easyway.mapper.member;

import java.util.List;

import org.easyway.domain.member.MemberVO;
import org.easyway.domain.office.OfficeVO;



public interface MemberMapper {
	
	public int join(MemberVO member);
	public List<OfficeVO> listOffice();
	public MemberVO login(String member_eamil);
//	Office detailOffice(int seq);
//	int deleteOffice(int seq);	

}
