package isepweb.model;
import java.sql.*;
import java.util.ArrayList;

public class HandleAddInfor {
	private Connection ct=null;
    private Statement sm=null;
    private ResultSet rs=null;
    public boolean AddInfo(String school,String country,String lang,String major,String website,String symbol,String details){
    	boolean b=false;
    	try{
    		ct=new ConnDB().getConn();
    		sm=ct.createStatement();
    		int a=sm.executeUpdate("insert into information(schoolname,country,language,major,website,symbol,description) values('"+school+"','"+country+"','"+lang+"','"+major+"','"+website+"','"+symbol+"','"+details+"')");
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
    public boolean UpdateInfo(String id,String school,String country,String lang,String major,String website,String symbol,String details){
    	boolean b=false;
    	try{
    		ct=new ConnDB().getConn();
    		sm=ct.createStatement();
    		int a=sm.executeUpdate("update information set schoolName='"+school+"',country='"+country+"',language='"+lang+"',major='"+major+"',website='"+website+"',symbol='"+symbol+"',description='"+details+"' where id="+id);
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
    public boolean DeleteInfo(String id){
    	boolean b=false;
    	try{
    		ct=new ConnDB().getConn();
    		sm=ct.createStatement();
    		int a=sm.executeUpdate("delete from information where id='"+id+"'");
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
    public ArrayList<Object> InfoResult(){
        
    	ArrayList<Object> aL1=new ArrayList<Object>();
    	try{
    		ct=new ConnDB().getConn();
    		sm=ct.createStatement();
    		rs=sm.executeQuery("select * from information" );
    		while(rs.next()){    	    		
	    		InformationBean Ib=new InformationBean();
	    		Ib.setId(rs.getInt(1));
	    		Ib.setSchoolName(rs.getString(2));
	    		Ib.setCountry(rs.getString(3));
	    		Ib.setLanguage(rs.getString(4));
	    		Ib.setMajor(rs.getString(5));
	    		Ib.setWebsite(rs.getString(6));
	    		Ib.setSymbol(rs.getString(7));
	    		Ib.setDescription(rs.getString(8));
	    		aL1.add(Ib);
	    		
	    		} 
    	}catch(Exception e){
    		e.printStackTrace();
    	}finally{
    		this.close();
    	}
    	return aL1;
    } 
public ArrayList<Object> InfoResultById(String id){
        
    	ArrayList<Object> aL1=new ArrayList<Object>();
    	try{
    		ct=new ConnDB().getConn();
    		sm=ct.createStatement();
    		rs=sm.executeQuery("select * from information where id='"+id+"'");
    		while(rs.next()){    	    		
	    		InformationBean Ib=new InformationBean();
	    		Ib.setId(rs.getInt(1));
	    		Ib.setSchoolName(rs.getString(2));
	    		Ib.setCountry(rs.getString(3));
	    		Ib.setLanguage(rs.getString(4));
	    		Ib.setMajor(rs.getString(5));
	    		Ib.setWebsite(rs.getString(6));
	    		Ib.setSymbol(rs.getString(7));
	    		Ib.setDescription(rs.getString(8));
	    		aL1.add(Ib);
	    		
	    		} 
    	}catch(Exception e){
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
	public HandleAddInfor() {
		// TODO Auto-generated constructor stub
	}

}
