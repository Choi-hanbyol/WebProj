package admin;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.FranchiseeDAO;
import dto.FranchiseeDTO;

public class FranchiseeList implements AdminService{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		ArrayList<FranchiseeDTO> list = new ArrayList<FranchiseeDTO>();
		
		list = new FranchiseeDAO().list();
		
		request.setAttribute("list", list);
		request.setAttribute("content", "../adminPage/franchiseeList.jsp");
	}
}
