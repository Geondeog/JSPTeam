package com.info.action.member;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.info.action.Action;
import com.info.action.ActionForward;
import com.info.model.member.MemberDAO;

public class DeleteAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		PrintWriter out = response.getWriter();
		String no = request.getParameter("no");
		if (no != null) {
			int m_no = Integer.parseInt(no);
			MemberDAO dao = MemberDAO.getInstance();
			int result = dao.delete(m_no);

			out.print(result);
			out.close();
		}
		return null;
	}
}