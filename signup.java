/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package s1;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author 91722
 */
@WebServlet(name = "signup", urlPatterns = {"/signup"})
public class signup extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            Statement st = null;
            if(request.getParameter("signin")!=null)
            {
                Connection cn = null;
                while((cn = connect.getCon())!=null){
                    Thread.sleep(10);
                }
                CallableStatement cs=null;
                ResultSet rs = null ;
                String name = "";
                String gender = "";
                String phone = "";
                String password = "";
                name = request.getParameter("name");
                gender = request.getParameter("gtxt");
                phone = request.getParameter("pnum");
                password = request.getParameter("pass");
                System.out.println(name+gender+phone+password);
                String qr = "INSERT INTO `reg_detail`(`name`, `phone`, `gender`, `password`) VALUES ('"+name+"','"+phone+"','"+gender+"','"+password+"')";
                /*cs = cn.prepareCall("call reg_detail_insert(?,?,?,?)");
               
                cs.setString(1, name);
                cs.setString(2, phone);
                cs.setString(3, gender);
                cs.setString(4, password);
                cs.executeUpdate();  */
                response.sendRedirect("signup.jsp");
            }
        }
        catch(Exception e1)
        {
                //System.out.println(e1);
            e1.printStackTrace();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
