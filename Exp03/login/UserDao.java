package Dao;

import com.Users;

public class UserDao {
    //ÅÐ¶ÏµÇÂ¼½á¹û
    public boolean userLogin(Users user){
        if("azura".equals(user.getUsername()) && "123456".equals(user.getPassword())){
            return true;
        }else{
            return false;
        }
    }
}