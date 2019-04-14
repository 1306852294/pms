package com.peace.pms.controller.sys;

import com.peace.pms.entity.sys.*;
import com.peace.pms.service.sys.CompanyService;

import com.peace.pms.service.sys.Pro_fileService;
import com.peace.pms.service.sys.impl.ex.AllPagesAreDisplayed;
import com.peace.pms.service.sys.impl.ex.PasswordNotMatchException;

import com.peace.pms.util.CreateWord;
import com.peace.pms.util.RegisterException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/company")
public class CompanyController {

	@Autowired
	private CompanyService companyService;

	@Autowired
	private Pro_fileService pro_fileService;


	//企业的注册请求
	@RequestMapping(value = "/register.do", method = RequestMethod.POST)
	public String RegisterManager(HttpServletRequest request, HttpServletResponse response, Company company) {
		System.out.println(company);
		//控制器不应该写这些，待优化
		String password2= request.getParameter("password2");
		if("".equals(company.getEmail())){
			request.setAttribute("errname",2);
			//request.setAttribute("c",company);
			return "index/register";
		}

		if(!company.getPassword().equals(password2)){
			request.setAttribute("errp",0);
			//request.setAttribute("c",company);
			System.out.println("注册失败,密码确认错误");
			return "index/register";
		}
//
		try{

			companyService.checkRegister(company);
		}catch (RegisterException e){

			request.setAttribute("errname",0);
			//request.setAttribute("m",company);

			//
			System.out.println("注册失败，用户已存在");
			return "index/register";
		}
		//检查完毕，可以注册
        companyService.register(company);
		//request.setAttribute("m",company);
		//index/login
		return "index/login";
	}


	@RequestMapping("/total_project.do")
	public String showTotalProject(ModelMap modelMap, HttpSession session,HttpServletRequest request) {

		// 测试使用的
		// TODO 运行时请删除
//		String cid = "1";
//		session.setAttribute("cid", cid);

		Company company=companyService.findCompanyByCid();


		// 所有可以申报的项目
		List<Project> allItems=companyService.showAllUndeclaredProject();
		
		List<Project> projectList = new ArrayList<Project>();
		
		if(allItems.size()>7){
			for(int i=0;i<7;i++){
				projectList.add(allItems.get(i));
			}
			modelMap.addAttribute("projectList",projectList);
		}else{
			modelMap.addAttribute("projectList",allItems);
		}
		
		return "company/total_project";
	}

	@RequestMapping("/all_projects_nextpage.do")
	@ResponseBody
	public ResponseResult<List<Project>> nextPage(int page, int limit, ModelMap modelMap){
		ResponseResult<List<Project>> rr;
		// 所有的项目
		List<Project> allProjects=companyService.showAllUndeclaredProject();
		
		try {
			List<Project> projects=companyService.nextPage(page,limit,allProjects);
			rr=new ResponseResult<List<Project>>(1,projects);
		} catch (AllPagesAreDisplayed e) {
			rr=new ResponseResult<List<Project>>(0,e);
		}
		return rr;
	}
	
	@RequestMapping("/all_projects_lastpage.do")
	@ResponseBody
	public ResponseResult<List<Project>> lastPage(int page, int limit, ModelMap modelMap){
		// 所有的项目
		List<Project> allProjects=companyService.showAllUndeclaredProject();
		
		List<Project> projects=companyService.lastpage(page,limit,allProjects);
		
		return new ResponseResult<List<Project>>(1,projects);
	}
	
	
	@RequestMapping("/declare.do")
	public String showDeclare(String pid, String pname, HttpSession session) {

		session.setAttribute("pid", pid);
		session.setAttribute("pname", pname);

		return "company/declare";
	}

	
	
	@RequestMapping("/personpage.do")
	public String showPersonpage(ModelMap modelMap) {
	
		//拿到该公司的所有项目,并存入ModelMap
		//List<Project> allProjects = companyService.showProjectByPid();
        /**
         * 更改：应该是从项目表中，通过cid查询,自己 已经立项的项目
         */
        List<Project> allProjects=companyService.selectProsucceed();

        List<Project> projects=new ArrayList<Project>();

        for(Project p:allProjects){
            System.out.println(p);
        }
		if(allProjects.size()==0){
			modelMap.addAttribute("NoProjectYet","您还没有项目");
		}else if(allProjects.size()==1){
			projects.add(allProjects.get(0));
		}else{
			projects.add(allProjects.get(0));
			projects.add(allProjects.get(1));
		}
		
		modelMap.addAttribute("allProjects",allProjects);
		modelMap.addAttribute("projects",projects);
		//页数
		modelMap.addAttribute("page", 1);

		return "company/personpage";
	}

	@RequestMapping("/nextpage.do")
	@ResponseBody
	public ResponseResult<List<Project>> existingProjectsNextPage(int page, int limit, ModelMap modelMap){
		ResponseResult<List<Project>> rr;
		
		//List<Project> allProjects=companyService.showProjectByPid();
        /**
         * 更改：应该是从项目表中，通过cid查询,自己已经立项的项目
         */
        List<Project> allProjects=companyService.selectProsucceed();
		try {
			List<Project> projects=companyService.nextPage(page,limit,allProjects);
			rr=new ResponseResult<List<Project>>(1,projects);
		} catch (AllPagesAreDisplayed e) {
			rr=new ResponseResult<List<Project>>(0,e);
		}
		return rr;
	}
	
