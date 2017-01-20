package isepweb.model;
import java.sql.*;
public class ConnDB {

	public ConnDB() {
		// TODO Auto-generated constructor stub
	}
	private Connection ct=null;
	public Connection getConn(){
		try{
			Class.forName("com.mysql.jdbc.Driver");
			ct=DriverManager.getConnection("jdbc:mysql://nhz.hk:3307/johnson","JChong","johnchon");
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		
		return ct;
	}

}
