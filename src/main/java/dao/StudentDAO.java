package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
// import org.slf4j.Logger;
// import org.slf4j.LoggerFactory;
import beans.Student;

public class StudentDAO {

//	private static final Logger logger = LoggerFactory.getLogger(StudentDAO.class);
	
	public int resultStudent = 0, resultLogin = 0;
	public boolean updateResult = false;

	public int newStudentRegistration(int prn, String firstName, String lastName, String address, long contact,
			String email, long programId, String username, String password) {
		
		
		try {
			Connection con = DBConnection.getConnection();

			String sqlStudent = "INSERT INTO student (prn, first_name, last_name, address, contact, email, program_id) "
					+ "VALUES (?, ?, ?, ?, ?, ?, ?)";

			String sqlLogin = "INSERT INTO login (username, password, role) " + "VALUES (?, ?, 'student')";

			PreparedStatement pstmt = con.prepareStatement(sqlStudent);

			pstmt.setInt(1, prn);
			pstmt.setString(2, firstName);
			pstmt.setString(3, lastName);
			pstmt.setString(4, address);
			pstmt.setLong(5, contact);
			pstmt.setString(6, email);
			pstmt.setLong(7, programId);

			resultStudent = pstmt.executeUpdate();
			System.out.println(resultStudent + "resultStudent Success");

			pstmt = con.prepareStatement(sqlLogin);
			pstmt.setString(1, username);
			pstmt.setString(2, password);

			resultLogin = pstmt.executeUpdate();
			System.out.println(resultLogin + "resultLogin Success");

			pstmt.close();
			con.close();

		} catch (Exception e) {
			e.printStackTrace();
		}

		return resultStudent + resultLogin;
	}

	public boolean updateStudentDetails(Student student) {

		try {
			Connection con = DBConnection.getConnection();

			String sqlStudent = "UPDATE student SET prn = ?, first_name = ?, last_name = ?, address = ?, "
					+ "contact = ?, email = ?, program_id = ?, bachelor_cgpa = ?, postgrad_cgpa = ?, "
					+ "ssc_percentage = ?, hsc_percentage = ? " + "WHERE prn = ?";

			PreparedStatement pstmt = con.prepareStatement(sqlStudent);

			pstmt.setLong(1, student.getPrn());
			pstmt.setString(2, student.getFirstName());
			pstmt.setString(3, student.getLastName());
			pstmt.setString(4, student.getAddress());
			pstmt.setString(5, student.getContact());
			pstmt.setString(6, student.getEmail());
			pstmt.setInt(7, student.getProgramId());
			pstmt.setDouble(8, student.getBachelorCgpa());
			pstmt.setDouble(9, student.getPostgradCgpa());
			pstmt.setDouble(10, student.getSscPercentage());
			pstmt.setDouble(11, student.getHscPercentage());
			pstmt.setLong(12, student.getPrn()); // WHERE prn

			int resultStudent = pstmt.executeUpdate();

			if (resultStudent == 1) {
				updateResult = true;
			}

			pstmt.close();
			con.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return updateResult;
	}

	public Student getStudentByPrn(Long prn) {

		Student student = null;

		try {
			Connection con = DBConnection.getConnection();

			String sql = "SELECT * FROM Student WHERE prn = ?";
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setLong(1, prn);

			ResultSet rs = pstmt.executeQuery();
			int programId = 0;
			if (rs.next()) {
				student = new Student();

				student.setStudentId(rs.getInt("student_id"));
				student.setPrn(rs.getLong("prn"));
				student.setFirstName(rs.getString("first_name"));
				student.setLastName(rs.getString("last_name"));
				student.setAddress(rs.getString("address"));
				student.setContact(rs.getString("contact"));
				student.setEmail(rs.getString("email"));
				student.setProgramId(rs.getInt("program_id"));
				student.setBachelorCgpa(rs.getDouble("bachelor_cgpa"));
				student.setPostgradCgpa(rs.getDouble("postgrad_cgpa"));
				student.setSscPercentage(rs.getDouble("ssc_percentage"));
				student.setHscPercentage(rs.getDouble("hsc_percentage"));
			}

			rs.close();
			pstmt.close();

			if (student != null) {
				String sqlProgram = "SELECT name FROM program WHERE program_id = ?";
				pstmt = con.prepareStatement(sqlProgram);
				pstmt.setInt(1, student.getProgramId());

				rs = pstmt.executeQuery();
				if (rs.next()) {
					student.setProgramName(rs.getString("name"));
				}

				rs.close();
				pstmt.close();
			}

			rs.close();
			pstmt.close();
			con.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return student;
	}

}
