package org.easyway.service.office;

import java.util.List;

import org.easyway.domain.member.MemberVO;
import org.easyway.domain.office.OfficeVO;
import org.easyway.mapper.member.MemberMapper;
import org.easyway.mapper.office.OfficeMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import lombok.extern.log4j.Log4j;


@Service
@Log4j
public class OfficeServiceImpl implements OfficeService {

	@Autowired
	private OfficeMapper mapper;
	
	@Override
	public List<OfficeVO> list(Long member_id) {
		return mapper.list(member_id);
	}

	@Override
	public int add(String officeName) {
		
		return mapper.add(officeName);
	}
}
