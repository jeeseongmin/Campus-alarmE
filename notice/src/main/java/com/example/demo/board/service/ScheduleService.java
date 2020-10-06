package com.example.demo.board.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.example.demo.board.domain.ScheduleVO;
import com.example.demo.board.mapper.ScheduleMapper;

@Service("com.example.demo.board.service.ScheduleService")
public class ScheduleService {
	@Resource(name="com.example.demo.board.mapper.ScheduleMapper")
    ScheduleMapper mScheduleMapper;
	
    public List<ScheduleVO> scheduleService(String status) throws Exception{
    	if(status.equals("current"))
    		return mScheduleMapper.scheduleList_current();
    	else 
    		return mScheduleMapper.scheduleList_past();
    }
    
    

}
