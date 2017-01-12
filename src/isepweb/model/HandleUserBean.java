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
    public boolean addInfo(String id,String sn,String s,String cn,String mn){
    	boolean b=false;
    	try{
    		ct=new ConnDB().getConn();
    		sm=ct.createStatement();
    		int a=sm.executeUpdate("insert into resultofapplications(studentId, studentName,school,Class,Major,state) values('"+id+"','"+sn+"','"+s+"','"+cn+"','"+mn+"','waiting for confirm')");
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
    public String[] bacisInfo(String u){
    	
    	String[]a={"","",""};
    	try{
    		ct=new ConnDB().getConn();
    		sm=ct.createStatement();
    		rs=sm.executeQuery("select*from students where name='"+u+"'");
    		if(rs.next()){
    			a[0]=rs.getString(1);
    			a[1]=rs.getString(2);
    			a[2]=rs.getString(3);
    		}
    		
    		
    		
    	}catch(Exception e){
    		e.printStackTrace();
    	}finally{
    		this.close();
    	}
    	return a;
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
