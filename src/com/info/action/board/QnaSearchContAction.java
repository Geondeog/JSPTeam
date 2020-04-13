package com.info.action.board;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.info.action.Action;
import com.info.action.ActionForward;
import com.info.model.board.QnaDAO;
import com.info.model.board.QnaDTO;


public class QnaSearchContAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		int qna_no = Integer.parseInt(request.getParameter("no"));
		int nowPage = Integer.parseInt(request.getParameter("page"));
		String find_field = request.getParameter("field");
		String find_name = request.getParameter("name");
		
		QnaDAO dao = QnaDAO.getInstance();
		
		QnaDTO dto = dao.getQnaCont(qna_no);
		
		request.setAttribute("search", dto);
		request.setAttribute("page", nowPage);
		request.setAttribute("find_field", find_field);
		request.setAttribute("find_name", find_name);
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("qna_searchCont.jsp");
		
		return forward;

	}

}
