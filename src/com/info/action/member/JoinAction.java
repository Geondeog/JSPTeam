package com.info.action.member;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.info.action.Action;
import com.info.action.ActionForward;
import com.info.model.member.MemberDAO;
import com.info.model.member.MemberDTO;

public class JoinAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String m_id = request.getParameter("m_id");
		String m_pwd = request.getParameter("m_pwd");
		String m_nickname = request.getParameter("m_nickname");
		String tel1 = request.getParameter("tel1");
		String tel2 = request.getParameter("tel2");
		String tel3 = request.getParameter("tel3");
		String m_tel = tel1 + "-" + tel2 + "-" + tel3;
		String m_email1 = request.getParameter("m_email1");
		String m_email2 = request.getParameter("m_email2");
		String m_email = m_email1 + "@" + m_email2;
		String postcode = request.getParameter("postcode");
		String address = request.getParameter("address");
		String detailAddress = request.getParameter("detailAddress");
		String extraAddress = request.getParameter("extraAddress");
		String m_address = postcode + "|" + address + "|" + detailAddress + "|" + extraAddress;
		
		MemberDTO dto = new MemberDTO();
		dto.setM_id(m_id);
		dto.setM_pwd(m_pwd);
		dto.setM_nickname(m_nickname);
		dto.setM_tel(m_tel);
		dto.setM_email(m_email);
		dto.setM_address(m_address);
			
		MemberDAO dao = MemberDAO.getInstance();
		dto.setM_no(dao.m_noCheck());
		
		int result = dao.insertMember(dto);
		PrintWriter out = response.getWriter();
		
		if (result > 0) {
			out.println(result);
			out.close();
		}
		
		return null;
		
	}
}
