package DAO;
import java.sql.*;

import javax.jws.WebService;
@WebService
public abstract class MainDao {

  Connection con;

 public Connection getConnection()throws Exception
 {
    try{ Class.forName("oracle.jdbc.OracleDriver");

             con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","hr","Sukranth_123");
            return con;
        }
        catch(Exception e)
        {
            System.out.println("Exception2 is "+e);
              throw (e);
        }
}
}