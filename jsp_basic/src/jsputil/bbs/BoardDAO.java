 package jsputil.bbs;
 
 import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
  public class BoardDAO {
    
 	private static BoardDAO instance = new BoardDAO();
    
    public static BoardDAO getInstance() {
        return instance;
    }
     
    private BoardDAO() {
    }
    
    private Connection getConnection() throws Exception {
      Context initCtx = new InitialContext();
      Context envCtx = (Context) initCtx.lookup("java:comp/env");
      DataSource ds = (DataSource)envCtx.lookup("jdbc/pool01"); 
      return ds.getConnection();
    }
 
    public void insertArticle(BoardVO article) 
    throws Exception {
    	Connection conn = null;
        PreparedStatement pstmt = null;
 		ResultSet rs = null;

    }
    
	public int getArticleCount()
    throws Exception {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        int x=0;
		return x;
    }

	public List<BoardVO> getArticles(int start, int end)
 throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<BoardVO> articleList = null;
		return articleList;
    }
 
    public BoardVO getArticle(int num)
    throws Exception {
        
    	   Connection conn = null;
           PreparedStatement pstmt = null;
           ResultSet rs = null;
           BoardVO article=null;
   		return article;
    }

    public BoardVO updateGetArticle(int num) throws Exception {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        BoardVO article=null;
		return article;
    }

// x -1 데이터가 없을 경우 0 암호가 틀린 경우 1 암호가 맞은 경우 글 수정 
public int updateArticle(BoardVO article) throws Exception {
    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs= null;

    String dbpasswd="";
    String sql="";
	int x=-1;

	return x;
}
    // return : -1 글이 없음 0 암호 오류 1 정상 삭제
    public int deleteArticle(int num, String passwd)
    throws Exception {
    	 Connection conn = null;
         PreparedStatement pstmt = null;
         ResultSet rs= null;
         String dbpasswd="";
         int x=-1;
 		return x;
     }
 }