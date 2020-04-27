package kosta.mvc.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.Map;

import javax.servlet.ServletContext;
/**
 * View�쓽 紐⑤뱺 �슂泥��쓣 以묒븰吏묒쨷�쟻�쑝濡� 愿�由ы븯湲� �쐞�븳
 * FrontController�쓽 �뿭�븷�씠�떎
 * :�슂泥��쓣 諛쏆븘 Model(Service - BusinessLogic, DAO)履쎌쑝濡� �쟾�떖�븯怨� 洹� 寃곌낵瑜� 諛쏆븘�꽌
 * 寃곌낵View濡� �씠�룞�븯�뒗 �뿭�븷
 */
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/front", loadOnStartup = 1)
public class DispatcherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	Map<String, Controller> map;

	@Override
	public void init() throws ServletException {
		ServletContext application = super.getServletContext();
		map = (Map<String, Controller>) application.getAttribute("map");
	}

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String key = request.getParameter("key");
		
		if(key==null || key.equals(""))key="list";
		Controller controller= map.get(key);
		try {
			ModelAndView mv = controller.handleRequest(request, response);
			if (mv.isRedirect()) {
				response.sendRedirect(mv.getViewName());
			} else {
				request.getRequestDispatcher(mv.getViewName()).forward(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("errorMsg", e.getMessage());
			request.getRequestDispatcher("errorView/error.jsp").forward(request, response);
		}
	}

}
