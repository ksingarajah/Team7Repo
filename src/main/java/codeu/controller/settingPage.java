package codeu.controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class settingPage extends HttpServlet {
    public static String colorType;

    // this method accepts color type from action matcher class
    public static void changeBackgroundcolor(String black){
         colorType = black;
    }

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
        request.getRequestDispatcher("/WEB-INF/view/activity.jsp").forward(request, response);
    }
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
       request.setAttribute("color",colorType);
        request.getRequestDispatcher("/WEB-INF/view/activity.jsp").forward(request, response);
        return;
    }
}
