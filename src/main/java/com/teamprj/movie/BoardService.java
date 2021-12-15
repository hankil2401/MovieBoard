package com.teamprj.movie;

import java.util.List;

public interface BoardService {
	public int insertMovie(MovieVO vo);
	public int deleteMovie(int id);
	public int updateMovie(MovieVO vo);
	public MovieVO getMovie(int seq);
	public List<MovieVO> getMovieList();
}