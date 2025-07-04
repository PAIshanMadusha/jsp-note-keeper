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

@WebServlet("/DeleteServlet")
public class DeleteServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Integer noteId = Integer.parseInt(request.getParameter("note_id"));
		PostDAO dao = new PostDAO(DBConnect.getConn());
		boolean f = dao.postDelete(noteId);

		HttpSession session = null;

		if (f) {
			session = request.getSession();
			session.setAttribute("updateMsg", "Note Deleted Successfully!");
			response.sendRedirect("showNotes.jsp");
		} else {
			session = request.getSession();
			session.setAttribute("deleteFaildMsg", "Something Went Wrong On Server!");
			response.sendRedirect("shownotes.jsp");
		}
	}

}
