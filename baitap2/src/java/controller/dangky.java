/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Admin
 */
@WebServlet(name = "dangky", urlPatterns = {"/dangky"})
public class dangky extends HttpServlet {

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
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet dangky</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet dangky at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
//        processRequest(request, response);
        request.getRequestDispatcher("/View/dangkyForm.jsp").forward(request, response);
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
//        processRequest(request, response);
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        // tk, mk, xac nhan mat khau, sothich, gioi tinh, quoc tich
        String taikhoan = request.getParameter("username"); // 
        String matkhau = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");
        String[] sothich = request.getParameterValues("sothich");
        String gioitinh = "";
        String gender = request.getParameter("gioitinh");
        if (gender != null) {
            boolean genderP = Boolean.parseBoolean(gioitinh);
            gioitinh = genderP ? "Nam" : "Nữ";
        } else {
            gioitinh = "không xác định";
        }
        String quoctich = request.getParameter("quoctich");

        if (matkhau.equals(confirmPassword)) {
            response.getWriter().println("<style>");
            response.getWriter().println("table{border-collapse: collapse; width: 80% } th,td{border: 1px solid #ccc; text-align: center}");
            response.getWriter().println("</style>");
            
            response.getWriter().println("<center>");
            response.getWriter().println("<table>");

            // hàng 1
            response.getWriter().println("<tr>");
            // tai khoan
            response.getWriter().println("<th>");
            response.getWriter().println("Tài khoản");
            response.getWriter().println("</th>");
            // mat khau
            response.getWriter().println("<th>");
            response.getWriter().println("Mật khẩu");
            response.getWriter().println("</th>");
            //so thich
            response.getWriter().println("<th>");
            response.getWriter().println("Sở thích");
            response.getWriter().println("</th>");
            //gioi tinh
            response.getWriter().println("<th>");
            response.getWriter().println("Giới tính");
            response.getWriter().println("</th>");
            //quoc tich
            response.getWriter().println("<th>");
            response.getWriter().println("Quốc tịch");
            response.getWriter().println("</th>");
            response.getWriter().println("</tr>");

            // hàng 2
            response.getWriter().println("<tr>");
            // tai khoan
            response.getWriter().println("<td>");
            response.getWriter().println(taikhoan);
            response.getWriter().println("</td>");
            // mat khau
            response.getWriter().println("<td>");
            response.getWriter().println(matkhau);
            response.getWriter().println("</td>");
            // so thich
            response.getWriter().println("<td>");
            if (sothich != null && sothich.length > 0) {
                response.getWriter().println(String.join("<br>", sothich));
            } else {
                response.getWriter().println("Không có");
            }
            response.getWriter().println("</td>");

            // gioi tinh
            response.getWriter().println("<td>");
            response.getWriter().println(gioitinh);
            response.getWriter().println("</td>");

            // quoc tich
            response.getWriter().println("<td>");
            response.getWriter().println(quoctich);
            response.getWriter().println("</td>");
            response.getWriter().println("</tr>");
            response.getWriter().println("</table>");
            response.getWriter().println("</center>");
        } else {
            request.setAttribute("errorMessage", "Mat khau khong trung khop!");
            request.getRequestDispatcher("/View/dangkyForm.jsp").forward(request, response);
        }
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
