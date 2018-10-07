package User;

public class UserForm {
	private String username="";
	private String pwd="";
	private String sex="";
	private String[] affect=null;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String[] getAffect() {
		return affect;
	}
	public void setAffect(String[] affect) {
		this.affect = affect;
	}
}
