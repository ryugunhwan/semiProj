package sangeun;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Action;
import model.ActionData;
import model.DAO;
import model.ReserVO;
import model.UserVO;

public class ReserList implements Action {

	@Override
	public ActionData execute(HttpServletRequest request, HttpServletResponse responce) {
		
		DAO dao = new DAO();
		
		UserVO user = (UserVO)request.getAttribute("user");
		ReserVO reser = (ReserVO)request.getAttribute("reservo");
		request.setAttribute("engi", dao.reserEngi(reser.getGid()));
		request.setAttribute("myreser", dao.userReser(user.getUserId()));
		
		
		return new ActionData();
	}
}
