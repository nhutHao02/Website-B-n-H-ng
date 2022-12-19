package db;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectDB {
	private Connection con;
	public static String url = "jdbc:sqlserver://localhost:1433;databaseName=BookStore";
	public static String dbdriver = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
	public static String userName = "sa";
	public static String password = "12";

	public ConnectDB() {
	}
	public Connection getConnection() {
		try {
			Class.forName(dbdriver);
			con = DriverManager.getConnection(url, userName, password);
			System.out.println("Connect succesfull");	
		} catch (Exception e) {
			System.out.println("Error when you connect to database " + e.getMessage());
		}
		return con;
	}
public static void main(String[] args) {
	ConnectDB db=new ConnectDB();
	System.out.println(db.getConnection());
	
}
}
