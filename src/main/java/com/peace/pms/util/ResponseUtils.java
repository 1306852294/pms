package com.peace.pms.util;

import java.io.PrintWriter;


import javax.servlet.http.HttpServletResponse;

public  class ResponseUtils {

	public static void write(HttpServletResponse response,Object o)throws Exception{  
		response.setContentType("text/json");  
        response.setHeader("Cache-Control", "no-cache");  
        PrintWriter out = response.getWriter();  
        out.println(o.toString());  
        out.flush();  
        out.close();
    }  
}
