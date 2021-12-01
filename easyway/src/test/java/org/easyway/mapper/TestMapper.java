package org.easyway.mapper;

import org.easyway.domain.notice.NoticeVO;
import org.easyway.mapper.notice.NoticeMapper;
import org.easyway.service.notice.NoticeService;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
@WebAppConfiguration
public class TestMapper {

	@Setter(onMethod_ = {@Autowired} )
//	 private NoticeMapper mapper;
	private NoticeService service;
//	private WebApplicationContext ctx;
//	private MockMvc mockMvc;

//@Before
//	public void setup(){
//		this.mockMvc = MockMvcBuilders.webAppContextSetup(ctx).build();
//	}
//	
//	@Test
//	public void testList() throws Exception{
//		log.info(mockMvc.perform(MockMvcRequestBuilders.get("/notice/list"))
//				.andReturn()
//				.getModelAndView()
//				.getModelMap());
//	}
//	 @Test
//	 public void testInsert() {
//	 NoticeVO notice = new NoticeVO();
//	 notice.setDepartmentId(2);
//	 notice.setEmployeeId(4);
//	 notice.setObTitle("111");
//	 notice.setObContent("333");
//	 notice.setObFilePath("없음");
//	 notice.setObView(1);
//	
//	 mapper.insert(notice);
//	
//	 log.info(notice);
//	 }


//	@Test
//	public void listSTest() {
////		service.getList().forEach(notice -> log.info(notice));
//		service.getListAll().forEach(notice -> log.info(notice));
//	}
	
	 @Test
	 public void testupdate() {
log.info("게시글을 수정하는 테스트를 진행하겠습니다");
NoticeVO notice = new NoticeVO();
notice.setObId(96);
notice.setObTitle("96번 테스트글입니다");
notice.setObContent("테스트중");
notice.setObFixedCheck("Y");
notice.setObFilePath("성공");
log.info(service.modify(notice));
//boolean count = service.modify(notice);
//log.info("수정이 완료됨" + count);
	 }
	
//	@Test
//	public void testCtLmodf()throws Exception{
//		String resultpage = mockMvc
//				.perform(MockMvcRequestBuilders.post("/notice/noticemodify")
//				.param("obId", "89")
//				.param("obTitle", "테스트로바꾼 제목")
//				.param("obContent", "테스트로 바꾼 내용")
//				.param("obFilePath", "바꾼 파일")
//				.param("obFixedCheck", "Y"))
//				.andReturn().getModelAndView().getViewName();
//		log.info(resultpage);
//	}
	
	@Test
	public void testDelT(){
		log.info("게시글 삭제");
		int obId = 73;
		service.remove(obId);
	}
}
