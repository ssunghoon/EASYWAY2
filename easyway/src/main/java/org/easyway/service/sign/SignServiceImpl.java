package org.easyway.service.sign;

import java.util.List;

import org.easyway.domain.sign.BasicSignVO;
import org.easyway.domain.sign.Criteria;
import org.easyway.domain.sign.SignVO;
import org.easyway.domain.sign.SpendSignVO;
import org.easyway.domain.sign.VacationSignVO;
import org.easyway.mapper.sign.SignMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class SignServiceImpl implements SignService {
	
	@Autowired
	private SignMapper mapper;
	
/*	@Override
	public void add(SignVO sign) {
		log.info("add..............." + sign);
		mapper.insert(sign);
	}*/
	
	@Override
	public void applySpend(SpendSignVO spend, SignVO sign) {
		log.info("addSpend..............." + spend);
		
		mapper.insert(sign);
		// sign 테이블의 signId를 넣어줌
		long signId = sign.getSignId();
		spend.setSignId(signId);
		mapper.insertSpend(spend);
		
	}
	

	@Override
	public void applyBasic(BasicSignVO basic, SignVO sign) {
		log.info("addBasic..............." + basic);
		mapper.insert(sign);
		// sign 테이블의 signId를 넣어줌
		long signId = sign.getSignId();
		basic.setSignId(signId);
		mapper.insertBasic(basic);
		
	}
	
	@Override
	public void applyVacation(VacationSignVO vacation, SignVO sign) {
		log.info("addVacation..............." + vacation);
		mapper.insert(sign);
		// sign 테이블의 signId를 넣어줌
		long signId = sign.getSignId();
		vacation.setSignId(signId);
		mapper.insertVacation(vacation);
	}
	
	/*@Override
	public List<SignVO> getListDraft() {
		log.info("getDraftList..............");
		
		return mapper.getListDraft();
	}*/
	
	@Override
	public List<SignVO> getList(Criteria cri){
		log.info("getList with Criteria" + cri);
		return mapper.getListWithPaging(cri);
	}
	
	// 기안함 상세(기본기안서)
	@Override
	public BasicSignVO getDraftBasic(Long signId, Long signFormId){
									
		log.info("getDraftBasic............... signId = " + signId + "signFormId = " + signFormId );
		return mapper.getDraftBasic(signId);

	}
	// 기안함 상세(지출결의서)
	@Override
	public SpendSignVO getDraftSpend(Long signId, Long signFormId){
									
		log.info("getDraftSpend............... signId = " + signId + "signFormId = " + signFormId );
		return mapper.getDraftSpend(signId);

	}
	// 기안함 상세(휴가신청서)
	@Override
	public VacationSignVO getDraftVacation(Long signId, Long signFormId){
									
		log.info("getDraftBasic............... signId = " + signId + "signFormId = " + signFormId );
		return mapper.getDraftVacation(signId);

	}
	
}
