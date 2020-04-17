package com.info.action.beans;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.info.action.Action;
import com.info.action.ActionForward;
import com.info.model.beans.QueDAO;
import com.info.model.beans.QueMDTO;
import com.info.model.info.BeansDTO;

public class BeansListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		QueDAO dao = QueDAO.getInstance();
		String no = request.getParameter("q_no");
		String max = request.getParameter("max");
		System.out.println(max);
		if (no != null) {
			int mno = Integer.parseInt(no);
			QueMDTO dto = dao.queDTO(mno);
			dao.updateV(dto, Integer.parseInt(max));
			dto = dao.queMDTO(mno);
			List<BeansDTO> list = dao.beansList(dto);
			request.setAttribute("beanslist", list);
			
			ActionForward forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("./beans/taste_list.jsp");
			return forward;

		}

		return null;
	}
}
