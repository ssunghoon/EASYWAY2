package org.easyway.service.member;

import org.easyway.domain.member.MemberVO;
import org.easyway.mapper.member.MemberMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import lombok.extern.log4j.Log4j;


@Service
@Log4j
public class MemberServiceImpl implements MemberService {

	//@Autowired	
	//private MemberMapper mapper;
	
	@Override
	public void join(MemberVO member) {
		log.info("join.........." + member);
	//	mapper.insertMember(member);
	}
}
