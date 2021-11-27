package org.easyway.service.office;

import java.util.List;
import java.util.Random;

import org.easyway.domain.member.MemberVO;
import org.easyway.domain.office.AnnualVacation;
import org.easyway.domain.office.OfficeCreate;
import org.easyway.domain.office.OfficeVO;
import org.easyway.domain.office.PositionVO;
import org.easyway.mapper.member.MemberMapper;
import org.easyway.mapper.office.OfficeMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.extern.log4j.Log4j;


@Service
@Log4j
public class OfficeServiceImpl implements OfficeService {

	@Autowired
	private OfficeMapper mapper;
	
	@Override
	public List<OfficeVO> getList(Long memberId) {
		return mapper.getList(memberId);
	}

	@Transactional
	@Override
	public int create(String officeName, Long memberId) {
		
		OfficeVO saveOffice = new OfficeVO();
		
		
		String officeCode = randomCode(officeName);//랜덤코드 생성 메서드 실행
		
		saveOffice.setOfficeName(officeName);
		saveOffice.setOfficeCode(officeCode.toString());
		
		mapper.insertOffice(saveOffice);
		Long saveOfficeId = saveOffice.getOfficeId();
		log.info(saveOfficeId);
		
		return createDefaultTable(saveOfficeId, memberId);//오피스 생성시 기본 테이블들 값 생성하는 메서드 실행 후 성공하면 1반환
	}
	
	private String randomCode(String officeName){
		
		Random rnd = new Random();

		StringBuffer officeCode = new StringBuffer();

		for (int i = 0; i < 10; i++) {
			if (rnd.nextBoolean()) {// rnd.nextBoolean() 는 랜덤으로 true, false 를 리턴. true일 시 랜덤 한 소문자를, false 일 시 랜덤 한 숫자를
				officeCode.append((char)((int) (rnd.nextInt(26)) + 97));
			} else {
				officeCode.append((rnd.nextInt(10)));
			}
		}//오피스코드 랜덤으로 숫자+영어 10자
		return officeCode.toString();
	}
	
	private int createDefaultTable(Long saveOfficeId, Long memberId){
		
		String[] defaultPositions = {"대표이사", "이사", "부장", "차장", "과장", "대리","사원"};
		PositionVO position = new PositionVO();
		AnnualVacation annualVacation = new AnnualVacation();
		OfficeCreate officeCreateTable = new OfficeCreate();
		int defualtVacation = 15;
		int count = 0;//휴가일수 2년마다 하루씩 증가 하기 위해 
		
		//오피스 생성부분
		officeCreateTable.setOfficeId(saveOfficeId);
		officeCreateTable.setMemberId(memberId);
		mapper.insertOfficeCreate(officeCreateTable);
		
		//오피스별 직위 테이블 생성
		for (int i = 0; i < defaultPositions.length; i++) {
			position.setOfficeId(saveOfficeId);
			position.setPositionLevel(i+1);
			position.setPositionName(defaultPositions[i]);
			mapper.insertPosition(position);
		}
		
		//오피스별 연차 테이블 생성
		for (int i = 0; i < 15; i++) {
			annualVacation.setAnnual(i+1);
			annualVacation.setOfficeId(saveOfficeId);
			
			if(count++ < 1){
				annualVacation.setVacations(defualtVacation);
				defualtVacation += 2;
			}else{
				annualVacation.setVacations(defualtVacation);
				count = 0;
			}
			
			mapper.insertAnnualVacation(annualVacation);
		}
		return 1;
	}
}
