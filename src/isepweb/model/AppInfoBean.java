package isepweb.model;



public class AppInfoBean {
    private String StudentName;
    private int StudentNum;
    private String ClassName;
    private String MajorName;
    private String date;
	public AppInfoBean() {
		// TODO Auto-generated constructor stub
	}
	public String getStudentName() {
		return StudentName;
	}
	public void setStudentName(String studentName) {
		StudentName = studentName;
	}
	public int getStudentNum() {
		return StudentNum;
	}
	public void setStudentNum(int studentNum) {
		StudentNum = studentNum;
	}
	public String getClassName() {
		return ClassName;
	}
	public void setClassName(String className) {
		ClassName = className;
	}
	public String getMajorName() {
		return MajorName;
	}
	public void setMajorName(String majorName) {
		MajorName = majorName;
	}
	
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}

}
