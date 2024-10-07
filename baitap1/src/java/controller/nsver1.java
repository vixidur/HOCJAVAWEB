/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Administrator
 */
@WebServlet(name = "nsver1", urlPatterns = {"/nsver1"})
public class nsver1 extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>DUONGKENH24H.SITE</title>");
            out.println("</head>");
            out.println("<body>");
//            out.println("<h1>Servlet nsver1 at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        // HIỂN THỊ RA LỚP HỌC
        request.setAttribute("tn", "DHTI15A16HN");

        // ĐỊNH DẠNG NGÀY GIỜ THEO KHU VỰC VIỆT NAM
        Date now = new Date();
        SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
        dateFormat.setTimeZone(TimeZone.getTimeZone("Asia/Ho_Chi_Minh"));
        String formattedDate = dateFormat.format(now);
        request.setAttribute("now", formattedDate);
        request.getRequestDispatcher("/View/loginForm.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getParameter("action");
        if ("register".equals(action)) {
            request.getRequestDispatcher("/View/signinForm.jsp").forward(request, response);
            return;
        }
        String actionLogin = request.getParameter("action-login");
        if ("login".equals(actionLogin)) {
            request.getRequestDispatcher("/View/loginForm.jsp").forward(request, response);
            return;
        }
        String a = request.getParameter("soa");
        String b = request.getParameter("sob");
        double soa = Double.parseDouble(a);
        double sob = Double.parseDouble(b);
        double res = 0;
        String errorMessage = "";
        String op = request.getParameter("operation");

        switch (op) {
            case "+":
                res = soa + sob;
                break;
            case "-":
                res = soa - sob;
                break;
            case "*":
                res = soa * sob;
                break;
            case "/":
                if (sob == 0) {
                    errorMessage = "Không thể chia hết cho 0";
                } else {
                    res = soa / sob;
                }
                break;
        }

        request.setAttribute("result", res);
        request.setAttribute("errorMessage", errorMessage);
        request.getRequestDispatcher("/View/calculator.jsp").forward(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
