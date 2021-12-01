package org.easyway.mapper.notice;

import java.util.List;

import org.easyway.domain.notice.NoticeVO;

public interface NoticeMapper {
	
	public int insert(NoticeVO notice);

	public List<NoticeVO> getListAll();
	
	public NoticeVO read(int obId);
	
//	public int update(NoticeVO notice);
	public boolean update(NoticeVO notice);

	public boolean delete(int obId);

	
}
