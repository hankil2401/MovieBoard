package com.teamprj.movie;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MovieDAO {
	
	@Autowired
	SqlSession sqlSession;
	
	public int insertMovie(MovieVO vo) {
		int result = sqlSession.insert("Board.insertMovie", vo);
		return result;
	}
	public MovieVO getMovie(int seq) {
		MovieVO one = sqlSession.selectOne("Board.getMovie", seq);
		return one;
	}
	public List<MovieVO> getMovieList() {
		List<MovieVO> list = sqlSession.selectList("Board.getMovieList");
		return list;
	}
	public int deleteMovie(int id) {
		int del = sqlSession.delete("Board.deleteMovie", id);
		return del;
	}

	public int updateMovie(MovieVO vo) {
		int result = sqlSession.update("Board.updateMovie", vo);
		return result;
	}
}
