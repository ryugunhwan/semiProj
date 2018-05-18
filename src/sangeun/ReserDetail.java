package sangeun;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Action;
import model.ActionData;

public class ReserDetail implements Action {

	@Override
	public ActionData execute(HttpServletRequest request, HttpServletResponse responce) {
		
		request.setAttribute("main", "reserForm.jsp");
//		request.setAttribute("part", request.getParameter("part"));
		
		
		return new ActionData();
	}
}