package com.info.action.list;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.info.action.Action;
import com.info.action.ActionForward;
import com.info.model.info.InfoDAO;
import com.info.model.info.ReplyDTO;

public class WriteReplyAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		PrintWriter out = response.getWriter();
		ReplyDTO dto = new ReplyDTO();
		dto.setCont(request.getParameter("content"));
		dto.setWriterNum((int) request.getSession().getAttribute("num"));
		dto.setInfo_no(Integer.parseInt(request.getParameter("boardNum")));
		dto.setParentNum(Integer.parseInt(request.getParameter("parentNum")));
		dto.setDep(Integer.parseInt(request.getParameter("depth")));

		int res = InfoDAO.getInstance().insert(dto);
		out.println(res);
		out.close();
		return null;
	}
}
