package isepweb.model;
import java.sql.*;




public class HandleUserBean {
	private Statement sm=null;
    private ResultSet rs=null;
    private Connection ct=null;
    public boolean checkUser(String u,String p){
    	boolean b=false;
    	try{
    		ct=new ConnDB().getConn();
    		sm=ct.createStatement();
    		rs=sm.executeQuery("select password from users where username='"+u+"'");
    		if(rs.next()){
    			if(rs.getString("PassWord").equals(p)){
    				b=true;
    			}
    		}
    	}catch(Exception e){
    		e.printStackTrace();
    	}finally{
    		this.close();
    	}
    	return b;
    }
    public int readAuthority(String u){
    	int a=0;
    	try{
    		ct=new ConnDB().getConn();
    		sm=ct.createStatement();
    		rs=sm.executeQuery("select authority from users where username='"+u+"'");
    		if(rs.next()){
    			a=rs.getInt("authority");
    		}
    		
    	}catch(Exception e){
    		
    	}finally{
    		this.close();
    	}
    	return a;
    }
    public boolean addInfo(String st,int sn,String cn,String mn,String d){
    	boolean b=false;
    	try{
    		ct=new ConnDB().getConn();
    		sm=ct.createStatement();
    		int a=sm.executeUpdate("insert into student_has_class(UserInformation_Id, Date, ClassName, MajorName, StudentName, state) values('"+sn+"','"+d+"','"+cn+"','"+mn+"','"+st+"','waiting for confirm')");
    		if(a==1){
    			b=true;
    		}    		
    		
    		
    	}catch(Exception e){
    		e.printStackTrace();
    	}finally{
    		this.close();
    	}
    	return b;
    }
    
    public void close(){
    	try{
    		if(rs!=null){
    			rs.close();
    		}
    		if(sm!=null){
    			sm.close();
    		}
    		if(ct!=null){
    			ct.close();
    		}
    	}catch(Exception e){
    		e.printStackTrace();
    	}
    }
	public HandleUserBean() {
		// TODO Auto-generated constructor stub
	}

}
