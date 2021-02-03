package com.winter.web.interceptor;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

/**
 * 自定义拦截器一
 * @author Lxw
 *
 */
public class InterceptorDemo2 extends AbstractInterceptor{

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		System.out.println("InterceptorDemo2执行了...");
		String obj = invocation.invoke();
		System.out.println("InterceptorDemo2执行了...");
		return obj;
	}

}
