package isepweb.model;
import java.sql.*;
import java.util.ArrayList;
public class HandleCommBean {
	private Connection ct=null;
    private Statement sm=null;
    private ResultSet rs=null;
	public boolean comment(String n,String s,String c){
    	boolean b=false;
    	try{
    		ct=new ConnDB().getConn();
    		sm=ct.createStatement();
    		int a=sm.executeUpdate("insert into comment(userName,school,details,state) values('"+n+"','"+s+"','"+c+"','waiting for confirm')");
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
	public boolean acceptComm(String id){
    	boolean b=false;
    	try{
    		ct=new ConnDB().getConn();
    		sm=ct.createStatement();
    		int a=sm.executeUpdate("update comment set state='accepted' where idcomment='"+id+"'");
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
	public boolean refuseComm(String id){
    	boolean b=false;
    	try{
    		ct=new ConnDB().getConn();
    		sm=ct.createStatement();
    		int a=sm.executeUpdate("update comment set state='refused' where idcomment='"+id+"'");
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
	public ArrayList<Object> WaitingCommList(){
        
	    	ArrayList<Object> aL1=new ArrayList<Object>();
	    	try{
	    		ct=new ConnDB().getConn();
	    		sm=ct.createStatement();
	    		rs=sm.executeQuery("select * from comment where state like'%waiting%'");
	    		while(rs.next()){    	    		
  	    		CommentBean Cb=new CommentBean();
  	    		Cb.setId(rs.getInt(1));
  	    		Cb.setUserName(rs.getString(2));
  	    		Cb.setSchool(rs.getString(3));
  	    		Cb.setDetails(rs.getString(4));
  	    		Cb.setDate(rs.getString(5));
  	    		Cb.setState(rs.getString(6));
  	    		
  	    		aL1.add(Cb);
  	    		
  	    		} 
	    	}catch(Exception e){
	    		e.printStackTrace();
	    	}finally{
	    		this.close();
	    	}
	    	return aL1;
	    }
	public ArrayList<Object> ServiceCommentResult(){
		ArrayList<Object> aL1=new ArrayList<Object>();
	   	
    	try{		
             ct=new ConnDB().getConn();
             sm=ct.createStatement();
             rs=sm.executeQuery("select * from comment ");
             
    	while(rs.next()){
    	     CommentBean Cb=new CommentBean();	
    	     Cb.setId(rs.getInt(1));
    		 Cb.setUserName(rs.getString(2));
    		 Cb.setSchool(rs.getString(3));
    		 Cb.setDetails(rs.getString(4));
    		 Cb.setDate(rs.getString(5));
	         Cb.setState(rs.getString(6));
    		 aL1.add(Cb);
    	    }
    	
             }
    	
    	catch(Exception e){
    		e.printStackTrace();
    	}finally{
    		this.close();
    	  } 
    		
    	return aL1;
    }
	public ArrayList<Object> commentResult(){
		ArrayList<Object> aL1=new ArrayList<Object>();
	   	
    	try{		
             ct=new ConnDB().getConn();
             sm=ct.createStatement();
             rs=sm.executeQuery("select userName,details,date from comment where state like '%accepted%'");
             
    	while(rs.next()){
    	     CommentBean Cb=new CommentBean();	
    		 
    		 Cb.setUserName(rs.getString(1));
    		 Cb.setDetails(rs.getString(2));
    		 Cb.setDate(rs.getString(3));
    		 
    		 aL1.add(Cb);
    	    }
    	
             }
    	
    	catch(Exception e){
    		e.printStackTrace();
    	}finally{
    		this.close();
    	  } 
    		
    	return aL1;
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
	public HandleCommBean() {
		// TODO Auto-generated constructor stub
	}

}
