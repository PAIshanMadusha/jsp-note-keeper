package com.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.PostDAO;
import com.Db.DBConnect;

@WebServlet("/EditNotesServlet")
public class EditNotesServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			Integer noteId = Integer.parseInt(request.getParameter("noteId"));
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			
			PostDAO dao = new PostDAO(DBConnect.getConn());
			boolean f = dao.postUpdate(noteId, title, content);
			
			if(f) {
				System.out.print("Data Updated Successfully!");
				HttpSession session = request.getSession();
				session.setAttribute("updateMsg", "Note Updated Successfully!");
				response.sendRedirect("showNotes.jsp");
			}else {
				System.out.print("Data Not Updated");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
