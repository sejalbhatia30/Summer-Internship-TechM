import java.sql.Connection;
import java.sql.DriverManager;
import static java.lang.System.out;

public class db {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		try {
			
			String connectionURL = "jdbc:mysql://localhost:3306/ims";

			Connection connection = null;

			Class.forName("com.mysql.jdbc.Driver").newInstance();


			connection = DriverManager.getConnection(connectionURL, "root",
					"sql1");

			if (!connection.isClosed())

				out.println("Successfully connected to "
						+ "MySQL server using TCP/IP...");
			connection.close();
		} catch (Exception ex) {

			out.println("Unable to connect to database.");
		}

	}

}
