package com.codegym.pm.config;


import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
    public static Connection initializeDatabase() throws Exception {
        String dbName, dbUsername,dbPassword;
        Connection conn = null;
        try {
            String dbDriver = "com.mysql.jdbc.Driver";
            String dbURL = "jdbc:mysql://localhost:3308/";

            dbName = "Product";
            dbUsername = "root";
            dbPassword = "123456";

            Class.forName(dbDriver);
            conn = DriverManager.getConnection(dbURL + dbName,
                    dbUsername,
                    dbPassword);
        }catch( Exception e){
            System.out.println(e.getMessage());
        }
        return conn;
    }
}
