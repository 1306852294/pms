package com.peace.pms.controller.sys;

import com.peace.pms.entity.sys.*;
import com.peace.pms.service.sys.ExpertService;
import com.peace.pms.service.sys.ManagerService;
import com.peace.pms.service.sys.Pro_fileService;
import com.peace.pms.service.sys.ProjectService;
import com.peace.pms.util.ChangeException;
import com.peace.pms.util.RegisterException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
@RequestMapping("/manager")
public class ManagerController {

    @Autowired
    private ManagerService managerService;

    @Autowired
    private ProjectService projectService;

    @Autowired
    private  Pro_fileService pro_fileService;

    @Autowired
    private ExpertService expertService;

    @RequestMapping(value="/toManager.do",method = RequestMethod.GET)
    public String toLogin(HttpServletRequest request, HttpServletResponse response){
        System.out.println(managerService.findManagerById(1));
        return "";


    }

    //注销用户
    @RequestMapping(value = "/logoff.do", method = RequestMethod.GET)
    public String logoff(HttpServletRequest request, HttpServletResponse response,HttpSession session) {
        session.invalidate();
        return "redirect:/index.do";
    }


    // 跳转到 发布管理页面
    @RequestMapping(value="/topublish.do",method = RequestMethod.GET)
    public String topublish(HttpServletRequest request, HttpServletResponse response){

        //System.out.println(managerService.findManagerById(1));
        return "manager/publish";
    }

    // 跳转到 发布管理 中的待审核项目
    @RequestMapping(value="/topublish_wait.do",method = RequestMethod.GET)
    public String topublish_wait(HttpServletRequest request, HttpServletResponse response){

        HttpSession session=request.getSession();
        String Mid=(String)session.getAttribute("id");
        String power [] ={"待审核"};
        List<Project> projectList=managerService.selectAllPro(Integer.parseInt(Mid),power);

        //
        System.out.println("待审核项目");
        for(Project p:projectList){
            System.out.println(p);
        }
        request.setAttribute("project",projectList);

        return "manager/publish_wait";
    }

    // 跳转到 发布管理 中的已审核的项目中
    @RequestMapping(value="/topublish_saw.do",method = RequestMethod.GET)
    public String topublish_saw(HttpServletRequest request, HttpServletResponse response){
        //System.out.println(managerService.findManagerById(1));
        HttpSession session=request.getSession();
        String Mid=(String)session.getAttribute("id");
        String power_no [] ={"未通过"};
        List<Project> projectList_nopass=managerService.selectAllPro(Integer.parseInt(Mid),power_no);

        String power_yes [] ={"通过"};
        List<Project> projectList_yespass=managerService.selectAllPro(Integer.parseInt(Mid),power_yes);

        //
        System.out.println("审核完毕并通过的项目");
        for(Project p:projectList_yespass){
            p.setState("评审管理");
            projectService.updateByPrimaryKeySelective(p);
            System.out.println(p);
        }
        request.setAttribute("project_yespass",projectList_yespass);
        //
        System.out.println("审核完毕并未通过的项目");
        for(Project p:projectList_nopass){
            System.out.println(p);
        }
        request.setAttribute("project_nopass",projectList_nopass);


        return "manager/publish_saw";
    }


     //跳转到 评审管理页面
    @RequestMapping(value="/tojudge.do",method = RequestMethod.GET)
    public String tojudge(HttpServletRequest request, HttpServletResponse response){

//        System.out.println("评审管理");

        HttpSession session=request.getSession();
        String id=(String)session.getAttribute("id");

        List<Project> projects =new ArrayList<Project>();


        projects=managerService.selectJudgeProByMid(Integer.parseInt(id));

//        for(Project p:managerService.selectJudgeProByMid(Integer.parseInt(id))){
//            System.out.println(p);
//        }
        request.setAttribute("projects",projects);

        //return "redirect:tojudge_rule.do";
        return "manager/judge";
    }


    // 跳转到 评审管理页面 评审规则制定

    @RequestMapping(value="/tojudge_rule.do",method = RequestMethod.GET)
    public String tojudgerule(HttpServletRequest request, HttpServletResponse response){


        HttpSession session=request.getSession();
        String id=(String)session.getAttribute("id");
        List<Project> projects =new ArrayList<Project>();

        String pid=request.getParameter("pid");
        session.setAttribute("pid",pid);
        System.out.println("pid:"+pid);

        projects=managerService.selectJudgeProByMid(Integer.parseInt(id));

        for(Project p:managerService.selectJudgeProByMid(Integer.parseInt(id))){
            System.out.println(p);
        }
        request.setAttribute("projects",projects);

        return "manager/judge_rule";
    }

