package action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import svc.GraphService;
import vo.ActionForward;

public class GraphAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("GraphAction");
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		
		GraphService graphService = new GraphService();
		ArrayList graph = graphService.getGraph();
		request.setAttribute("graph",graph);
		ArrayList monthGraph = graphService.getMonthGraph();
		request.setAttribute("monthGraph",monthGraph);
		ArrayList cafeGraph = graphService.getCafeGraph(id);
		request.setAttribute("cafeGraph", cafeGraph);
		ArrayList cafeIncomeByDay = graphService.getCafeIncomeByDay(id);
		request.setAttribute("cafeIncomeByDay", cafeIncomeByDay);
		ArrayList cafeIncomeByMonth = graphService.getCafeIncomeByMonth(id);
		request.setAttribute("cafeIncomeByMonth", cafeIncomeByMonth);
		
		ActionForward forward = new ActionForward();
		forward.setPath("/graph.jsp");
		return forward;
	}

}
