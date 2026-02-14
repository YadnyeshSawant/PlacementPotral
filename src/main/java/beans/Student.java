package beans;

public class Student {

	// Fields (match DB columns)
	private int studentId; // PK, AUTO_INCREMENT
	private Long prn;
	private String firstName;
	private String lastName;
	private String address;
	private String contact;
	private String email;
	private int programId;// FK → Program
	private String programName;

	private double bachelorCgpa;
	private double postgradCgpa;
	private double sscPercentage;
	private double hscPercentage;

	// No-argument constructor (REQUIRED for beans)
	public Student() {
	}

	// Parameterized constructor
	public Student(int studentId, Long prn, String firstName, String lastName, String address, String contact,
			String email, int programId, double bachelorCgpa, double postgradCgpa, double sscPercentage,
			double hscPercentage) {

		this.studentId = studentId;
		this.prn = prn;
		this.firstName = firstName;
		this.lastName = lastName;
		this.address = address;
		this.contact = contact;
		this.email = email;
		this.programId = programId;
		this.bachelorCgpa = bachelorCgpa;
		this.postgradCgpa = postgradCgpa;
		this.sscPercentage = sscPercentage;
		this.hscPercentage = hscPercentage;
	}

	// Getters and Setters

	public int getStudentId() {
		return studentId;
	}

	public void setStudentId(int studentId) {
		this.studentId = studentId;
	}

	public Long getPrn() {
		return prn;
	}

	public void setPrn(Long prn) {
		this.prn = prn;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getProgramId() {
		return programId;
	}

	public void setProgramId(int programId) {
		this.programId = programId;
	}

	public String getProgramName() {
		return programName;
	}

	public void setProgramName(String programName) {
		this.programName = programName;
	}

	public double getBachelorCgpa() {
		return bachelorCgpa;
	}

	public void setBachelorCgpa(double bachelorCgpa) {
		this.bachelorCgpa = bachelorCgpa;
	}

	public double getPostgradCgpa() {
		return postgradCgpa;
	}

	public void setPostgradCgpa(double postgradCgpa) {
		this.postgradCgpa = postgradCgpa;
	}

	public double getSscPercentage() {
		return sscPercentage;
	}

	public void setSscPercentage(double sscPercentage) {
		this.sscPercentage = sscPercentage;
	}

	public double getHscPercentage() {
		return hscPercentage;
	}

	public void setHscPercentage(double hscPercentage) {
		this.hscPercentage = hscPercentage;
	}
}