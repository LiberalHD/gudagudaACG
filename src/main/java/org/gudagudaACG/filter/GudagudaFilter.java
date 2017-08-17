package org.gudagudaACG.filter;

import java.io.IOException;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.dispatcher.filter.StrutsPrepareAndExecuteFilter;

public class GudagudaFilter extends StrutsPrepareAndExecuteFilter
{
	@Override
	public void doFilter(ServletRequest req, ServletResponse res,FilterChain chain) throws IOException, ServletException 
	{
		HttpServletRequest request = (HttpServletRequest) req;
		String url = request.getRequestURI();         
		System.out.println(url);    
		
		if (url.contains("/ueditor/jsp/")) 
		{             
			System.out.println("gudaguda filter");             
			chain.doFilter(req, res);         
		}
		else
		{             
			System.out.println("default filter");             
			super.doFilter(req, res, chain);         
		} 
	}
}