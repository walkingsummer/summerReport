package filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ReportUserLoginFilter implements Filter{

	@Override
	public void destroy() {
		
	}

	@Override
	public void doFilter(ServletRequest req, ServletResponse resp,
			FilterChain filterChain) throws IOException, ServletException {
		HttpServletRequest hreq = (HttpServletRequest)req;
		HttpServletResponse hresp = (HttpServletResponse)resp;
		HttpSession session = hreq.getSession();
		//int resultcode = (Integer)session.getAttribute("resultcode");
		
		Integer resultcode = null;
		try {
			resultcode = (Integer)session.getAttribute("resultcode");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		if(resultcode==0){
			filterChain.doFilter(req, resp);
		}else{
			hresp.sendRedirect("/helloworld/jsp/reportUserLogin/reportUserLogin.jsp");
		}
	
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		
	}

}
