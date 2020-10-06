package com.example.demo.board.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.example.demo.board.domain.BoardVO;
import com.example.demo.board.domain.TagVO;

@Repository("com.example.demo.board.mapper.BoardMapper")
public interface BoardMapper {

	/* Main */
	//게시글 개수
	public int boardCount() throws Exception;
	
	//게시글 목록
	public List<BoardVO> boardList() throws Exception;
	
	// 포스트 목록
	public List<BoardVO> boardPost(int post_id) throws Exception;
	/* Tags */

    //태그 이름 목록
    public List<String> tagNameList() throws Exception;
    
    //테그 이름 삭제  
    public int tagNameDelete(String tag_name) throws Exception;
    
    
	
}
