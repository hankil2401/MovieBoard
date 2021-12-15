package com.teamprj.movie;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class BoardController {	
	
	@Autowired
	BoardService boardService;
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/board/list", method = RequestMethod.GET)
	public String boardlist(Model model) {
		model.addAttribute("list", boardService.getMovieList());
		return "posts";
	}
	
	@RequestMapping(value="/board/add", method = RequestMethod.GET)
	public String addPost() {
		return "addpostform";
	}
	@RequestMapping(value = "/board/addok", method = RequestMethod.POST)
	public String addPostOK(MovieVO vo) {
		int i = boardService.insertMovie(vo);
		if(i==0)
			System.out.println("영화 추가 실패 ");
		else
			System.out.println("영화 추가 성공!!!");
		
		return "redirect:list";
	}
	
	@RequestMapping(value = "/board/editform/{id}", method = RequestMethod.GET)
	public String editPost(@PathVariable("id") int id, Model model) {
		MovieVO boardVO = boardService.getMovie(id);
		model.addAttribute("boardVO", boardVO);
		return "editform";
	}
	
	@RequestMapping(value = "/board/editok", method = RequestMethod.POST)
	public String editPostOK(MovieVO vo) {
		int i = boardService.updateMovie(vo);
		if(i==0)
			System.out.println("영화 수정 실패 ");
		else
			System.out.println("영화 수정 성공!!!");
		
		return "redirect:list";
	}
	
	@RequestMapping(value = "/board/deleteok/{id}", method = RequestMethod.GET)
	public String deletePost(@PathVariable("id") int id) {
		int i = boardService.deleteMovie(id);
		if(i==0)
			System.out.println("영화 삭제 실패" );
		else
			System.out.println("영화 삭제 성공!!!");
		
		return "redirect:../list";
	}
}
