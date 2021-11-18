package org.easyway.mapper.member;

import java.util.List;

import org.easyway.domain.member.MemberVO;
import org.easyway.domain.office.OfficeVO;



public interface MemberMapper {
	
	public void insertMember(MemberVO member);
	public MemberVO loginMember(String email, String password);
	public List<OfficeVO> listOffice();
//	Office detailOffice(int seq);
//	int deleteOffice(int seq);	

}
