package org.easyway.service.member;

import org.easyway.domain.member.MemberVO;
import org.easyway.mapper.member.MemberMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import lombok.extern.log4j.Log4j;


@Service
@Log4j
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberMapper mapper;
	
	@Autowired
	private PasswordEncoder pwencoder;
	
	@Override
	public int register(MemberVO member) {
		log.info("join..........service" + member);
		if(member.getMemberAuth() == null){
			member.setMemberAuth("ROLE_MEMBER");
		}
		String originPw = member.getMemberPassword();
		member.setMemberPassword(pwencoder.encode(originPw));
		return mapper.insert(member);
	}
	
	@Override
	public Long checkEmail(String tempEmail) {
		
		return mapper.readEmail(tempEmail);
	}
}
