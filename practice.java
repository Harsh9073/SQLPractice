

package practice1;

public class Testing1{
  public static void main(String[] args){
    System.out.println("Radhe Radhe");
  }
}


import java.sql.*;

public class JDBC{
  public static void main(String[] args){
    try{
      Class.forName("com.mysql.cj.jdbc.Driver");  
      System.out.println("11111)
      Connection con = DriverManager.getConnection(
        "jdbc:mysql: // localhost:3306 /friday" , "root","root");
      
      System.out.println("22222");
      Statement stmt = con.createStatement();   
      System.out.println("33333");  
      ResultSet rs = stmt.executeQuery("select * from student");  
  
      while(rs.next())
      System.out.println(rs.getInt(1)+ " " + rs.getString + " " + rs.getString(3);
      }
      con.close();   
  
      }
    catch(Exception e){
      System.out.println("Shubham check your program, there is a small error");
    }
  }
}


import java.sql.Connection;
import java.sql.DriverManager;
public class CRUD_Test {
  public static void main(String[] args) {
    DB_Connection obj_DB_Connection = new DB_Connection();
    System.out.println(obj_DB_Connection.connection());
  }
  public Connection connection(){
    Connection connection = null;
    try{
      Class.forName("com.mysql.cj.jdbc.Driver");
      connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/saturday","root","root");
    } catch(Exception e){
      System.out.println(e);
    }
    return connection;



import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class CRUD_Test {
  public static void main(String[] args){
    CRUD_Test objTest = new CRUD_Test();

    objTest.create_data("1","Shubham","shubham@gmail.com");
    objTest.create_data("2","Shubham","shubhamraj@gmail.com");

  }

  public void create_data(String sl_no, String name, String email){
    DB_Connection obj_DB_Connection = new DB_Connection();
    Connection connection = obj_DB_Connection.connection();
    PreparedStatement ps = null;
    try{
      
      ps = connection.prepareStatement( "insert into user(sl_no, name, email) values (?,?,?)");
      ps.setString(1,sl_no);
      ps.setString(2,name);
      ps.setString(3,email);
      System.out.println(ps);
      ps.executeUpdate();
    } catch (Exception e){
      System.out.println(e);
    }
  }
}
      
    
    

package CRUD;
import java.sql.Connection;
import java.sql.DriverManager;
public class DB_Connection {
public static void main(String[] args) {
  DB_Connection obj_DB_Connection=new DB_Connection();
  System.out.println(obj_DB_Connection.get_connection());
}
public Connection get_connection(){
 Connection connection=null;
try {
  Class.forName("com.mysql.jdbc.Driver");              
  connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/crud","root", "root");
} catch (Exception e) {
  System.out.println(e);
}
  return connection;
}
}




CRUD_Test.java
package CRUD;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
public class CRUD_Test {

public static void main(String[] args) {
	CRUD_Test objTest=new CRUD_Test();
        //insert data
	objTest.create_data("1", "jinu", "jinu@gmail.com");
	objTest.create_data("2", "jawad", "jawad@gmail.com");
        //read data
	objTest.read_data("2");
        //update data
	objTest.update_data("2", "22", "jawad2", "jawad2@gmail");
        //delete data
	objTest.delete_data("1");
}

public void create_data(String sl_no,String name,String email){
	DB_Connection obj_DB_Connection=new DB_Connection();
	Connection connection=obj_DB_Connection.get_connection();
	PreparedStatement ps=null;
	try {
		String query="insert into user(sl_no,name,email) values (?,?,?)";
		ps=connection.prepareStatement(query);
		ps.setString(1, sl_no);
		ps.setString(2, name);
		ps.setString(3, email);
		System.out.println(ps);
		ps.executeUpdate();
	} catch (Exception e) {
		System.out.println(e);
	}
}

public void read_data(String sl_no){
	DB_Connection obj_DB_Connection=new DB_Connection();
	Connection connection=obj_DB_Connection.get_connection();
	PreparedStatement ps=null;
	ResultSet rs=null;
	try {
		String query="select * from user";
		ps=connection.prepareStatement(query);
		//ps.setString(1, sl_no);
		System.out.println(ps);
		rs=ps.executeQuery();
		while(rs.next()){
		System.out.println("Sl no -"+rs.getString("sl_no"));
		System.out.println("name -"+rs.getString("name"));
		System.out.println("email -"+rs.getString("email"));
		System.out.println("---------------");
		}
	} catch (Exception e) {
		System.out.println(e);
	}
}

public void update_data(String sl_no,String new_sl_no,String name,String email){
	DB_Connection obj_DB_Connection=new DB_Connection();
	Connection connection=obj_DB_Connection.get_connection();
	PreparedStatement ps=null;
	try {
		String query="update user set sl_no=?,name=?,email=? where sl_no=?";
		ps=connection.prepareStatement(query);
		ps.setString(1, new_sl_no);
		ps.setString(2, name);
		ps.setString(3, email);
		ps.setString(4, sl_no);
		System.out.println(ps);
		ps.executeUpdate();
	} catch (Exception e) {
		System.out.println(e);
	}
}

public void delete_data(String sl_no){
	DB_Connection obj_DB_Connection=new DB_Connection();
	Connection connection=obj_DB_Connection.get_connection();
	PreparedStatement ps=null;
	try {
		String query="delete from user where sl_no=?";
		ps=connection.prepareStatement(query);
		ps.setString(1, sl_no);
		System.out.println(ps);
		ps.executeUpdate();
	} catch (Exception e) {
		System.out.println(e);
	}
}
}



