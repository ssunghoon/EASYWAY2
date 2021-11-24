package org.easyway.mapper;

import org.easyway.mapper.office.OfficeMapper;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;


@RunWith(SpringRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
@Log4j
public class OfficeMapperTest {

	 @Setter(onMethod_ = @Autowired)
	  private OfficeMapper mapper;
	
	 
	 //다시해야함 페스워드 인코더랑 이것저것 해줘야함.
	@Test
	public void test() {
		int on = mapper.add("동혁이의 회사");
	    
		if(on > 0){
			log.info("seucess");
		}else{
			log.info("fail");
		}	   
	}

}
