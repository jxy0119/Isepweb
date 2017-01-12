package isepweb.model;

import java.sql.*;



public class OperateBean {
	private Connection ct=null;
    private Statement sm=null;
    private ResultSet rs=null;
    
    public boolean accept(String id){
    	boolean b=false;
    	try{
    		ct=new ConnDB().getConn();
    		sm=ct.createStatement();
    		int a=sm.executeUpdate("update resultofapplications set state='accepted' where idResultOfApplications='"+id+"'");
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
    public boolean refuse(String id){
    	boolean b=false;
    	try{
    		ct=new ConnDB().getConn();
    		sm=ct.createStatement();
    		int a=sm.executeUpdate("update resultofapplications set state='refused' where idResultOfApplications='"+id+"'");
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
	public OperateBean() {
		// TODO Auto-generated constructor stub
	}

}