    /**
     *
     *  评审规则上传文件
     */
    @RequestMapping("/addrule.do")
    @ResponseBody
    public ResponseResult<Void> addrule(@RequestParam(value = "files") MultipartFile[] files,
                                            HttpServletRequest request, HttpSession session) throws IOException {
        // 保存文件
        if (files == null) {
            System.out.println("没有上载文件");
            return new ResponseResult<Void>(0, "没有上载文件");
        }
        String path = "/file/Reviewrules";
        path = request.getServletContext().getRealPath(path);
        System.out.println("储存在服务器的路径:" + path + "下");

        File dir = new File(path);
        dir.mkdir();
        for (MultipartFile file : files) {
            String n = file.getOriginalFilename();
            file.transferTo(new File(dir, n));
        }

        Integer pid = Integer.parseInt((String) session.getAttribute("pid"));
        Integer id = Integer.parseInt((String) session.getAttribute("id"));
        String pdeclare = files[0].getOriginalFilename();

        Pro_file pro_file =new Pro_file();
        pro_file.setPid(pid);
        pro_file.setFileType("评审规则");
        pro_file.setFile(pdeclare);

        pro_fileService.insert(pro_file);
//
//        boolean result = companyService.declareUpload(procom);
//        if (result) {
//            return new ResponseResult<Void>(1, "上传成功");
//        } else {
//            return new ResponseResult<Void>(0, "上传失败");
//        }

        return new ResponseResult<Void>(1,"上传成功");

    }



    // 跳转到 评审管理页面 中的专家小组--低级跳转服了
    @RequestMapping(value="/toexperGroup.do",method = RequestMethod.GET)
    public String toexperGroup(HttpServletRequest request, HttpServletResponse response){
        //System.out.println(managerService.findManagerById(1));

        HttpSession session=request.getSession();
        String id=(String)session.getAttribute("id");
        List<Project> projects =new ArrayList<Project>();

        projects=managerService.selectJudgeProByMid(Integer.parseInt(id));

        for(Project p:managerService.selectJudgeProByMid(Integer.parseInt(id))){
            System.out.println(p);
        }


        request.setAttribute("projects",projects);

        return "manager/experGroup";
    }

    // 根据条件随机选取专家
    @RequestMapping(value = "/addexpert.do",method = RequestMethod.GET)
    public String addexpert(HttpServletRequest request, HttpServletResponse response){

        String num =request.getParameter("num");
        String cmbProvince=request.getParameter("cmbProvince");
        String cmbCity=request.getParameter("cmbCity");
        String cmbArea=request.getParameter("cmbArea");


        Expert expert =new Expert();
        expert.setEprovince(null);
        expert.setEcity(null);
        expert.setEcounty(null);
        expert.setEduction(null);
        expert.setEdirection(null);
        System.out.println("num:"+num);
        System.out.println(expert);
        List<Expert> expertList =expertService.selectjudge(expert,Integer.parseInt(num));

        System.out.println("随机查询出的专家");
        for(Expert e:expertList){
            System.out.println(e);
        }

        request.setAttribute("expertList",expertList);

        return "manager/judge_mode";
    }

    //确定评审方式
    @RequestMapping(value = "/addmode.do" ,method = RequestMethod.POST)
    public String addmode(HttpServletRequest request, HttpServletResponse response){
        String mode=request.getParameter("optionsRadiosinline");
        //获取所有的专家id
        String [] eids=request.getParameterValues("eid");
        HttpSession session =request.getSession();

        String pid =(String)session.getAttribute("pid");

        System.out.println(eids);
        System.out.println(mode);

        if("非独立评审".equals(mode)){
            List<Pro_exper_com> pro_exper_coms =managerService.selectPECBypid(Integer.parseInt(pid));

            if(eids!=null){

                //在添加专家之前，先保存p_e_c的信息，然后删除 p_e_c，
                managerService.deletePECBypid(Integer.parseInt(pid));
                for(String eid:eids){
                     for(Pro_exper_com pro_exper_com:pro_exper_coms){
                        pro_exper_com.setEid(Integer.parseInt(eid));
                    }
                    managerService.addp_e(pro_exper_coms);
                }

                //managerService.addp_e(pro_exper_coms);
            }else{
                return "manager/experGroup";
            }


        }else{
            //独立评审，
            return "manager/experGroup";
        }
        return "redirect:toresult.do";
    }



