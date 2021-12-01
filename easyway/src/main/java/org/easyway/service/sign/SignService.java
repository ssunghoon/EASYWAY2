package org.easyway.service.sign;

import java.util.List;

import org.easyway.domain.sign.BasicSignVO;
import org.easyway.domain.sign.Criteria;
import org.easyway.domain.sign.EmployeeVO;
import org.easyway.domain.sign.SignVO;
import org.easyway.domain.sign.SpendSignVO;
import org.easyway.domain.sign.VacationSignVO;

public interface SignService {
	
//	public void add(SignVO sign);
	
	// 지출결의서 등록
	public void applySpend(SpendSignVO spend, SignVO sign);
	
	// 기본기안서 등록
	public void applyBasic(BasicSignVO basic, SignVO sign);
	
	// 휴가신청서 등록
	public void applyVacation(VacationSignVO vacation,SignVO sign);

//	public List<SignVO> getListDraft();
	
	// 기안함 목록
	public List<SignVO> getListDraft(Criteria cri);
	
	// 기안함 상세
	public BasicSignVO getDraftBasic(Long signId,Long signFormId);
	public SpendSignVO getDraftSpend(Long signId,Long signFormId);
	public VacationSignVO getDraftVacation(Long signId,Long signFormId);
	
	// 기안 갯수
	public int getTotal(Criteria cri);
	
	// 직원 목록
	public List<EmployeeVO> getListEmployee();
}
