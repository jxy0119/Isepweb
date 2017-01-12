package isepweb.model;

public class ResultBean {
	private int Id;
    private int studentId;
    private String studentName;
    private String school;
    private String cl;
    private String major;
    private String state;
    private String date;
    
    public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	public int getStudentId() {
		return studentId;
	}
	public void setStudentId(int studentId) {
		this.studentId = studentId;
	}
	public String getStudentName() {
		return studentName;
	}
	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}
	public String getSchool() {
		return school;
	}
	public void setSchool(String school) {
		this.school = school;
	}
	public String getCl() {
		return cl;
	}
	public void setCl(String cl) {
		this.cl = cl;
	}
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	
	public ResultBean() {
		// TODO Auto-generated constructor stub
	}

}
