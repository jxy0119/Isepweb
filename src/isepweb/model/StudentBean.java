package isepweb.model;

public class StudentBean {
    private int Id;
    private String studentName;
    private String School;
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	public String getStudentName() {
		return studentName;
	}
	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}
	public String getSchool() {
		return School;
	}
	public void setSchool(String school) {
		School = school;
	}
	public StudentBean() {
		// TODO Auto-generated constructor stub
	}

}
