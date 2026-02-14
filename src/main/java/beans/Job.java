package beans;
import java.io.Serializable;

public class Job implements Serializable {

	    private int jobId;
	    private int companyId;
	    private String role;
	    private String description;
	    private String fullescription;
	    private String location;
	    private int vacancy;
	    private String type;
	    private int openings;
	    
	    
	    

		public Job() {
		}
		
		public Job(int jobId, int companyId, String role, String description, String fullescription, String location,
				int vacancy, String type, int openings) {
			super();
			this.jobId = jobId;
			this.companyId = companyId;
			this.role = role;
			this.description = description;
			this.fullescription = fullescription;
			this.location = location;
			this.vacancy = vacancy;
			this.type = type;
			this.openings = openings;
		}
		public int getJobId() {
			return jobId;
		}
		public void setJobId(int jobId) {
			this.jobId = jobId;
		}
		public int getCompanyId() {
			return companyId;
		}
		public void setCompanyId(int companyId) {
			this.companyId = companyId;
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
		public String getFullescription() {
			return fullescription;
		}
		public void setFullescription(String fullescription) {
			this.fullescription = fullescription;
		}
		public String getLocation() {
			return location;
		}
		public void setLocation(String location) {
			this.location = location;
		}
		public int getVacancy() {
			return vacancy;
		}
		public void setVacancy(int vacancy) {
			this.vacancy = vacancy;
		}
		public String getType() {
			return type;
		}
		public void setType(String type) {
			this.type = type;
		}
		public int getOpenings() {
			return openings;
		}
		public void setOpenings(int openings) {
			this.openings = openings;
		}

	    // getters & setters
	    
}
