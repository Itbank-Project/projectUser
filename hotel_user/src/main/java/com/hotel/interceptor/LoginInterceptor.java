package com.hotel.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginInterceptor extends HandlerInterceptorAdapter{

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession(false);
		if(session != null && session.getAttribute("login") != null) {
			return true;
		}
		
		String requestURI = request.getRequestURI();	// 어느 주소를 요청했는가?
		StringBuffer requestURL = request.getRequestURL();
		System.out.println("URL : " + requestURL);
		
		String serveletURI = request.getServletPath();
		requestURI = requestURI.substring(request.getContextPath().length());
		System.out.println(requestURI);
		response.sendRedirect(request.getContextPath() + "/login?uri=" + requestURI);
		System.out.println("주소 : " + request.getContextPath() + "/login?uri="+ requestURI);
		System.out.println("requestURI : " + requestURI);
		return false; 
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView mav) throws Exception {
		
	}

}
