package admin;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.siot.IamportRestClient.IamportClient;
import com.siot.IamportRestClient.exception.IamportResponseException;
import com.siot.IamportRestClient.response.IamportResponse;
import com.siot.IamportRestClient.response.PagedDataList;
import com.siot.IamportRestClient.response.Payment;

public class PayManagement implements AdminService {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
			int nowPage = 1;
			int totalPage = 1;
			String status = null;
			long from = 0, to = 0;
			Date dd = null;
			String startDay = request.getParameter("from"), endDay = request.getParameter("to");

			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			
			if(request.getParameter("nowPage") != null) {
				nowPage = Integer.parseInt(request.getParameter("nowPage"));
			}
			if(request.getParameter("status") != null) {
				status = request.getParameter("status");
				request.setAttribute("status", status);
			}else {
				request.setAttribute("status", status);
				status = "all";
			}
			
			if(request.getParameter("from") != null && request.getParameter("from") != "") {
				try {
					from = sdf.parse(startDay).getTime()/1000;
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if(request.getParameter("to") != null && request.getParameter("to") != "") {
				try {
					dd = sdf.parse(endDay);
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				dd.setSeconds(86399);
				to = dd.getTime()/1000;
			}
			System.out.println(from+", "+to);
			List<Payment> list = null;
			IamportResponse<PagedDataList<Payment>> ir = null;
		try {
			IamportClient ic = new IamportClient("6801043410407341", "NTknoebHso7pbzuSuxtCiQeKYZAIuLFDQ4nBM0Z6IZOEbyVrYV71D30u3fZGuDhBZGCO15liKBOh8CUN");
			try {
				ir = ic.paymentsByStatus(status, nowPage, 10, from, to, "-started");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
//			IamportResponse<Payment> i = ic.paymentByImpUid("imp_133406115829");
//			Payment pp = i.getResponse();
//			System.out.println(pp.getPayMethod());
			/*
			 * for(int i = 0; i<ir.getResponse().getTotal(); i++) {
			 * list.add(ir.getResponse().getList().get(i)); ir.getResponse().getList(); }
			 */
			list = ir.getResponse().getList();
			if(list.size() > 0) {
				totalPage = ir.getResponse().getTotal()/10;
				if((long)ir.getResponse().getTotal()%10 > 0) {
					totalPage += 1;
				}
			}
			
			request.setAttribute("list", list);
			request.setAttribute("totalPage", totalPage);
			request.setAttribute("nowPage", nowPage);
			request.setAttribute("startDay", startDay);
			request.setAttribute("endDay", endDay);
			request.setAttribute("total", ir.getResponse().getTotal());
			request.setAttribute("mainUrl", "../adminPage/adminMain.jsp");
			request.setAttribute("content", "../adminPage/paymentPage.jsp");
		} catch (IamportResponseException e) {
			e.printStackTrace();
		}
	}
}