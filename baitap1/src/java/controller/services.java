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
@WebServlet(name = "services", urlPatterns = {"/services"})
public class services extends HttpServlet {

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
            out.println("<title>Servlet services</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet services at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        processRequest(request, response);
        request.getRequestDispatcher("View/formSigninNew.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Thiết lập mã hóa ký tự cho yêu cầu và phản hồi
        response.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("UTF-8");

        response.setContentType("text/html; charset=UTF-8");
        // Lấy các giá trị từ form
        String taikhoan = request.getParameter("username");
        String matkhau = request.getParameter("password");
        String country = request.getParameter("country");
        String[] sothich = request.getParameterValues("sothich");
        String ghichu = request.getParameter("ghichu");

        // Xử lý giới tính
        String gioitinh = "";
        String genderParam = request.getParameter("gender");
        if (genderParam != null) {
            boolean gender = Boolean.parseBoolean(genderParam);
            gioitinh = gender ? "Nam" : "Nữ";
        } else {
            gioitinh = "Không xác định"; // Trường hợp không gửi giá trị giới tính
        }

        // Ghi thông tin ra response
        response.getWriter().println(">>Tai khoan: " + taikhoan + "<br/>");
        response.getWriter().println(">>Mat khau: " + matkhau + "<br/>");
        response.getWriter().println(">>Gioi tinh: " + gioitinh + "<br/>");
        response.getWriter().println(">>Quoc tich: " + country + "<br/>");

        // Xử lý sở thích (kiểm tra null)
        if (sothich != null && sothich.length > 0) {
            response.getWriter().println(">>So thich: " + String.join(", ", sothich) + "<br/>");
        } else {
            response.getWriter().println(">>So thich: Không có" + "<br/>");
        }

        response.getWriter().println(">>Ghi chu: " + ghichu + "<br/>");
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
