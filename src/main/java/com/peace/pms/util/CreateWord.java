package com.peace.pms.util;

import org.apache.poi.xwpf.usermodel.XWPFDocument;
import org.apache.poi.xwpf.usermodel.XWPFParagraph;
import org.apache.poi.xwpf.usermodel.XWPFRun;

import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

public class CreateWord {
	/**
	 * 创建一个空文档
	 */
	public byte[] createWord() throws IOException {
		//创建文档对象
		XWPFDocument doc = new XWPFDocument(); 
		//创建段落对象
		XWPFParagraph para=doc.createParagraph();
		//创建文本对象
		XWPFRun run=para.createRun();
		//将word写入到流中
		ByteArrayOutputStream out=new ByteArrayOutputStream();
		doc.write(out);
		out.close();
		byte[] bytes=out.toByteArray();
		return bytes;
	}
	
	/**
	 * 通过给定的路径将文件转为byte[]
	 * @param filePath 需要下载的文件的路径
	 * @return byte数组
	 */
	public byte[] InputStream2ByteArray(String filePath) throws IOException {
		 
	    InputStream in = new FileInputStream(filePath);
	    byte[] data = toByteArray(in);
	    in.close();
	    
	    return data;
	}
	
	public byte[] toByteArray(InputStream in) throws IOException {
		
	    ByteArrayOutputStream out = new ByteArrayOutputStream();
	    byte[] buffer = new byte[1024 * 4];
	    int n = 0;
	    while ((n = in.read(buffer)) != -1) {
	        out.write(buffer, 0, n);
	    }
	    return out.toByteArray();
	}
}
