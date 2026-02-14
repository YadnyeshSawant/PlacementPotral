package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import beans.Job;

public class JobDAO {

	public int result = 0;
	public int jobId = 0;
	public int newOpening(Job job) {

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");

			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/placementportal", "root",
					"ChangePass@1");

			String sql = "INSERT INTO JobOpening (company_id, role, description, vacancy, openings, location, type, approval_status) "
			           + "VALUES (?, ?, ?, ?, ?, ?, ?, 'Not-Approved')";

			PreparedStatement pstmt = con.prepareStatement(
			    sql,
			    Statement.RETURN_GENERATED_KEYS
			);

			pstmt.setInt(1, job.getCompanyId());
			pstmt.setString(2, job.getRole());
			pstmt.setString(3, job.getDescription());
			pstmt.setInt(4, job.getVacancy());
			pstmt.setInt(5, job.getOpenings());
			pstmt.setString(6, job.getLocation());
			pstmt.setString(7, job.getType());

			result = pstmt.executeUpdate();   // INSERT

			ResultSet rs = pstmt.getGeneratedKeys();  // NOW it works
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
}
