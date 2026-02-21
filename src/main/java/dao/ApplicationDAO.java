package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import beans.Application;
import beans.ApplicationDetails;
import helper.DBConnection;

public class ApplicationDAO {
//	public List<ApplicationDetails> getApplicationsByStudentPrn(long prn) {
//
//	    List<ApplicationDetails> list = new ArrayList<>();
//
//	    try {
//
//	        Connection con = DBConnection.getConnection();
//
//	        String sql = "SELECT a.application_id, a.status AS application_status, "
//	                   + "s.student_id, s.prn, s.first_name, s.last_name, "
//	                   + "j.job_id, j.role, j.location, j.type, j.status AS job_status, "
//	                   + "c.company_id, c.name AS company_name "
//	                   + "FROM applications a "
//	                   + "JOIN student s ON a.student_id = s.student_id "
//	                   + "JOIN jobopening j ON a.job_id = j.job_id "
//	                   + "JOIN company c ON j.company_id = c.company_id "
//	                   + "WHERE s.prn = ? "
//	                   + "ORDER BY a.application_id DESC";
//
//	        PreparedStatement pstmt = con.prepareStatement(sql);
//	        pstmt.setLong(1, prn);
//
//	        ResultSet rs = pstmt.executeQuery();
//
//	        while (rs.next()) {
//
//	            ApplicationDetails ad = new ApplicationDetails();
//
//	            ad.setApplicationId(rs.getInt("application_id"));
//	            ad.setApplicationStatus(rs.getString("application_status"));
//
//	            ad.setStudentPrn(rs.getLong("prn"));
//	            ad.setFirstName(rs.getString("first_name"));
//	            ad.setLastName(rs.getString("last_name"));
//
//	            ad.setJobId(rs.getInt("job_id"));
//	            ad.setRole(rs.getString("role"));
//	            ad.setLocation(rs.getString("location"));
//	            ad.setType(rs.getString("type"));
//	            ad.setJobStatus(rs.getString("job_status"));
//
//	            ad.setCompanyId(rs.getInt("company_id"));
//	            ad.setCompanyName(rs.getString("company_name"));
//
//	            list.add(ad);
//	        }
//
//	        rs.close();
//	        pstmt.close();
//	        con.close();
//
//	    } catch (Exception e) {
//	        e.printStackTrace();
//	    }
//
//	    return list;
//	}
	public List<ApplicationDetails> getApplicationsByStudentPrn(long prn, int start, int limit) {

	    List<ApplicationDetails> list = new ArrayList<>();

	    try {

	        Connection con = DBConnection.getConnection();

	        String sql = "SELECT a.application_id, a.status AS application_status, "
	                   + "s.student_id, s.prn, s.first_name, s.last_name, "
	                   + "j.job_id, j.role, j.location, j.type, j.status AS job_status, "
	                   + "c.company_id, c.name AS company_name "
	                   + "FROM applications a "
	                   + "JOIN student s ON a.student_id = s.student_id "
	                   + "JOIN jobopening j ON a.job_id = j.job_id "
	                   + "JOIN company c ON j.company_id = c.company_id "
	                   + "WHERE s.prn = ? "
	                   + "ORDER BY a.application_id DESC "
	                   + "LIMIT ?, ?";

	        PreparedStatement pstmt = con.prepareStatement(sql);
	        pstmt.setLong(1, prn);
	        pstmt.setInt(2, start);
	        pstmt.setInt(3, limit);

	        ResultSet rs = pstmt.executeQuery();

	        while (rs.next()) {

	            ApplicationDetails ad = new ApplicationDetails();

	            ad.setApplicationId(rs.getInt("application_id"));
	            ad.setApplicationStatus(rs.getString("application_status"));
	            ad.setStudentPrn(rs.getLong("prn"));
	            ad.setFirstName(rs.getString("first_name"));
	            ad.setLastName(rs.getString("last_name"));
	            ad.setJobId(rs.getInt("job_id"));
	            ad.setRole(rs.getString("role"));
	            ad.setLocation(rs.getString("location"));
	            ad.setType(rs.getString("type"));
	            ad.setJobStatus(rs.getString("job_status"));
	            ad.setCompanyId(rs.getInt("company_id"));
	            ad.setCompanyName(rs.getString("company_name"));

	            list.add(ad);
	        }

	        rs.close();
	        pstmt.close();
	        con.close();

	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return list;
	}
	
	public int getTotalApplicationsByPrn(long prn) {

	    int count = 0;

	    try {

	        Connection con = DBConnection.getConnection();

	        String sql = "SELECT COUNT(*) "
	                   + "FROM applications a "
	                   + "JOIN student s ON a.student_id = s.student_id "
	                   + "WHERE s.prn = ?";

	        PreparedStatement pstmt = con.prepareStatement(sql);
	        pstmt.setLong(1, prn);

	        ResultSet rs = pstmt.executeQuery();

	        if (rs.next()) {
	            count = rs.getInt(1);
	        }

	        rs.close();
	        pstmt.close();
	        con.close();

	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return count;
	}
	
	public Map<String, Integer> getApplicationStatsByPrn(long prn) {

	    Map<String, Integer> stats = new HashMap<>();

	    try {

	        Connection con = DBConnection.getConnection();

	        String sql = "SELECT "
	                   + "COUNT(*) AS total, "
	                   + "SUM(CASE WHEN a.status IN ('Under Review','Interviewing') THEN 1 ELSE 0 END) AS in_progress, "
	                   + "SUM(CASE WHEN a.status = 'Offered' THEN 1 ELSE 0 END) AS offered, "
	                   + "SUM(CASE WHEN a.status = 'Rejected' THEN 1 ELSE 0 END) AS rejected "
	                   + "FROM applications a "
	                   + "JOIN student s ON a.student_id = s.student_id "
	                   + "WHERE s.prn = ?";

	        PreparedStatement pstmt = con.prepareStatement(sql);
	        pstmt.setLong(1, prn);

	        ResultSet rs = pstmt.executeQuery();

	        if (rs.next()) {
	            stats.put("total", rs.getInt("total"));
	            stats.put("in_progress", rs.getInt("in_progress"));
	            stats.put("offered", rs.getInt("offered"));
	            stats.put("rejected", rs.getInt("rejected"));
	        }

	        rs.close();
	        pstmt.close();
	        con.close();

	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return stats;
	}
	
	public ApplicationDetails getApplicationById(int applicationId) {

	    ApplicationDetails ad = new ApplicationDetails();

	    try {

	        Connection con = DBConnection.getConnection();

	        String sql = "SELECT a.application_id, a.status AS application_status, "
	                + "s.student_id, s.prn, s.first_name, s.last_name, s.address, "
	                + "s.contact, s.email, s.program_id, p.name AS program_name, "
	                + "s.bachelor_cgpa, s.postgrad_cgpa, s.ssc_percentage, s.hsc_percentage, "
	                + "j.job_id, j.role, j.description, j.vacancy, j.openings, "
	                + "j.location, j.type, j.status AS job_status, "
	                + "c.company_id, c.name AS company_name, "
	                + "c.representative, c.contact AS company_contact, "
	                + "c.email AS company_email, c.address AS company_address, "
	                + "c.website, c.prn AS company_prn, c.status AS company_status "
	                + "FROM applications a "
	                + "JOIN student s ON a.student_id = s.student_id "
	                + "JOIN program p ON s.program_id = p.program_id "
	                + "JOIN jobopening j ON a.job_id = j.job_id "
	                + "JOIN company c ON j.company_id = c.company_id "
	                + "WHERE a.application_id = ?";

	        PreparedStatement pstmt = con.prepareStatement(sql);
	        pstmt.setInt(1, applicationId);

	        ResultSet rs = pstmt.executeQuery();

	        if (rs.next()) {

	            ad.setApplicationId(rs.getInt("application_id"));
	            ad.setApplicationStatus(rs.getString("application_status"));

	            ad.setStudentPrn(rs.getLong("prn"));
	            ad.setFirstName(rs.getString("first_name"));
	            ad.setLastName(rs.getString("last_name"));
	            ad.setStudentAddress(rs.getString("address"));
	            ad.setStudentContact(rs.getLong("contact"));
	            ad.setStudentEmail(rs.getString("email"));
	            ad.setProgramId(rs.getInt("program_id"));
	            ad.setProgramName(rs.getString("program_name"));
	            ad.setBachelorCgpa(rs.getDouble("bachelor_cgpa"));
	            ad.setPostgradCgpa(rs.getDouble("postgrad_cgpa"));
	            ad.setSscPercentage(rs.getDouble("ssc_percentage"));
	            ad.setHscPercentage(rs.getDouble("hsc_percentage"));

	            ad.setJobId(rs.getInt("job_id"));
	            ad.setRole(rs.getString("role"));
	            ad.setDescription(rs.getString("description"));
	            ad.setVacancy(rs.getInt("vacancy"));
	            ad.setOpenings(rs.getInt("openings"));
	            ad.setLocation(rs.getString("location"));
	            ad.setType(rs.getString("type"));
	            ad.setJobStatus(rs.getString("job_status"));

	            ad.setCompanyId(rs.getInt("company_id"));
	            ad.setCompanyName(rs.getString("company_name"));
	            ad.setRepresentative(rs.getString("representative"));
	            ad.setCompanyContact(rs.getLong("company_contact"));
	            ad.setCompanyEmail(rs.getString("company_email"));
	            ad.setCompanyAddress(rs.getString("company_address"));
	            ad.setWebsite(rs.getString("website"));
	            ad.setCompanyPrn(rs.getLong("company_prn"));
	            ad.setCompanyStatus(rs.getString("company_status"));
	        }

	        rs.close();
	        pstmt.close();
	        con.close();

	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return ad;
	}
}