    // 跳转到 评审管理页面 中的评审方式--低级跳转服了
    @RequestMapping(value="/tojudge_mode.do",method = RequestMethod.GET)
    public String tojudge_mode(HttpServletRequest request, HttpServletResponse response){
        //System.out.println(managerService.findManagerById(1));

        HttpSession session=request.getSession();
        String id=(String)session.getAttribute("id");
        List<Project> projects =new ArrayList<Project>();



//        for(Project p:managerService.selectJudgeProByMid(Integer.parseInt(id))){
//            System.out.println(p);
//        }

        request.setAttribute("projects",projects);

        return "manager/judge_mode";
    }

    // 跳转到 评审管理页面 中的评审结果-
    @RequestMapping(value="/toresult.do",method = RequestMethod.GET)
    public String toresult(HttpServletRequest request, HttpServletResponse response){
        //System.out.println(managerService.findManagerById(1));

        HttpSession session=request.getSession();
        String id=(String)session.getAttribute("id");
        List<Project> projects =new ArrayList<Project>();

        String pid=(String)session.getAttribute("pid");
        //通过管理者的id,来匹配所有 需要评审管理项目
        projects=managerService.selectJudgeProByMid(Integer.parseInt(id));

        //得到当前项目
        Project project=projectService.selectByPid(Integer.parseInt(pid));

        //projects=managerService.selectJudgeProByMid(Integer.parseInt(id));
        request.setAttribute("projects",projects);

        //通过 pid来查询 PEC 列表
        List<Pro_exper_com> list =managerService.selectPECBypid(Integer.parseInt(pid));
        int k=1; // 先标记 k=1,如果项目已经被评审完毕(score全都不为空),则可以发布，
        double max=0;
        Integer cid=null;//中标公司id
        for(Pro_exper_com pro_exper_com:list){
            if(pro_exper_com.getScore()==null){
                k=0;
                break;
            }
            if(max<pro_exper_com.getScore()){
                max=pro_exper_com.getScore();
                cid=pro_exper_com.getCid();
            }
        }

        if(k==0){ //没有评审完毕
            request.setAttribute("c",null);
            request.setAttribute("message",0);//
        }else{
            Company company=managerService.selectComByid(cid);
            project.setCid(cid);
            projectService.updateByPrimaryKeySelective(project);

            request.setAttribute("c",company);
            // 保存状态，是否可以公式结果
            session.setAttribute("exitpid",pid);

        }


        return "manager/result";
    }
    //公布评审结果
    @RequestMapping(value = "/publicity.do",method = RequestMethod.POST)
    public String publicity(HttpServletRequest request, HttpServletResponse response){
        HttpSession session=request.getSession();
        String pid =(String)session.getAttribute("pid");
        String exit=(String)session.getAttribute("exitpid");
        System.out.println("exit:"+exit);
        if(pid.equals(exit)){
            // 改变项目状态
            Project project=projectService.selectByPid(Integer.parseInt(pid));
            project.setState("已立项");
            System.out.println(project);
            projectService.updateByPrimaryKeySelective(project);
        }else{
            return "redirect:toresult.do";
        }

        return "redirect:tojudge.do";
    }


    // 跳转到 个人中心
    @RequestMapping(value="/toinformaction.do",method = RequestMethod.GET)
    public String topersonCenter(HttpServletRequest request, HttpServletResponse response){
        //System.out.println(managerService.findManagerById(1));
        HttpSession session=request.getSession();
        Integer pid=Integer.parseInt((String)session.getAttribute("id"));

        Manager manager=managerService.findManagerById(pid);
        request.setAttribute("manager",manager);

        return "manager/information";
    }

    //  修改个人信息
    @RequestMapping(value = "/tochangeinfo",method = RequestMethod.POST)
    public String changeinfo(Manager manager,HttpServletRequest  request,HttpServletResponse response){
        HttpSession session=request.getSession();
        String pid=(String)session.getAttribute("id");
        Manager manager_DB=managerService.findManagerById(Integer.parseInt(pid));
        manager_DB.setMdepartment(manager.getMdepartment());
        manager_DB.setMfox(manager.getMfox());
        manager_DB.setMphone(manager.getMphone());
        manager_DB.setMcompany(manager.getMcompany());
        managerService.updateByPrimaryKeySelective(manager_DB);

        //
        System.out.println(manager_DB);
        return "redirect:toinformaction.do";
    }

    // 跳转到 个人中心的 修改密码
    @RequestMapping(value="/tochangepass.do",method = RequestMethod.GET)
    public String topersonCenterpass(HttpServletRequest request, HttpServletResponse response){
        //System.out.println(managerService.findManagerById(1));

        return "manager/person_pass";
    }

