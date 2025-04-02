

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


import com.mongodb.client.MongoClient;
import com.mongodb.client.MongoClients;
import com.mongodb.client.MongoDatabase;

public class MongoDBConnectionExample {
    
    private static final String URI = "mongodb://localhost:27017";
    
    public static void main(String[] args) {
        // Connect to MongoDB server
        try (MongoClient mongoClient = MongoClients.create(URI)) {
            
            // Access the database
            MongoDatabase database = mongoClient.getDatabase("mydb");
            
            System.out.println("Connected to MongoDB database: " + database.getName());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

import com.mongodb.client.MongoCollection;
import org.bson.Document;

public class MongoDBCreateExample {

    public static void main(String[] args) {
        try (MongoClient mongoClient = MongoClients.create(URI)) {
            
            MongoDatabase database = mongoClient.getDatabase("mydb");
            MongoCollection<Document> collection = database.getCollection("employees");

            // Create a new document
            Document employee = new Document("name", "Raj")
                                .append("age", 30)
                                .append("department", "IT");
            
            // Insert the document
            collection.insertOne(employee);
            
            System.out.println("Document inserted: " + employee.toJson());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

try (MongoClient mongoClient = MongoClients.create(URI)) {
            
            MongoDatabase database = mongoClient.getDatabase("mydb");
            MongoCollection<Document> collection = database.getCollection("employees");

            // Update the department of an employee with name "Raj"
            collection.updateOne(Filters.eq("name", "Raj"),
                                 Updates.set("department", "Engineering"));
            
            System.out.println("Document updated successfully.");
        } catch (Exception e) {
            e.printStackTrace();
        }

package mongodb_CURD;

import org.bson.Document;


import com.mongodb.client.MongoClients;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import com.mongodb.client.model.Filters;
import com.mongodb.client.model.Updates;

public class MongoDBConnectionExampleII {
	
	private static final String URI = "mongodb://localhost:27017";

	public static void main(String[] args) {
		try (com.mongodb.client.MongoClient mongoClient = MongoClients.create(URI)) {
		            
		            MongoDatabase database = mongoClient.getDatabase("practice1");
		            MongoCollection<Document> collection = database.getCollection("products");
		
		            // Update the department of an employee with name "Raj"
		            collection.updateMany(Filters.eq("price", 799),
		                                 Updates.set("price", 899));
		            
		            System.out.println("Document updated successfully.");
		        } catch (Exception e) {
		            e.printStackTrace();
		        }
			}
}

package mongodb_CURD;

import org.bson.Document;

import com.mongodb.client.MongoClient;
import com.mongodb.client.MongoClients;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoCursor;
import com.mongodb.client.MongoDatabase;
import com.mongodb.client.model.Filters;

public class MongoDBConnectionExampleIII {

    private static final String URI = "mongodb://localhost:27017";

    public static void main(String[] args) {
        try (MongoClient mongoClient = MongoClients.create(URI)) {

            MongoDatabase database = mongoClient.getDatabase("practice1");
            MongoCollection<Document> collection = database.getCollection("products");

            
            System.out.println("All Documents:");
            try (MongoCursor<Document> cursor = collection.find().iterator()) {
                while (cursor.hasNext()) {
                    System.out.println(cursor.next().toJson());
                }
            }

            
            int targetPrice = 899;
            System.out.println("\nDocuments with price " + targetPrice + ":");
            try (MongoCursor<Document> cursor = collection.find(Filters.eq("price", targetPrice)).iterator()) {
                while (cursor.hasNext()) {
                    System.out.println(cursor.next().toJson());
                }
            }

            
            int minPrice = 800;
            System.out.println("\nDocuments with price greater than " + minPrice + ":");
            try (MongoCursor<Document> cursor = collection.find(Filters.gt("price", minPrice)).iterator()) {
                while (cursor.hasNext()) {
                    System.out.println(cursor.next().toJson());
                }
            }

           
            String targetName = "xPhone";
            System.out.println("\nDocuments with name " + targetName + ":");
            try(MongoCursor<Document> cursor = collection.find(Filters.eq("name", targetName)).iterator()){
                while(cursor.hasNext()){
                    System.out.println(cursor.next().toJson());
                }
            }
            
            System.out.println("Odd-Indexed Products:");
            try (MongoCursor<Document> cursor = collection.find().iterator()) {
                int index = 0;
                while (cursor.hasNext()) {
                    Document document = cursor.next();
                    if (index % 2 == 0) { 
                        System.out.println(document.toJson());
                    }
                    index++;
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

package mongodb_CURD;

import org.bson.Document;

import com.mongodb.client.MongoClient;
import com.mongodb.client.MongoClients;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import com.mongodb.client.model.Filters;

public class MongoDBConnectionExampleV {

    private static final String URI = "mongodb://localhost:27017";

    public static void main(String[] args) {
        try (MongoClient mongoClient = MongoClients.create(URI)) {

            MongoDatabase database = mongoClient.getDatabase("practice1");
            MongoCollection<Document> collection = database.getCollection("products");

           
            Document deletedDocument = collection.findOneAndDelete(Filters.eq("name", "xPhone")); // Replace "Specific Product"

            if (deletedDocument != null) {
                System.out.println("Deleted document: " + deletedDocument.toJson());
            } else {
                System.out.println("Document with the specified name not found.");
            }

            
//            long deletedCount = collection.deleteMany(Filters.gt("price", 1000)).getDeletedCount(); //delete all products with price greater than 1000
//            System.out.println("Deleted " + deletedCount + " documents.");

            // caution ahead!
            //long allDeletedCount = collection.deleteMany(new Document()).getDeletedCount();
            //System.out.println("Deleted all " + allDeletedCount + " documents in the collection.");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

package mongodb_CURD;

import org.bson.Document;

import com.mongodb.client.MongoClient;
import com.mongodb.client.MongoClients;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoCursor;
import com.mongodb.client.MongoDatabase;
import com.mongodb.client.model.Filters;

public class MongoDBConnectionExampleVI {

    private static final String URI = "mongodb://localhost:27017";

    public static void main(String[] args) {
        try (MongoClient mongoClient = MongoClients.create(URI)) {

            MongoDatabase database = mongoClient.getDatabase("practice1");
            MongoCollection<Document> collection = database.getCollection("products");

        
            System.out.println("Documents with 'description' field:");
            try (MongoCursor<Document> cursor = collection.find(Filters.exists("spec")).iterator()) {
                while (cursor.hasNext()) {
                    System.out.println(cursor.next().toJson());
                }
            }

            
            System.out.println("\nDocuments where 'price' is a int:");
            try (MongoCursor<Document> cursor = collection.find(Filters.type("price", "int")).iterator()) {
                while (cursor.hasNext()) {
                    System.out.println(cursor.next().toJson());
                }
            }

            
            System.out.println("\nDocuments where 'tags' array has size 3:");
            try (MongoCursor<Document> cursor = collection.find(Filters.size("color", 3)).iterator()) {
                while (cursor.hasNext()) {
                    System.out.println(cursor.next().toJson());
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
