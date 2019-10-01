package jsputil.member;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
 
public class MemberDAO {
	private String driver = "com.mysql.jdbc.Driver";
	private String url = "jdbc:mysql://localhost:3306/test";
	   
	public void memberInsert(MemberVO member){
		Connection con = null;
		PreparedStatement pstmt = null;		
		String query = 
				"insert into member(id,passwd,name,email,tel,zipcode,addr1,addr2, regDate)" 
									  +"values(?,?,?,?,?,?,?,?,now())";
	}
	public ArrayList<MemberVO> getMemberList(){
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String query = "select * from member";
		ArrayList<MemberVO> list = new ArrayList<MemberVO>();

		return list;
	}
	
	public MemberVO getMember(String id){
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		MemberVO member= null;
		String query = "select * from member where id = ?";

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
						

	}
	
	public void memberDel(String id){
		Connection con = null;
		PreparedStatement pstmt = null;
		String query = "delete from member where id = ? ";

	}
	
	// 아이디 중복 체크 
	// return : 0 사용가능 , 1 중복
	public int idDup(String id){
		int result = 0;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String query = "select * from member where id = ?";
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

		return result;
	}
	
}
























