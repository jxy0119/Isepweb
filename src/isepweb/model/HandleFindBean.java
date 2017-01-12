package isepweb.model;
import java.sql.*;
import java.util.ArrayList;



public class HandleFindBean {
	    private Connection ct=null;
	    private Statement sm=null;
	    private ResultSet rs=null;
	    
	    public ArrayList<Object> getCountryInfo(String a,String b,String c){
    	ArrayList<Object> aL1=new ArrayList<Object>();
   	
    	try{		
             ct=new ConnDB().getConn();
             sm=ct.createStatement();
             rs=sm.executeQuery("select country,language,major,schoolname from information where country like '%"+a+"%'"+"and language like '%"+b+"%'"+"and major like '%"+c+"%'");
             
    	while(rs.next()){
    	     InformationBean Ib=new InformationBean();	
    		 
    		 Ib.setCountry(rs.getString(1));
    		 Ib.setLanguage(rs.getString(2));
    		 Ib.setMajor(rs.getString(3));
    		 Ib.setSchoolName(rs.getString(4));
    		 aL1.add(Ib);
    	    }
    	
             }
    	
    	catch(Exception e){
    		e.printStackTrace();
    	}finally{
    		this.close();
    	  } 
    		
    	return aL1;
    }
	    
	    public ArrayList<Object> getSchoolInfo(String s){
             
	    	ArrayList<Object> aL1=new ArrayList<Object>();
	    	try{
	    		ct=new ConnDB().getConn();
	    		sm=ct.createStatement();
	    		rs=sm.executeQuery("select distinct schoolname,country,website,symbol,description from Information where schoolname='"+s+"'");
	    		while(rs.next()){    	    		
    	    		InformationBean Ib=new InformationBean();
    	    		Ib.setSchoolName(rs.getString(1));
    	    		Ib.setCountry(rs.getString(2));
    	    		Ib.setWebsite(rs.getString(3));
    	    		Ib.setSymbol(rs.getString(4));
    	    		Ib.setDescription(rs.getString(5));
    	    		aL1.add(Ib);
    	    		
    	    		} 
			
	    	}catch(Exception e){
	    		e.printStackTrace();
	    	}finally{
	    		this.close();
	    	}
	
	    	return aL1;
	    }
	    public ArrayList<Object> getStudentList(){
            
	    	ArrayList<Object> aL1=new ArrayList<Object>();
	    	try{
	    		ct=new ConnDB().getConn();
	    		sm=ct.createStatement();
	    		rs=sm.executeQuery("select * from students" );
	    		while(rs.next()){    	    		
    	    		StudentBean Sb=new StudentBean();
    	    		Sb.setId(rs.getInt(1));
    	    		Sb.setStudentName(rs.getString(2));
    	    		Sb.setSchool(rs.getString(3));
    	    		
    	    		aL1.add(Sb);
    	    		
    	    		} 
	    	}catch(Exception e){
	    		e.printStackTrace();
	    	}finally{
	    		this.close();
	    	}
	    	return aL1;
	    } 
            public ArrayList<Object> typeStudent(String t){
            
	    	ArrayList<Object> aL1=new ArrayList<Object>();
	    	try{
	    		ct=new ConnDB().getConn();
	    		sm=ct.createStatement();
	    		rs=sm.executeQuery("select * from students where name='"+t+"'" );
	    		while(rs.next()){    	    		
    	    		StudentBean Sb=new StudentBean();
    	    		Sb.setId(rs.getInt(1));
    	    		Sb.setStudentName(rs.getString(2));
    	    		Sb.setSchool(rs.getString(3));
    	    		
    	    		aL1.add(Sb);
    	    		
    	    		} 
	    	}catch(Exception e){
	    		e.printStackTrace();
	    	}finally{
	    		this.close();
	    	}
	    	return aL1;
	    }
         public ArrayList<Object> getStudent(String sn){
            
	    	ArrayList<Object> aL1=new ArrayList<Object>();
	    	try{
	    		ct=new ConnDB().getConn();
	    		sm=ct.createStatement();
	    		rs=sm.executeQuery("select * from resultofapplications where studentname='"+sn+"'");
	    		while(rs.next()){    	    		
    	    		ResultBean Rb=new ResultBean();
    	    		Rb.setId(rs.getInt(1));
    	    		Rb.setStudentId(rs.getInt(2));
    	    		Rb.setStudentName(rs.getString(3));
    	    		Rb.setSchool(rs.getString(4));
    	    		Rb.setCl(rs.getString(5));
    	    		Rb.setMajor(rs.getString(6));
    	    		Rb.setState(rs.getString(7));
    	    		Rb.setDate(rs.getString(8));
    	    		aL1.add(Rb);
    	    		
    	    		} 
	    	}catch(Exception e){
	    		e.printStackTrace();
	    	}finally{
	    		this.close();
	    	}
	    	return aL1;
	    } 
         public ArrayList<Object> WaitingAppList(String sn){
             
 	    	ArrayList<Object> aL1=new ArrayList<Object>();
 	    	try{
 	    		ct=new ConnDB().getConn();
 	    		sm=ct.createStatement();
 	    		rs=sm.executeQuery("select * from resultofapplications where studentname='"+sn+"'and state like '%waiting%'");
 	    		while(rs.next()){    	    		
     	    		ResultBean Rb=new ResultBean();
     	    		Rb.setId(rs.getInt(1));
     	    		Rb.setStudentId(rs.getInt(2));
     	    		Rb.setStudentName(rs.getString(3));
     	    		Rb.setSchool(rs.getString(4));
     	    		Rb.setCl(rs.getString(5));
     	    		Rb.setMajor(rs.getString(6));
     	    		Rb.setState(rs.getString(7));
     	    		Rb.setDate(rs.getString(8));
     	    		aL1.add(Rb);
     	    		
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
	public HandleFindBean() {
		// TODO Auto-generated constructor stub
	}

}
