package beans;

public class Application {
	private int applicationId;
	private long studentPrn;
	private int jobId;

	// Job Details (from JOIN)
	private String role;
	private String description;
	private String location;
	private String type;

	// Company Details (from JOIN)
	private String companyName;

	// Application Details
	private String status; // Submitted / Interviewing / Offered / Rejected
	private String appliedDate;

	// -------------------------
	// Getters and Setters
	// -------------------------

	public int getApplicationId() {
		return applicationId;
	}

	public void setApplicationId(int applicationId) {
		this.applicationId = applicationId;
	}

	public long getStudentPrn() {
		return studentPrn;
	}

	public void setStudentPrn(long studentPrn) {
		this.studentPrn = studentPrn;
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

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getAppliedDate() {
		return appliedDate;
	}

	public void setAppliedDate(String appliedDate) {
		this.appliedDate = appliedDate;
	}
}
