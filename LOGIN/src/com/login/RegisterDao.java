package com.login;
import java.sql.*;
public class RegisterDao {
	String username="root";
	String password="qwertyuiop";
	String url="jdbc:mysql://localhost:3306/myfirstschema";
	String query="insert into data values(?,?)";
	
	public boolean check(String uname,String pass) throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,username,password);
		PreparedStatement st=con.prepareStatement(query);
		st.setString(1, uname);
		st.setString(2, pass);
		int count=st.executeUpdate();
		if(count>0) {
			return true;
		}
		return false;
}
	
}