    // 检查密码
    @RequestMapping(value = "checkpass.do" ,method =  RequestMethod.GET)
    @ResponseBody
    public ResponseResult<Void> checkpass(String password,HttpSession session){
        String id=(String)session.getAttribute("id");
        System.out.println(password);
        Manager manager=managerService.findManagerById(Integer.parseInt(id));
        if(!manager.getPassword().equals(password)){
            return new ResponseResult<Void>(0,"密码错误");
        }else{
            return new ResponseResult<Void>(1,"密码正确");
        }
    }

    @RequestMapping(value = "changepass.do" , method = RequestMethod.POST)
    public String changepass(HttpServletRequest request,HttpServletResponse response){
        HttpSession session=request.getSession();
        String pass =(String)request.getParameter("pass");
        String pass1=(String)request.getParameter("pwd1");
        String pass2=(String)request.getParameter("pwd2");
        String id=(String)session.getAttribute("id");
        Manager manager=managerService.findManagerById(Integer.parseInt(id));

        System.out.println("P:"+pass);
        System.out.println("p1:"+pass1);
        System.out.println("p2:"+pass2);
        System.out.println(manager);
        if(!manager.getPassword().equals(pass)){
            request.setAttribute("err","密码错误");
            return "manager/person_pass";
        }

        try{
            managerService.checkpass(Integer.parseInt(id),pass1,pass2);
        }catch (ChangeException e){
            request.setAttribute("err",e.getMessage());
        }
        request.setAttribute("err","修改成功");
        return "manager/person_pass";
    }

    // 跳转到 个人中心
    @RequestMapping(value="/tonotice.do",method = RequestMethod.GET)
    public String topersonCent(HttpServletRequest request, HttpServletResponse response){
        //System.out.println(managerService.findManagerById(1));
        return "manager/notice";
    }



    //管理者的注册请求
    @RequestMapping(value = "/register.do", method = RequestMethod.POST)
    public String RegisterManager(HttpServletRequest request, HttpServletResponse response, Manager manager) {
        System.out.println(manager);
        //控制器不应该写这些，待优化
        String password2= request.getParameter("password2");
        if("".equals(manager.getMemail())){
            request.setAttribute("errname",2);
            request.setAttribute("m",manager);
            return "index/register";
        }

        if(!manager.getPassword().equals(password2)){
            request.setAttribute("errp",0);
            request.setAttribute("m",manager);
            //
            System.out.println("注册失败，密码确认错误");
            return "index/register";
        }

        try{
            Manager man_datebase=managerService.checkRegister(manager);
        }catch (RegisterException e){
            request.setAttribute("errname",0);
            request.setAttribute("m",manager);

            //
            System.out.println("注册失败，用户已存在");
            return "index/register";
        }


        //检查完毕，可以注册
        managerService.insert(manager);
        request.setAttribute("m",manager);

        return "index/login";
    }


    /**
     * 发布新项目 上传发布书 路径为  /file/Publication
     */
    @RequestMapping(value = "/addproject.do", method = RequestMethod.POST)
    @ResponseBody
    public ResponseResult<Void> addproject(@RequestParam(value = "files") MultipartFile[] files,
                                        HttpServletRequest request, HttpSession session) throws Exception {

        String pname=request.getParameter("pname");
        String content=request.getParameter("content");

        // 保存文件
        if (files == null) {
            System.out.println("没有上载文件");
            return new ResponseResult<Void>(0, "没有上载文件");
        }
        String path = "/file/Publication";
        path = request.getServletContext().getRealPath(path);
        System.out.println("储存在服务器的路径:" + path + "下");

        File dir = new File(path);
        dir.mkdirs();
        for (MultipartFile file : files) {
            String n = file.getOriginalFilename();
            file.transferTo(new File(dir, n));
        }

        String pdeclare = files[0].getOriginalFilename();

        Project project = new Project();
        project.setPname(pname);
        project.setContent(content);
        project.setRelesePower("通过");
        //project.setState("评审管理");



        //新建项目 插入项目数据
        Integer Pid=projectService.insert(project);
        Pro_file pro_file= new Pro_file();
        pro_file.setFile(pdeclare);
        pro_file.setFileType("发布书");
        pro_file.setPid(Pid);
        pro_fileService.insert(pro_file);

        // 管理者的和对应的创建的项目
        HttpSession session1=request.getSession();
        String Mid=(String)session.getAttribute("id");

        System.out.println("id:"+Mid);
        Pro_man pro_man = new Pro_man();
        pro_man.setMid(Integer.parseInt(Mid));
        pro_man.setPid(Pid);
        managerService.insertPro_man(pro_man);

        return new ResponseResult<Void>(1,"上传成功");
    }



}

