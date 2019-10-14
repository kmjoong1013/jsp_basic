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

	 		int num=article.getNum();
	 		int ref=article.getRef();
	 		int re_step=article.getRe_step();
	 		int re_level=article.getRe_level();
	 		int number=0;
	         String sql="";

	         try {
	             conn = getConnection();

	             pstmt = conn.prepareStatement("select max(num) from board");
	 			rs = pstmt.executeQuery();
	 			
	 			if (rs.next())
	 		      number=rs.getInt(1)+1;
	 		    else
	 		      number=1; 
	 		   rs.close();
	 		   pstmt.close();
	 		    if (num!=0)   //
	 		    {  
	 		      sql="update board set re_step=re_step+1 where ref= ? and re_step> ?";
	               pstmt = conn.prepareStatement(sql);
	               pstmt.setInt(1, ref);
	 			  pstmt.setInt(2, re_step);
	 			  pstmt.executeUpdate();
	 			  re_step=re_step+1;
	 			  re_level=re_level+1;
	 		     }else{
	 		  	  ref=number;
	 			  re_step=0;
	 			  re_level=0;
	 		     }	 
	             sql = "insert into board(num,writer,email,subject,passwd,reg_date,";
	 		    sql+="ref,re_step,re_level,content,filePath,ip) values(?,?,?,?,?,now(),?,?,?,?,?,?)";

	             pstmt = conn.prepareStatement(sql);
	             pstmt.setInt(1, number);
	             pstmt.setString(2, article.getWriter());
	             pstmt.setString(3, article.getEmail());
	             pstmt.setString(4, article.getSubject());
	             pstmt.setString(5, article.getPasswd());
	 			//pstmt.setDate(5, article.getReg_date());
	             pstmt.setInt(6, ref);
	             pstmt.setInt(7, re_step);
	             pstmt.setInt(8, re_level);
	 			pstmt.setString(9, article.getContent());
	 			pstmt.setString(10, article.getFilePath());
	 			pstmt.setString(11, article.getIp());
	 			
	             pstmt.executeUpdate();
	         } catch(Exception ex) { 
	             ex.printStackTrace();
	         } finally {
	 			if (rs != null) try { rs.close(); } catch(SQLException ex) {}
	             if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
	             if (conn != null) try { conn.close(); } catch(SQLException ex) {}
	         }
	    }
	    
		public int getArticleCount()
	    throws Exception {
	        Connection conn = null;
	        PreparedStatement pstmt = null;
	        ResultSet rs = null;
	        int x=0;
	        try {
	            conn = getConnection();
	            
	            pstmt = conn.prepareStatement("select count(*) from board");
	            rs = pstmt.executeQuery();

	            if (rs.next()) {
	               x= rs.getInt(1);
				}
	        } catch(Exception ex) {
	            ex.printStackTrace();
	        } finally {
	            if (rs != null) try { rs.close(); } catch(SQLException ex) {}
	            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
	            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
	        }
			return x;
	    }

		public List<BoardVO> getArticles(int start, int end)
	 throws Exception {
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			List<BoardVO> articleList = null;
			try {
				conn = getConnection();

				pstmt = conn.prepareStatement("select * from board order by ref desc, re_step asc limit ?,? ");

				pstmt.setInt(1, start - 1);
				pstmt.setInt(2, end);
				rs = pstmt.executeQuery();
				articleList = new ArrayList<BoardVO>(end);
				while (rs.next()) {
					BoardVO article = new BoardVO();
					article.setNum(rs.getInt("num"));
					article.setWriter(rs.getString("writer"));
					article.setEmail(rs.getString("email"));
					article.setSubject(rs.getString("subject"));
					article.setPasswd(rs.getString("passwd"));
					article.setReg_date(rs.getTimestamp("reg_date"));
					article.setReadcount(rs.getInt("readcount"));
					article.setRef(rs.getInt("ref"));
					article.setRe_step(rs.getInt("re_step"));
					article.setRe_level(rs.getInt("re_level"));
					article.setContent(rs.getString("content"));
					article.setIp(rs.getString("ip"));
					articleList.add(article);
				}
			} catch (Exception ex) {
				ex.printStackTrace();
			} finally {
				if (rs != null)	try {rs.close();} catch (SQLException ex) {}
				if (pstmt != null)try {pstmt.close();} catch (SQLException ex) {}
				if (conn != null)try {conn.close();} catch (SQLException ex) {}
			}
			return articleList;
	    }
	 
	    public BoardVO getArticle(int num)
	    throws Exception {
	        
	    	   Connection conn = null;
	           PreparedStatement pstmt = null;
	           ResultSet rs = null;
	           BoardVO article=null;
	           try{
	           	conn = getConnection();
	           	// readcount 
	           	// update board set readcount=readcount+1 where num = ?
	           	pstmt = conn.prepareStatement
	           			("update board set readcount=readcount+1 where num = ?");
				pstmt.setInt(1, num);
				pstmt.executeUpdate();
				pstmt.close();
	   			pstmt = 
	   			conn.prepareStatement("select * from board where num = ?");
	   			pstmt.setInt(1, num);
	   			rs = pstmt.executeQuery();
	   			if(rs.next()){
					article = new BoardVO();
					article.setNum(rs.getInt("num"));
					article.setWriter(rs.getString("writer"));
					article.setEmail(rs.getString("email"));
					article.setSubject(rs.getString("subject"));
					article.setPasswd(rs.getString("passwd"));
					article.setReg_date(rs.getTimestamp("reg_date"));
					article.setReadcount(rs.getInt("readcount"));
					article.setContent(rs.getString("content"));
					article.setFilePath(rs.getString("filePath"));
					article.setIp(rs.getString("ip"));  
					article.setRef(rs.getInt("ref"));
					article.setRe_step(rs.getInt("re_step"));
					article.setRe_level(rs.getInt("re_level"));				
	   			}
	           }catch(Exception e){
	           	System.out.println(e.getMessage());
	           }finally {
	   if(rs != null)try{ rs.close(); }catch(SQLException ex) {}
	   if(pstmt != null)try{ pstmt.close(); }catch(SQLException ex) {}
	   if(conn != null)try{ conn.close(); } catch(SQLException ex) {}
	           }
	   		return article;
	    }

	    public BoardVO updateGetArticle(int num) throws Exception {
	        Connection conn = null;
	        PreparedStatement pstmt = null;
	        ResultSet rs = null;
	        BoardVO article=null;
	        try {
	            conn = getConnection();

	            pstmt = conn.prepareStatement(
	            	"select * from board where num = ?");
	            pstmt.setInt(1, num);
	            rs = pstmt.executeQuery();

	            if (rs.next()) {
	                article = new BoardVO();
	                article.setNum(rs.getInt("num"));
					article.setWriter(rs.getString("writer"));
	                article.setEmail(rs.getString("email"));
	                article.setSubject(rs.getString("subject"));
	                article.setPasswd(rs.getString("passwd"));
				    article.setReg_date(rs.getTimestamp("reg_date"));
					article.setReadcount(rs.getInt("readcount"));
	                article.setRef(rs.getInt("ref"));
	                article.setRe_step(rs.getInt("re_step"));
					article.setRe_level(rs.getInt("re_level"));
	                article.setContent(rs.getString("content"));
				    article.setIp(rs.getString("ip"));     
				}
	        } catch(Exception ex) {
	            ex.printStackTrace();
	        } finally {
	            if (rs != null) try { rs.close(); } catch(SQLException ex) {}
	            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
	            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
	        }
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
	    try {
	        conn = getConnection();
	        
			pstmt = conn.prepareStatement(
	        	"select passwd from board where num = ?");
	        pstmt.setInt(1, article.getNum());        
	        rs = pstmt.executeQuery();
			if(rs.next()){
			  dbpasswd= rs.getString("passwd");
			  pstmt.close();
			  if(dbpasswd.equals(article.getPasswd())){
	            sql="update board set writer=?,email=?,subject=?,passwd=?";
			    sql+=",content=? where num=?";
	            pstmt = conn.prepareStatement(sql);
	            pstmt.setString(1, article.getWriter());
	            pstmt.setString(2, article.getEmail());
	            pstmt.setString(3, article.getSubject());
	            pstmt.setString(4, article.getPasswd());
	            pstmt.setString(5, article.getContent());
			    pstmt.setInt(6, article.getNum());
	            pstmt.executeUpdate();
				x= 1;
			  }else{
				x= 0;
			  }
			}
	    } catch(Exception ex) {
	        ex.printStackTrace();
	    } finally {
			if (rs != null) try { rs.close(); } catch(SQLException ex) {}
	        if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
	        if (conn != null) try { conn.close(); } catch(SQLException ex) {}
	    }
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
	         try {
	 			conn = getConnection();

	             pstmt = conn.prepareStatement(
	             	"select passwd from board where num = ?");
	             pstmt.setInt(1, num);
	             rs = pstmt.executeQuery();
	 			if(rs.next()){
	 				dbpasswd= rs.getString("passwd"); 
	 	             pstmt.close();
	 				if(dbpasswd.equals(passwd)){
	 					pstmt = conn.prepareStatement(
	             	      "delete from board where num=?");
	                     pstmt.setInt(1, num);
	                     pstmt.executeUpdate();
	 					x= 1; 
	 				}else
	 					x= 0; 
	 			}
	         } catch(Exception ex) {
	             ex.printStackTrace();
	         } finally {
	             if (rs != null) try { rs.close(); } catch(SQLException ex) {}
	             if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
	             if (conn != null) try { conn.close(); } catch(SQLException ex) {}
	         }
	 		return x;
	     }
 }