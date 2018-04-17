package kr.co.bitnews.mapper;

import java.util.List;
import kr.co.bitnews.domain.Board;
import kr.co.bitnews.domain.BoardFile;
import kr.co.bitnews.domain.Comment;

public interface UsedBoardMapper {

	List<Board> selectBoard();
	Board selectBoardByNo(int no);
	void insertBoard(Board board);
	void updateBoard(Board board);
	void deleteBoard(int no);
	void updateBoardViewCnt(int no);
	
	// 댓글 파트
	void insertComment(Comment comment);
	List<Comment> selectCommentByNo(int findNo);
	void deleteComment(int commentNo);
	void updateComment(Comment comment);
	
	// 첨부파일
	void insertBoardFile(BoardFile file);
	List<BoardFile>selectBoardFileByNo(int no);

}
