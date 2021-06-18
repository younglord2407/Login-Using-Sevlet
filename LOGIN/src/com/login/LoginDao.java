package com.login;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginDao {
	String username="root";
	String password="qwertyuiop";
	String url="jdbc:mysql://localhost:3306/myfirstschema";
	String query="select * from data where username=? and pass=?";
	
	public boolean check(String uname,String pass) throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,username,password);
		PreparedStatement st=con.prepareStatement(query);
		st.setString(1, uname);
		st.setString(2, pass);
		ResultSet rs=st.executeQuery();
		if(rs.next()) {
			return true;
		}
		return false;
	}
}
