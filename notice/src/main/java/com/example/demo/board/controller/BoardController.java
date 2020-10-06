package com.example.demo.board.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.board.service.BoardService;
import com.example.demo.board.service.ScheduleService;

@Controller
public class BoardController {
	
	@Resource(name="com.example.demo.board.service.BoardService")
    BoardService mBoardService;
    
	@Resource(name="com.example.demo.board.service.ScheduleService")
    ScheduleService mScheduleService;
	
// -------------------------------main------------------------------
    @RequestMapping("/index")
    private String boardList(Model model) throws Exception{
        model.addAttribute("list", mBoardService.boardListService());
        return "index";
    }
    
    
// --------------------------------schedule------------------------------
	@RequestMapping("/schedule")
	private String boardSchedule(Model model,
			@RequestParam(value = "status", required=false, defaultValue = "current")String status) throws Exception {
        model.addAttribute("list", mScheduleService.scheduleService(status));
        model.addAttribute("status", status);
		return "schedule";
	}

// ---------------------------------detail--------------------------------
	
		@RequestMapping("/detail/{post_id}")
	private String boardDetail_before(Model model, @PathVariable int post_id) throws Exception {
		System.out.println(post_id);
        model.addAttribute("list", mBoardService.postService(post_id));
        //mBoardService.postService(post_id);
		return "detail";
	}
		
		
//	-----------------------------------tag------------------------------
	@RequestMapping("/tagPage")
	   private String tagPage(Model model) throws Exception {
	      
	      model.addAttribute("tagNameList", mBoardService.tagListNameService()); //error?
	      
	      return "tagPage";
	   }
	
	    @RequestMapping("/tagPage/{tag_name}") 
	    private String tagNameDelete(@PathVariable String tag_name) throws Exception {
	            
	       mBoardService.tagNameDeleteService(tag_name);
	            
	        return "redirect:/tagPage";
	    }
}
