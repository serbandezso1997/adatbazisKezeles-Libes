import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Libes {
    public void getBooks(){
       System.out.println("Működik"); 
       Connection conn = null;
       String user = "libes";
       String pass = "titok";
       String url = "jdbc:mariadb://localhost:3306/libes";
       try {
        conn = DriverManager.getConnection(url,user,pass);
        System.out.println("OK");

        //jöhet a lekérdezés
        String sql = "select * from books";        
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery(sql);

        while (rs.next()) {
            //id int not null primary key auto_increment,
            //title varchar(50),
            //author varchar(50),
            //genre varchar(50)

            System.out.print(rs.getInt("id")+" || ");
            System.out.print(rs.getString("title")+" || ");
            System.out.print(rs.getString("author")+" || ");
            System.out.println(rs.getString("genre"));
            System.out.println("----------------------------------------");
        }

       } catch (SQLException e) {
        // TODO: handle exception
        System.err.println("Hiba, a kakpcsolódás sikertelen! ");
        System.err.println(e.getMessage());
       }
    }
}
