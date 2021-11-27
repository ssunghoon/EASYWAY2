package org.easyway.mapper.member;

import java.util.List;

import org.easyway.domain.member.MemberVO;
import org.easyway.domain.office.OfficeVO;



public interface MemberMapper {
	
	public Long readEmail(String tempEmail);	
	public int insert(MemberVO member);
	//public List<OfficeVO> getList();
	public MemberVO login(String memberEmail);
//	Office detailOffice(int seq);
//	int deleteOffice(int seq);	

}
