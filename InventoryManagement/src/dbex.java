import static java.lang.System.out;

import java.sql.Connection;
import java.sql.DriverManager;


public class dbex {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		try {
			/*here mysqltest is the database name. you have to give the database name you have created and 3306 is the default sql port */
			String connectionURL = "jdbc:mysql://localhost:3306/ims"; 
			 
			Connection connection = null; 
			 
			Class.forName("com.mysql.jdbc.Driver").newInstance(); 
			 
			/* "root" and "root" are the mysql username and password . if you have a different user name and password you have to change that in code */
			 
			connection = DriverManager.getConnection(connectionURL, "root", "sql1");
			 
			if(!connection.isClosed())
			
			out.println("Successfully connected to " + "MySQL server using TCP/IP...");
			connection.close();
			}
			catch(Exception ex){
			
			out.println("Unable to connect to database.");
			}
	}

}
