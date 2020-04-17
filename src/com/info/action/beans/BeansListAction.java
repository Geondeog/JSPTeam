package com.info.action.beans;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.info.action.Action;
import com.info.action.ActionForward;
import com.info.model.beans.QueDAO;
import com.info.model.beans.QueMDTO;

public class BeansListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		QueDAO dao = QueDAO.getInstance();
		String no = request.getParameter("q_no");
		String max = request.getParameter("max");
		System.out.println(max);
		if(no != null) {
		QueMDTO dto = dao.queDTO(Integer.parseInt(no));
		
		
		}
		
		return null;
	}
}
