

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Mlaclogin
 */
@WebServlet("/Clientside")
public class Mlaclogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Mlaclogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		if((username.equals("ajith"))&&(password.equals("123")))
	out.println("<html>"+"<head><title>"+"Welcome to Login  Page"+ "</title></head><body>"+"<h1>"+"welcome to Maharani Lakshmi Ammanni college for women " + "<p>"+request.getParameter("username")+"</p>"+"</body></html>");
		else
	out.println("<html>"+"<head><title>"+"Login FAiled" +"</title></head><body>"+"<h1>"+"Invalid username/password"+"</h1>"+"</body></html>");
		}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
