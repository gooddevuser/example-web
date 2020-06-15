package com.exampleweb.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

/**
 * Servlet Filter implementation class DemoFilter2
 */
@WebFilter("*.jsp")// <filter>, <filter-mapping>를 대체하는 annotation
public class DemoFilter2 implements Filter {
	
	public void init(FilterConfig fConfig) throws ServletException {

	}	

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
	
		System.out.println("This is Filter2");
		
		chain.doFilter(request, response);
	}


	public void destroy() {
	}

}
