package org.easyway.mapper.sign;

import java.util.List;

import org.easyway.domain.sign.BasicSignVO;
import org.easyway.domain.sign.Criteria;
import org.easyway.domain.sign.SignVO;
import org.easyway.domain.sign.SpendSignVO;
import org.easyway.domain.sign.VacationSignVO;

public interface SignMapper {
	
	public int insert(SignVO sign);
	
	// 기본 기안서 등록
	public int insertBasic(BasicSignVO basic);
	
	// 지출 결의서 등록
	public int insertSpend(SpendSignVO spend);
	
	// 휴가 신청서 등록
	public int insertVacation(VacationSignVO vacation);	
	
	// 기안함 목록
	public List<SignVO> getListDraft();
	
	// 페이징 
	public List<SignVO> getListWithPaging(Criteria cri);
	
	// 기안함 상세(기본기안서)
	public BasicSignVO getDraftBasic(Long signId);
	// 기안함 상세(지출결의서)
	public SpendSignVO getDraftSpend(Long signId);
	// 기안함 상세(휴가신청서)
	public VacationSignVO getDraftVacation(Long signId);
}
