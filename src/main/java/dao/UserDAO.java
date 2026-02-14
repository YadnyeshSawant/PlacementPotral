//package dao;
//
//import java.sql.Connection;
//import java.sql.DriverManager;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
//
//public class UserDAO {
//	private static final Logger logger = LoggerFactory.getLogger(StudentDAO.class);
//	public long prn;
//
//	public boolean validateUser(String uname, String upass, String role) {
//
//		boolean isValid = false;
//
//		try {
//			Class.forName("com.mysql.cj.jdbc.Driver");
//
//			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/placementportal", "root",
//					"ChangePass@1");
//
//			PreparedStatement pstmt = con
//					.prepareStatement("SELECT * FROM login WHERE username = ? AND password = ? AND role = ?");
//
//			pstmt.setString(1, uname);
//			pstmt.setString(2, upass);
//			pstmt.setString(3, role);
//
//			ResultSet rs = pstmt.executeQuery();
//
//			if (rs.next()) {
//				isValid = true; // login successful
//				prn = rs.getLong("prn");
//				logger.debug("Fetched PRN from palcementportal.login, prn={}", prn);
//			}
//			con.close();
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//
//		return isValid;
//	}
//	
//	
//	
//
//}

package dao;

import java.sql.*;

public class UserDAO {

    public Long validateUser(String uname, String upass, String role) {

        Long prn = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/placementportal",
                "root",
                "ChangePass@1"
            );

            PreparedStatement ps = con.prepareStatement(
                "SELECT prn FROM login WHERE username=? AND password=? AND role=?"
            );

            ps.setString(1, uname);
            ps.setString(2, upass);
            ps.setString(3, role);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                prn = rs.getLong("prn");
            }

            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return prn; // null = invalid login
    }
}