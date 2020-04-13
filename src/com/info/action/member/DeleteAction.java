package com.info.action.member;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.info.action.Action;
import com.info.action.ActionForward;
import com.info.model.member.MemberDAO;

public class DeleteAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		PrintWriter out = response.getWriter();
		// 현재 클라이언트의 세션 끊기
		HttpSession session = request.getSession();
		session.removeAttribute("mno"); // 세션에 들어있는 회원 번호 삭제
		session.invalidate(); // 세션 갱신
		String no = request.getParameter("no");
		int m_no = Integer.parseInt(no);
		MemberDAO dao = MemberDAO.getInstance();
		int result = dao.delete(m_no);

		out.print(result);
		return null;
	}
}