package com.info.action.list;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.info.action.Action;
import com.info.action.ActionForward;
import com.info.model.info.InfoDTO;


public class InfoListAction implements Action {
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// 게시글 목록 & paging
		String info_genre = request.getParameter("genre");
		String nowPage = request.getParameter("page");
		
		List<InfoDTO> list = infoPaging(request, info_genre, nowPage);
		
		request.setAttribute("list", list);

		ActionForward next = new ActionForward();
		next.setRedirect(false);
		next.setPath("./info/list_view.jsp");
		return next;
	}
}
