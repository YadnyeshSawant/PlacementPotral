package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import java.util.ArrayList;
import java.util.List;

import beans.Application;
import beans.Job;
import helper.DBConnection;

public class JobDAO {

	public int result = 0;
	public int jobId = 0;

	public int newOpening(Job job) {

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");

			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/placementportal", "root",
					"ChangePass@1");

			String sql = "INSERT INTO JobOpening (company_id, role, description, vacancy, openings, location, type, approval_status,status) "
					+ "VALUES (?, ?, ?, ?, ?, ?, ?, 'Not-Approved','open')";

			PreparedStatement pstmt = con.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);

			pstmt.setInt(1, job.getCompanyId());
			pstmt.setString(2, job.getRole());
			pstmt.setString(3, job.getDescription());
			pstmt.setInt(4, job.getVacancy());
			pstmt.setInt(5, job.getOpenings());
			pstmt.setString(6, job.getLocation());
			pstmt.setString(7, job.getType());

			result = pstmt.executeUpdate(); // INSERT

			ResultSet rs = pstmt.getGeneratedKeys(); // NOW it works
			if (rs.next()) {
				jobId = rs.getInt(1);
			}

			rs.close();
			pstmt.close();
			con.close();

		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;
	}

	public List<Job> getJobsByPage(int start, int limit) {

		List<Job> jobList = new ArrayList<>();

		try {

			Connection con = DBConnection.getConnection();
			String sql = "SELECT j.*, c.name AS company_name "
			           + "FROM jobopening j "
			           + "JOIN company c ON j.company_id = c.company_id "
			           + "WHERE j.approval_status='Approved' AND j.status='open' "
			           + "ORDER BY j.job_id DESC "
			           + "LIMIT ?, ?";
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, start);
			pstmt.setInt(2, limit);

			ResultSet rs = pstmt.executeQuery();

//	        int count = 0;
//
//	        while (rs.next()) {
//	            count++;
//	        }

			while (rs.next()) {
				Job job = new Job();
				job.setJobId(rs.getInt("job_id"));
				job.setCompanyId(rs.getInt("company_id"));
				job.setCompanyName(rs.getString("company_name"));
				job.setRole(rs.getString("role"));
				job.setDescription(rs.getString("description"));
				job.setVacancy(rs.getInt("vacancy"));
				job.setLocation(rs.getString("location"));
				job.setType(rs.getString("type"));
				job.setStatus(rs.getString("status"));
//	            job.setTotalJobOpenings(count);
				jobList.add(job);
			}

			rs.close();
			pstmt.close();
			con.close();

		} catch (Exception e) {
			e.printStackTrace();
		}

		return jobList;
	}

	public int getTotalJobCount() {

		int count = 0;

		try {
			Connection con = DBConnection.getConnection();
			String sql = "SELECT COUNT(*) FROM jobopening " + "WHERE approval_status='Approved' AND status='open'";

			PreparedStatement pstmt = con.prepareStatement(sql);
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

	public boolean applyJob(int jobId,int studentId) {

		boolean apply = false;

		try {
			Connection con = DBConnection.getConnection();
			String sql = "INSERT INTO Applications (student_id, job_id, status) VALUES (?, ?, 'Submitted')";

			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, studentId);
			pstmt.setInt(2, jobId);
			
			int rs = pstmt.executeUpdate();

			if (rs == 1) {
				apply =true;
			}
			
			pstmt.close();
			con.close();

		} catch (Exception e) {
			e.printStackTrace();
		}

		return apply;
	}
	
	
	
}
