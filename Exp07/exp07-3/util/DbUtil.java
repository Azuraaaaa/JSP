package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.User;

public class DbUtil {
	public Connection getConnection(){
		try {
			 Class.forName("com.mysql.cj.jdbc.Driver");
			 return DriverManager.getConnection("jdbc:mysql://localhost:3306/test?useUnicode=true&characterEncoding=utf8&serverTimezone=GMT%2B8&useSSL=false", "root", "123456");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	public void closeAll(Connection conn,PreparedStatement ps,ResultSet rs){
		try {
			if(rs!=null){
				rs.close();
			}
			if(ps!=null){
				ps.close();
			}
			if(conn!=null){
				conn.close();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public int executeUpdate(String sql,Object...param){
		Connection conn=null;
		PreparedStatement ps=null;
		try {
			conn=getConnection();
			ps = conn.prepareStatement(sql);
			for(int i=0;i<param.length;i++){
				ps.setObject((i+1),param[i]);
			}
			return ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			closeAll(conn, ps, null);
		}
		return 0;
	}

	public ArrayList<User> executeQuery(String sql,Object...param){
		ArrayList<User> users=new ArrayList<User>();
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		try {
			conn=getConnection();
			ps = conn.prepareStatement(sql);
			for(int i=0;i<param.length;i++){
				ps.setObject((i+1),param[i]);
			}

			rs=ps.executeQuery();
			while(rs.next()){
				User user=new User(rs.getInt(1),rs.getString(2),rs.getString(3));
				users.add(user);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			closeAll(conn, ps, rs);
		}
		return users;
	}

	public int executeQueryUnique(String sql){		
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		try {
			conn=getConnection();
			ps = conn.prepareStatement(sql);
			rs=ps.executeQuery();
			if(rs.next()){
				return rs.getInt(1);
			}	
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			closeAll(conn, ps, rs);
		}
		return 0;
	}
}
