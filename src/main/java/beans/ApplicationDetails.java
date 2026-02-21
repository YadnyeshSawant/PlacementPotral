package beans;

public class ApplicationDetails {

	// Application
	private int applicationId;
	private String applicationStatus;

	// Student
	private long studentPrn;
	private String firstName;
	private String lastName;
	private String studentAddress;
	private long studentContact;
	private String studentEmail;
	private int programId;
	private String programName;
	private double bachelorCgpa;
	private double postgradCgpa;
	private double sscPercentage;
	private double hscPercentage;

	// Job
	private int jobId;
	private String role;
	private String description;
	private int vacancy;
	private int openings;
	private String location;
	private String type;
	private String jobStatus;

	// Company
	private int companyId;
	private String companyName;
	private String representative;
	private long companyContact;
	private String companyEmail;
	private String companyAddress;
	private String website;
	private String companyStatus;
	private long companyPrn;
	public int getApplicationId() {
		return applicationId;
	}
	public void setApplicationId(int applicationId) {
		this.applicationId = applicationId;
	}
	public String getApplicationStatus() {
		return applicationStatus;
	}
	public void setApplicationStatus(String applicationStatus) {
		this.applicationStatus = applicationStatus;
	}
	public long getPrn() {
		return studentPrn;
	}
	public void setPrn(long prn) {
		this.studentPrn = prn;
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
	public String getStudentAddress() {
		return studentAddress;
	}
	public void setStudentAddress(String studentAddress) {
		this.studentAddress = studentAddress;
	}
	public long getStudentContact() {
		return studentContact;
	}
	public void setStudentContact(long studentContact) {
		this.studentContact = studentContact;
	}
	public String getStudentEmail() {
		return studentEmail;
	}
	public void setStudentEmail(String studentEmail) {
		this.studentEmail = studentEmail;
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
	public int getJobId() {
		return jobId;
	}
	public void setJobId(int jobId) {
		this.jobId = jobId;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getVacancy() {
		return vacancy;
	}
	public void setVacancy(int vacancy) {
		this.vacancy = vacancy;
	}
	public int getOpenings() {
		return openings;
	}
	public void setOpenings(int openings) {
		this.openings = openings;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getJobStatus() {
		return jobStatus;
	}
	public void setJobStatus(String jobStatus) {
		this.jobStatus = jobStatus;
	}
	public int getCompanyId() {
		return companyId;
	}
	public void setCompanyId(int companyId) {
		this.companyId = companyId;
	}
	
	public String getCompanyStatus() {
		return companyStatus;
	}
	public void setCompanyStatus(String companyStatus) {
		this.companyStatus = companyStatus;
	}
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public String getRepresentative() {
		return representative;
	}
	public void setRepresentative(String representative) {
		this.representative = representative;
	}
	public long getCompanyContact() {
		return companyContact;
	}
	public void setCompanyContact(long companyContact) {
		this.companyContact = companyContact;
	}
	public String getCompanyEmail() {
		return companyEmail;
	}
	public void setCompanyEmail(String companyEmail) {
		this.companyEmail = companyEmail;
	}
	public long getStudentPrn() {
		return studentPrn;
	}
	public void setStudentPrn(long studentPrn) {
		this.studentPrn = studentPrn;
	}
	public long getCompanyPrn() {
		return companyPrn;
	}
	public void setCompanyPrn(long companyPrn) {
		this.companyPrn = companyPrn;
	}
	public String getCompanyAddress() {
		return companyAddress;
	}
	public void setCompanyAddress(String companyAddress) {
		this.companyAddress = companyAddress;
	}
	public String getWebsite() {
		return website;
	}
	public void setWebsite(String website) {
		this.website = website;
	}
	
	
	
	// Generate getters and setters (use IDE auto-generate)
}