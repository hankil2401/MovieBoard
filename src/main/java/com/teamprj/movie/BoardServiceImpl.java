package com.teamprj.movie;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BoardServiceImpl implements BoardService {
	
	@Autowired
	MovieDAO movieDAO;
	
	@Override
	public int insertMovie(MovieVO vo) {
		return movieDAO.insertMovie(vo);
	}
	@Override
	public MovieVO getMovie(int seq) {
		return movieDAO.getMovie(seq);
	}
	@Override
	public List<MovieVO> getMovieList() {
		return movieDAO.getMovieList();
	}
	@Override
	public int deleteMovie(int id) {
		return movieDAO.deleteMovie(id);
	}
	@Override
	public int updateMovie(MovieVO vo) {
		return movieDAO.updateMovie(vo);
	}

}
