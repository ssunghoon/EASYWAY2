package org.easyway.service;

import static org.junit.Assert.assertNotNull;

import org.easyway.domain.project.Project;
import org.easyway.service.project.ProjectService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class ProjectServiceTests {
	
	@Setter(onMethod_= @Autowired)
	private ProjectService service;
	
	@Test
	public void test() {
		
		// insert 테스트
//		ProjectVO project = new ProjectVO();
//		project.setProject_name("홍길동111111111");
//		project.setProject_content("홍길동111111111");
//		project.setProject_start("2021-11-19");
//		project.setProject_end("2021-12-31");
//		
//		service.register(project);
//		
//		log.info("생성된 게시물의 번호" + project.getProject_id());
		
		// Project list 테스트
//		service.list().forEach(project ->log.info(project));
		
		// Pb_menu list 테스트
//		service.detail(21L);
		
//		service.insertPbm(21L);
		
		
		
		
	}
	
	

}
