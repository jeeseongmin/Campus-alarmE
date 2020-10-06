package com.example.demo.board.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.example.demo.board.domain.BoardVO;
import com.example.demo.board.domain.TagVO;
import com.example.demo.board.mapper.BoardMapper;

@Service("com.example.demo.board.service.BoardService")
public class BoardService {
	
	@Resource(name="com.example.demo.board.mapper.BoardMapper")
    BoardMapper mBoardMapper;
    
    public List<BoardVO> boardListService() throws Exception{
        
        return mBoardMapper.boardList();
    }

    public List<BoardVO> postService(int post_id) throws Exception{
        
        return mBoardMapper.boardPost(post_id);
    }

    /* Tags */
    public List<String> tagListNameService() throws Exception{
        
        return mBoardMapper.tagNameList();
    }
    
    public int tagNameDeleteService(String tag_name) throws Exception{
        
        return mBoardMapper.tagNameDelete(tag_name);
    }
    
}
