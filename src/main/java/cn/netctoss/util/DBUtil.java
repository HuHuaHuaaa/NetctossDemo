package cn.netctoss.util;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class DBUtil {
    private static String driver;
    private static String url;
    private static String username;
    private static String password;
    static {
        Properties p=new Properties();
        try {
            p.load(DBUtil.class.getClassLoader().getResourceAsStream("db.properties"));
            driver=p.getProperty("driver");
            url=p.getProperty("url");
            username=p.getProperty("username");
            password=p.getProperty("password");
            Class.forName(driver);
        } catch (IOException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(url,username,password);
    }

    public static void close(Connection conn){
        try {
            if (conn!=null){
                conn.close();
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }
}
