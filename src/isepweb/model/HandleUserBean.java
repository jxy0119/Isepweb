package isepweb.model;
import java.sql.*;
import java.util.*;
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
    public ArrayList getCountryInfo(String []a){
    	ArrayList aL1=new ArrayList();
    	ArrayList aL2=new ArrayList();
    	if(a!=null&&a.length>0){
    	
    	try{		
             ct=new ConnDB().getConn();
             sm=ct.createStatement();
          for(int i=0;i<a.length;i++){
         	 
        	 rs=sm.executeQuery("select * from school where country like '%"+a[i]+"%'");
    	while(rs.next()){
    	     SchoolBean Sb=new SchoolBean();	
    		 Sb.setId(rs.getInt(1));
    		 Sb.setSchoolName(rs.getString(2));
    		 Sb.setCountry(rs.getString(3));
    		 aL1.add(Sb);
    	    }
    	     aL2.add(aL1);
          }
    	
    	}catch(Exception e){
    		e.printStackTrace();
    	}finally{
    		this.close();
    	  }
       	}
    	return aL2;
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
