package Dao;

import com.Users;

public class UserDao {
    //�жϵ�¼���
    public boolean userLogin(Users user){
        if("azura".equals(user.getUsername()) && "123456".equals(user.getPassword())){
            return true;
        }else{
            return false;
        }
    }
}