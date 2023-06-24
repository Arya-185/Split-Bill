/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package s1;

import java.sql.*;

/**
 *
 * @author 91722
 */
public class connect {
    static Connection cn=null;
    
    public static Connection getCon()
    {
        Connection cn = null;
        try
        {
            Class.forName("com.mysql.cj.jdbc.Driver");
            cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/split_bill?allowPublicKeyRetrieval=true&useSSL=false","devjariwala14","ioqUX5gnyjhYRMub");
        }
        catch(Exception e1)
        {
            System.out.println(e1);
        }
        return cn;
    }
    public static void main(String[] args) {
        System.out.println(getCon());
    }
}