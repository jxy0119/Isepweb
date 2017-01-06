package isepweb.model;
import java.sql.*;
import java.util.ArrayList;



public class HandleFindBean {
	    private Connection ct=null;
	    private Statement sm=null;
	    private ResultSet rs=null;
	    private String sql="";
	    public ArrayList<Object> getCountryInfo(String []a){
    	ArrayList<Object> aL1=new ArrayList<Object>();
    	
    	if(a!=null){
    		
    	try{		
             ct=new ConnDB().getConn();
             sm=ct.createStatement();
             if(a.length>1){
              
         	  for(int i=1;i<a.length;i++){
             sql="or country like '%"+a[i]+"%'";
         	 rs=sm.executeQuery("select * from school where country like '%"+a[0]+"%'"+sql);
         	  }
             }else{
        	 rs=sm.executeQuery("select * from school where country like '%"+a[0]+"%'"+sql);
        	 }
    	while(rs.next()){
    	     SchoolBean Sb=new SchoolBean();	
    		 
    		 Sb.setSchoolName(rs.getString(1));
    		 Sb.setCountry(rs.getString(2));
    		 aL1.add(Sb);
    	    }
    	   
          
             }
    	
    	catch(Exception e){
    		e.printStackTrace();
    	}finally{
    		this.close();
    	  } 
    	}	
    	return aL1;
    }
	    public Object[] getLanguageInfo(String []l){
	    	
	    	ArrayList<Object> aL1=new ArrayList<Object>();
	    	ArrayList<Object> aL2=new ArrayList<Object>();
	    	ArrayList<Object> aL3=new ArrayList<Object>();
	    	Object []a={aL1,aL2,aL3};
	    	if(l!=null){
	    		
	    	
	    	try{
	    		ct=new ConnDB().getConn();
	    		sm=ct.createStatement();
	    		if(l.length>1){
	                
	           	  for(int i=1;i<l.length;i++){
	               sql="or language like '%"+l[i]+"%'";
	    		rs=sm.executeQuery("select class.language,class.classname,class.majorname,class.schoolname from class where language like'%"+l[0]+"%'"+sql);
	           	  }
	    		}else{
	    			rs=sm.executeQuery("select class.language,class.classname,class.majorname,class.schoolname from class where language like'%"+l[0]+"%'"+sql);  
	           	  }
	    		while(rs.next()){
	    		ClassBean Cb=new ClassBean();
	    		MajorBean Mb=new MajorBean();
	    		SchoolBean Sb=new SchoolBean();
	    		Cb.setLanguage(rs.getString(1));
	    		Cb.setClassName(rs.getString(2));
	    		Mb.setMajorName(rs.getString(3));
	    		Sb.setSchoolName(rs.getString(4));
	    		aL1.add(Cb);
	    		aL2.add(Mb);
	    		aL3.add(Sb);
	    		}     		
	    		
	    	}catch(Exception e){
	    		e.printStackTrace();
	    	}finally{
	    		this.close();
	    	}
	    	}
	    	return a ;
	    	
	    }
	    public Object[] getMajorInfo(String m){
	    	
	    	ArrayList<Object> aL1=new ArrayList<Object>();
	    	ArrayList<Object> aL2=new ArrayList<Object>();
	    	ArrayList<Object> aL3=new ArrayList<Object>();
	    	Object []a={aL1,aL2,aL3};
            try{
            	ct=new ConnDB().getConn();
	    		sm=ct.createStatement();
            	rs=sm.executeQuery("select class.majorname,class.classname,class.schoolname from class where class.majorname like '%"+m+"%'");
            	while(rs.next()){
    	    		ClassBean Cb=new ClassBean();
    	    		MajorBean Mb=new MajorBean();
    	    		SchoolBean Sb=new SchoolBean();
    	    		
    	    		Cb.setClassName(rs.getString(1));
    	    		Mb.setMajorName(rs.getString(2));
    	    		Sb.setSchoolName(rs.getString(3));
    	    		aL1.add(Cb);
    	    		aL2.add(Mb);
    	    		aL3.add(Sb);
    	    		}     		
            	
            	
            	
	    	}catch(Exception e){
	    		e.printStackTrace();
	    	}finally{
	    		this.close();
	    	}
	    	
	    	
	    	
	    	
	    	return a;
	    }
	    
	    public ArrayList<Object> getSchoolInfo(String s){
             
	    	ArrayList<Object> aL1=new ArrayList<Object>();
	    	try{
	    		ct=new ConnDB().getConn();
	    		sm=ct.createStatement();
	    		rs=sm.executeQuery("select*from school where schoolname='"+s+"'");
	    		while(rs.next()){    	    		
    	    		SchoolBean Sb=new SchoolBean();
    	    		Sb.setSchoolName(rs.getString(1));
    	    		Sb.setCountry(rs.getString(2));
    	    		Sb.setSymbol(rs.getString(3));
    	    		Sb.setDiscription(rs.getString(4));
    	    		Sb.setWebSite(rs.getString(5));
    	    		aL1.add(Sb);
    	    		
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
