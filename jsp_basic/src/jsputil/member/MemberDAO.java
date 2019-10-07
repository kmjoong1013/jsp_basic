package jsputil.member;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
 

public class MemberDAO {
	private String driver = "com.mysql.jdbc.Driver";
	private String url = "jdbc:mysql://localhost:3306/study?useUnicode=true&characterEncoding=utf8";
	   
	public void memberInsert(MemberVO member){
		Connection con = null;
		PreparedStatement pstmt = null;
		String query = 
"insert into member(id,passwd,name,email,tel,zipcode,addr1,addr2, regDate)" 
					  +"values(?,?,?,?,?,?,?,?,now())";
		try{
			Class.forName(driver);
			con = DriverManager.getConnection(url,"root","st00");
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, member.getId());
			pstmt.setString(2, member.getPasswd());
			pstmt.setString(3, member.getName());
			pstmt.setString(4, member.getEmail());
			pstmt.setString(5, member.getTel());
			pstmt.setString(6, member.getZipcode());
			pstmt.setString(7, member.getAddr1());
			pstmt.setString(8, member.getAddr2());
			int cnt = pstmt.executeUpdate();// insert update delete
		}catch(Exception e){
			System.out.println(e.getMessage());
		}finally{
			try{ 
				if(pstmt != null) pstmt.close();
				if(con != null)con.close();
			}catch(Exception e){}
		}
	}
	public ArrayList<MemberVO> getMemberList(){
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String query = "select * from member";
		ArrayList<MemberVO> list = new ArrayList<MemberVO>();
		try{
			Class.forName(driver);
			con = DriverManager.getConnection(url,"root","st00");
			pstmt = con.prepareStatement(query);
			rs = pstmt.executeQuery();
			while(rs.next()){
				MemberVO member = new MemberVO();
				member.setId(rs.getString("id"));
				member.setPasswd(rs.getString("passwd"));
				member.setName(rs.getString("name"));
				member.setEmail(rs.getString("email"));
				// tel zip addr1 addr2
				list.add(member);
			}
		}catch(Exception e){
			System.out.println(e.getMessage());
		}finally{
			try{ 
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(con != null)con.close();
			}catch(Exception e){}
		}
		return list;
	}
	
	public MemberVO getMember(String id){
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		MemberVO member= null;
		String query = "select * from member where id = ?";
		try{
			Class.forName(driver);
			con = DriverManager.getConnection(url,"root","st00");
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			while(rs.next()){
				member = new MemberVO();
				member.setId(rs.getString("id"));
				member.setPasswd(rs.getString("passwd"));
				member.setName(rs.getString("name"));
				member.setEmail(rs.getString("email"));
				member.setTel(rs.getString("tel"));
				member.setZipcode(rs.getString("zipcode"));
				member.setAddr1(rs.getString("addr1"));
				member.setAddr2(rs.getString("addr2"));
			}
		}catch(Exception e){
			System.out.println(e.getMessage());
		}finally{
			try{ 
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(con != null)con.close();
			}catch(Exception e){}
		}
		return member;
	}
	
	public void memberUpt(MemberVO member){
		Connection con = null;
		PreparedStatement pstmt = null;
		String query = "update member " +
						"set passwd = ?," +
						" name = ?,"+
						" email= ?," +
						" tel =  ?," +
						" zipcode = ?, " +
						" addr1 = ?, " +
						" addr2 = ? " +
						"where id = ? ";
						
		try{
			Class.forName(driver);
			con = DriverManager.getConnection(url,"root","st00");
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, member.getPasswd());
			pstmt.setString(2, member.getName());			
			pstmt.setString(3, member.getEmail());
			pstmt.setString(4, member.getTel());
			pstmt.setString(5, member.getZipcode());
			pstmt.setString(6, member.getAddr1());
			pstmt.setString(7, member.getAddr2());
			pstmt.setString(8, member.getId());
			pstmt.executeUpdate();			
		}catch(Exception e){
			System.out.println(e.getMessage());
		}finally{
			try{ 
				if(pstmt != null) pstmt.close();
				if(con != null)con.close();
			}catch(Exception e){}
		}
	}
	
	public void memberDel(String id){
		Connection con = null;
		PreparedStatement pstmt = null;
		String query = "delete from member where id = ? ";
		try{
			Class.forName(driver);
			con = DriverManager.getConnection(url,"root","st00");
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, id);
			pstmt.executeUpdate();
			
		}catch(Exception e){
			System.out.println(e.getMessage());
		}finally{
			try{ 
				if(pstmt != null) pstmt.close();
				if(con != null)con.close();
			}catch(Exception e){}
		}
	}
	
	// 아이디 중복 체크 
	// return : 0 사용가능 , 1 중복
	public int idDup(String id){
		int result = 0;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String query = "select * from member where id = ?";
		try{
			Class.forName(driver);
			con = DriverManager.getConnection(url,"root","st00");
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()){
				result = 1;
			}
		}catch(Exception e){
			System.out.println(e.getMessage());
		}finally{
			try{ 
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(con != null)con.close();
			}catch(Exception e){}
		}
		return result;
	}

	// 로그인
	// return : -1 아이디 없음 0 암호 틀림 1 정상 로그인
	public int loginCheck(String id, String passwd){
		int result = -1;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String query = "select id, passwd from member where id = ?";
		try{
			Class.forName(driver);
			con = DriverManager.getConnection(url,"root","st00");
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()){
				String dbPass = rs.getString("passwd");
				if(dbPass.equals(passwd)){
					result = 1;
				}else {
					result = 0;
				}
			}
		}catch(Exception e){
			System.out.println(e.getMessage());
		}finally{
			try{ 
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(con != null) con.close();
			}catch(Exception e){}
		}
		return result;
	}
	
}