	@RequestMapping("/lastpage.do")
	@ResponseBody
	public ResponseResult<List<Project>> existingProjectsLastpage(int page, int limit, ModelMap modelMap){

        //List<Project> allProjects=companyService.showProjectByPid();
        /**
         * 更改：应该是从项目表中，通过cid查询,自己已经立项的项目
         */
        List<Project> allProjects=companyService.selectProsucceed();
		
		List<Project> projects=companyService.lastpage(page,limit,allProjects);
		
		return new ResponseResult<List<Project>>(1,projects);
	}
	
	
	
	
	@RequestMapping("/information.do")
	public String showInformation(ModelMap modelMap,HttpSession session
			) {
		Company company=companyService.findCompanyByCid();
		modelMap.addAttribute("company",company);
		
		return "company/information";
	}
	
	@RequestMapping("change_information.do")
	@ResponseBody
	public ResponseResult<Void> changeInformation(String cname, String cphone, String model, String regisTime, String prange, String ctype){
		Company company=companyService.findCompanyByCid();
		if(cname!=""){
			company.setCname(cname);
		}
		if(cphone!=""){
			company.setCphone(cphone);
		}
		if(model!=""){
			company.setModel(model);
		}
		company.setRegisTime(regisTime);
		if(prange!=""){
			company.setPrange(prange);
		}
		if(ctype!=""){
			company.setCtype(ctype);
		}
		companyService.changeInformation(company);
		return new ResponseResult<Void>(1,"修改成功");
	}

	@RequestMapping("/qualification.do")
	public String showQualification() {
		return "company/qualification";
	}

	@RequestMapping("/password.do")
	public String showPassword() {
		return "company/password";
	}

	@RequestMapping("/project_book.do")
	public String showProjectBook() {
		return "company/project_book";
	}

	@RequestMapping("/progress.do")
	public String showProgress() {
		return "company/progress";
	}

	@RequestMapping("handle_change_password.do")
	@ResponseBody
	public ResponseResult<Void> handleChangePassword(@RequestParam("old_password") String oldPassword,
                                                     @RequestParam("new_password") String newPassword) {
		ResponseResult<Void> rr;

		try {
			companyService.changePassword(oldPassword, newPassword);
			rr = new ResponseResult<Void>(1, "密码修改成功");
		} catch (PasswordNotMatchException e) {
			rr = new ResponseResult<Void>(0, e);
		}
		return rr;
	}
	
	
	/**
	 * 申报页面的word文件下载 下载项目发布书文件  /file/Publication
	 */
	@RequestMapping(value = "download_declare.do", produces = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet")
	@ResponseBody
	public byte[] exportExcel(HttpServletResponse response, HttpSession session, HttpServletRequest request)
			throws IOException {

		// 创建word的工具类
		CreateWord cw = new CreateWord();

		// 通过拼接将服务器储存路径和所需文档存在了path中
		String path = "/file/Publication";
		path = request.getServletContext().getRealPath(path);
		File dir = new File(path);

		System.out.println("path:"+path);

		dir.mkdirs();
		String pid = (String) session.getAttribute("pid");

		Pro_file pro_file=new Pro_file();
		pro_file.setPid(Integer.parseInt(pid));
		pro_file.setFileType("发布书");
		pro_file=pro_fileService.selectPF(pro_file);

		String filename= new String(pro_file.getFile().getBytes(),"ISO-8859-1");

		response.setHeader("Content-Disposition", "attachment;filename=\""+filename+"\"");
															// filename=\"declare.docx\""
		//filename=filename.split("\\.")[0];
		//path = path + "\\" + filename+ ".docx";
		//path=path+"\\" +pro_file.getFile();
		path=path+"/" +pro_file.getFile();

		// 将路径中所有的\改为\\
		System.out.println("path:"+path);
		path = path.replaceAll("\\\\", "\\\\\\\\");
		System.out.println("path:"+path);
		byte[] bytes = cw.InputStream2ByteArray(path);
		return bytes;
	}

	/**
	 * 申报页面的文件上传  申报书 路径　/file/declare
	 */
	@RequestMapping("/upload_declare.do")
	@ResponseBody
	public ResponseResult<Void> uploadFiles(@RequestParam(value = "files") MultipartFile[] files,
                                            HttpServletRequest request, HttpSession session) throws IOException {
		// 保存文件
		if (files == null) {
			System.out.println("没有上载文件");
			return new ResponseResult<Void>(0, "没有上载文件");
		}
		String path = "/file/declare";
		path = request.getServletContext().getRealPath(path);
		System.out.println("储存在服务器的路径:" + path + "下");
		File dir = new File(path);
		dir.mkdir();
		for (MultipartFile file : files) {
			String n = file.getOriginalFilename();
			file.transferTo(new File(dir, n));
		}

		Integer pid = Integer.parseInt((String) session.getAttribute("pid"));
		Integer cid = Integer.parseInt((String) session.getAttribute("cid"));
		String pdeclare = files[0].getOriginalFilename();

		Pro_exper_com procom = new Pro_exper_com(pid, cid, pdeclare);

		boolean result = companyService.declareUpload(procom);
		if (result) {
			return new ResponseResult<Void>(1, "上传成功");
		} else {
			return new ResponseResult<Void>(0, "上传失败");
		}

	}
	


}



