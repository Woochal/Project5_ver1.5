package com.example.Service;

import com.example.bean.BoardVO;

import java.util.List;

public interface BoardService {
    public int insertBoard(BoardVO vo);
    public int deleteBoard(int assignNum);
    public int updateBoard(BoardVO vo);
    public BoardVO getBoard(int assignNum);
    public List<BoardVO> getBoardList();
}
