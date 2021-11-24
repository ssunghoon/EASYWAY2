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
	public int join(MemberVO member) {
		log.info("join..........service" + member);
		if(member.getMember_auth() == null){
			member.setMember_auth("ROLE_MEMBER");
		}
		String originPw = member.getMember_pw();
		member.setMember_pw(pwencoder.encode(originPw));
		return mapper.join(member);
	}
}
