package kpc.iot.smb.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SendController implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse reponse)
			throws ServletException, IOException {

		ActionForward forward = new ActionForward();
		forward.setPath("admin.jsp");
		return forward;
	}

}
