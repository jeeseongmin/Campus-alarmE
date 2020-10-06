package com.example.demo.board.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.example.demo.board.domain.ScheduleVO;

@Repository("com.example.demo.board.mapper.ScheduleMapper")
public interface ScheduleMapper {
	// 스케쥴 목록1
	public List<ScheduleVO> scheduleList_current() throws Exception;
	
	public List<ScheduleVO> scheduleList_past() throws Exception;

}
