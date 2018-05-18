package sangeun;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Action;
import model.ActionData;
import model.DAO;
import model.UserVO;

public class Reser implements Action {
	
	@Override
	public ActionData execute(HttpServletRequest request, HttpServletResponse responce) {
		
		
		DAO dao = new DAO();
		
		
		request.setAttribute("dao", dao);
		request.setAttribute("user", new UserVO(12, 500, "준호", "hoho", "창원시", "010-0011-1100"));
		request.setAttribute("today", new SimpleDateFormat("yyyy-MM-dd").format(new Date()));
		request.setAttribute("main", "reserForm.jsp");
		request.setAttribute("cate", dao.cateList().keySet());
//		dao.cateList().;
		System.out.println("???");
		System.out.println("긁어라"+request.getAttribute("today")+"===================");
		for (String st : dao.cateList().keySet()) {
			dao.cateList().get(st);
		}
		dao.close();
		
		
		return new ActionData();
		
	}
}
