package com.peace.pms.service.sys.impl;

import com.peace.pms.dao.sys.CompanyMapper;
import com.peace.pms.entity.sys.Company;
import com.peace.pms.entity.sys.Manager;
import com.peace.pms.entity.sys.Pro_exper_com;
import com.peace.pms.entity.sys.Project;
import com.peace.pms.service.sys.CompanyService;
import com.peace.pms.service.sys.impl.ex.AllPagesAreDisplayed;
import com.peace.pms.service.sys.impl.ex.EmailNotFoundException;
import com.peace.pms.service.sys.impl.ex.PasswordNotMatchException;
import com.peace.pms.util.LoginException;
import com.peace.pms.util.RegisterException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Service
public class CompanyServiceImpl implements CompanyService {

	@Resource(name="companyMapper")
	private CompanyMapper companyMapper;
	
	@Autowired  
	private HttpSession session;


	@Override
	public Company checkRegister(Company company) {
		Company com_datebase=companyMapper.findCompanyByEmail(company.getEmail());

		if(com_datebase!=null){
			throw new RegisterException("用户已存在");
		}
		return com_datebase;
	}

	@Override
	public Company checkLogin(Company company) {
		//Manager manager1=managerMapper.selectByEmail(manager.getMemail());

		Company companyDB =companyMapper.findCompanyByEmail(company.getEmail());
		if(companyDB==null){
			throw  new LoginException("用户名不存在");
		}
//        System.out.println(manager);
//        System.out.println(manager1);
		if(!companyDB.getPassword().equals(company.getPassword())){
			throw  new LoginException("密码错误");
		}
		return companyDB;
	}

	@Override
	public List<Project> selectProsucceed() {
		String s = (String) session.getAttribute("cid");
		Integer i = Integer.parseInt(s);
		return companyMapper.selectProBycid(i);
	}

	@Override
	public Integer register(Company company) {
		companyMapper.insert(company);
		return company.getCid();
	}
	@Override
	public boolean login(String email, String password) {
		Company c=companyMapper.findCompanyByEmail(email);
		if(c==null){
			throw new EmailNotFoundException("未通过邮箱找到匹配的企业信息");
		}else{
			if(c.getPassword().equals(password)){
				return true;
			}else{
				throw new PasswordNotMatchException("密码不匹配");
			}
		}
	}



	
	@Override
	public Company findCompanyByCid() {

		String s = (String) session.getAttribute("cid");
		Integer cid = Integer.parseInt(s);
		System.out.println("service:"+cid);
		return companyMapper.findCompanyByCid(cid);

	}
	
	
	
	
	@Override
	public List<Project> showAllUndeclaredProject() {
		//得到所有的项目
		List<Project> projects=companyMapper.findAllProject();
//		System.out.println("得到所有的项目");
//		for(Project project:projects){
//			System.out.println(project);
//		}
		//得到已经提交的项目
		List<Project> pro=showProjectByPid();
//		System.out.println("已经提交的项目");
//		for(Project project:pro){
//			System.out.println(project);
//		}
		//移除存在的项目
		projects.removeAll(pro);

//		System.out.println("移出后的项目");
//		for(Project project:projects){
//			System.out.println(project);
//		}
		return projects;
	}

	@Override
	public List<Project> showProjectByPid() {
		List<Project> allProjects = new ArrayList<Project>();
		String s = (String) session.getAttribute("cid");
		Integer i = Integer.parseInt(s);
		// 拿到该公司所有的项目ID
		List list = findAllPidByCid(i);
		
		if(list.size()!=0){
			for (int j = 0; j < list.size(); j++) {
				if (j != list.size()) {
					Integer pid = (Integer) list.get(j);
					allProjects.add(companyMapper.findProjectByPid(pid));
				}
			}
		}

		return allProjects;
	}
	
	@Override
	public List<Integer> findAllPidByCid(Integer cid) {
		return companyMapper.findAllPidByCid(cid);
	}
	
	
	

	@Override
	public boolean changePassword(String oldPassword, String newPassword) {

		String s = (String) session.getAttribute("cid");
		Integer cid = Integer.parseInt(s);
		Company company=findCompanyByCid();
		
		if(oldPassword.equals(company.getPassword())){
			company.setPassword(newPassword);
			companyMapper.changePassword(company);
			return true;
		}else{
			throw new PasswordNotMatchException("旧密码不匹配");
		}
	}

	@Override
	public void changeInformation(Company company) {
		companyMapper.changeInformation(company);
	}

	@Override
	public boolean declareUpload(Pro_exper_com procom) {
		return companyMapper.upload(procom)>0;
	}

	
	

	
	@Override
	public List<Project> nextPage(int page, int limit, List<Project> allProjects) {
		List<Project> projects=new ArrayList<Project>();
		
		if(page*limit>=allProjects.size()){
			throw new AllPagesAreDisplayed("已显示全部页面");
		}else{
			for(int i=0;i<limit;i++){
				if(page*limit+i<allProjects.size()){
					projects.add(allProjects.get(page*limit+i));
				}
			}
			return projects;
		}
	}
	
	@Override
	public List<Project> lastpage(int page, int limit, List<Project> allProjects) {
		List<Project> projects=new ArrayList<Project>();
		for(int i=0;i<limit;i++){
			projects.add(allProjects.get((page-1)*limit-1-i));
		}
		return projects;
	}




	//通过id寻找企业具体信息
	@Override
	public Company getMessageById(Integer id) {
		// TODO Auto-generated method stub
		return companyMapper.selectByPrimaryKey(id);
	}


	//修改详细信息
	@Override
	public int updateDetails(Company company) {
		// TODO Auto-generated method stub
		return companyMapper.updateDetail(company);
	}


	

}
