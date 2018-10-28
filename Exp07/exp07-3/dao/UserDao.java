package dao;

import java.util.ArrayList;
import util.DbUtil;
import model.User;

public class UserDao {
	DbUtil db=new DbUtil();
		public ArrayList<User> login(String username,String password){
			String sql="select * from user where name=? and password=?";
			Object [] param={username,password};
			return db.executeQuery(sql, param);
		}
}
