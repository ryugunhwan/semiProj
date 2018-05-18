package sangeun;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Action;
import model.ActionData;
import model.ReserVO;

public class reservation implements Action {

	@Override
	public ActionData execute(HttpServletRequest request, HttpServletResponse responce) {
		
		String msg = "예약실패 : 늦음";
		String url = "Reser";


		ReserVO vo = (ReserVO)request.getAttribute("reservo");
		
		if(vo.getPart1()!=1) {
			msg="예약완료";
			url="Detail?rid="+vo.getNum();
		}
		
		
		request.setAttribute("msg", msg);
		request.setAttribute("url", url);
		request.setAttribute("main", "alert.jsp");
		
		
		/*
		예약하기 누르고 예약완료 띄우고 그러면 알터로 가자
		msg="예약완료"
		main="방금 한 예약 정보"
		
		거기서
		main="내정보 예약내역"
		홈으로
		이런거

		예약내역에서 취소 가능하게.
		*/
		// TODO Auto-generated method stub
		return new ActionData();
	}

	
}
