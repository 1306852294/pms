package com.peace.pms.controller.sys;

import com.peace.pms.entity.sys.*;
import com.peace.pms.service.sys.*;
import com.peace.pms.util.CreateWord;
import com.peace.pms.util.Page;
import com.peace.pms.util.RegisterException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.List;

@Controller
public class ExpertController {

    @Autowired
    private ExpertService expertService;

    @Autowired
    private Pro_Exper_ComService proExperComService;

    @Autowired
    private ProjectService projectService;

    @Autowired
    private CompanyService companyService;

    @Autowired
    private Pro_fileService pro_fileService;


    @RequestMapping(value = "/sys/toexpert.do")
    public String toexpert(HttpServletRequest request, HttpServletResponse response, Query query){

        HttpSession session =request.getSession();

        String eid=(String) session.getAttribute("eid");
        Expert currentExpert=expertService.getMessageById(Integer.parseInt(eid));

        query.setEid(Integer.parseInt(eid));
        List<Project> list = proExperComService.findPname(query);
        query.setPid(list.get(0).getPid());
        Page<Pro_Exper_Com_xzh> page = proExperComService.findAllByEid(query);



        session.setAttribute("currentExpert", currentExpert);
        request.getSession().setAttribute("page", page);
        request.getSession().setAttribute("list", list);
        return "/sys/Expert/select";
    }

    //WEB-INF下JSP页面跳转
    @RequestMapping(value="/sys/judge_project.do",method=RequestMethod.GET)
    public ModelAndView judge_project(Integer pid,Integer cid,Integer eid,HttpSession session){
        ModelAndView mav=new ModelAndView("/sys/Expert/judge_project");
        mav.addObject("pid",pid);
        mav.addObject("cid",cid);
        mav.addObject("eid",eid);
        session.setAttribute("cid",String.valueOf(cid));
        session.setAttribute("pid",String.valueOf(pid));
        session.setAttribute("eid",String.valueOf(eid));
        mav.addObject("project",projectService.findById(pid));
        mav.addObject("company",companyService.getMessageById(cid));
        return mav;
    }

    @RequestMapping(value="/sys/personage.do",method= RequestMethod.GET)
    public ModelAndView personage(){
        ModelAndView mav=new ModelAndView("/sys/Expert/personage");
        return mav;
    }

    @RequestMapping(value="/sys/select.do",method= RequestMethod.GET)
    public ModelAndView select(){
        ModelAndView mav=new ModelAndView("/sys/Expert/select");
        return mav;
    }

    @RequestMapping(value="/sys/h_mark.do",method= RequestMethod.GET)
    public ModelAndView h_mark(Integer pid,Integer cid,Integer eid){
        ModelAndView mav=new ModelAndView("/sys/Expert/h_mark");
        List<Pro_Exper_Com_xzh> views= proExperComService.OtherViews(pid,cid);
        mav.addObject("project",projectService.findById(pid));
        mav.addObject("company",companyService.getMessageById(cid));
        mav.addObject("eid",eid);
        mav.addObject("views",views);
        return mav;
    }

    @RequestMapping(value="/sys/password.do",method= RequestMethod.GET)
    public ModelAndView password(){
        ModelAndView mav=new ModelAndView("/sys/Expert/password");
        return mav;
    }

    /**
     *
     *  评审规则的下载
     */
    @RequestMapping(value="/sys/rule.do", produces = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet")
    @ResponseBody
    public byte[] rule(HttpSession session,HttpServletRequest request,HttpServletResponse response) throws IOException {
        // 创建word的工具类
        CreateWord cw = new CreateWord();

        // 通过拼接将服务器储存路径和所需文档存在了path中
        String path = "/file/Reviewrules";
        path = request.getServletContext().getRealPath(path);
        File dir = new File(path);

        dir.mkdirs();
        String pid = (String) session.getAttribute("pid");

        Pro_file pro_file=new Pro_file();
        pro_file.setPid(Integer.parseInt(pid));
        pro_file.setFileType("评审规则");
        pro_file=pro_fileService.selectPF(pro_file);

        String filename= new String(pro_file.getFile().getBytes(),"ISO-8859-1");
        response.setHeader("Content-Disposition", "attachment;filename=\""+filename+"\"");

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
     *
     *  项目发布书的下载
     */
    @RequestMapping(value="/sys/downPublication.do", produces = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet")
    @ResponseBody
    public byte[] downPublication(HttpSession session,HttpServletRequest request,HttpServletResponse response) throws IOException {

        // 创建word的工具类
        CreateWord cw = new CreateWord();

        // 通过拼接将服务器储存路径和所需文档存在了path中
        String path = "/file/Publication/";
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
        path=path +pro_file.getFile();


        // 将路径中所有的\改为

       System.out.println();//

        System.out.println("path:"+path);
        path = path.replaceAll("\\\\", "\\\\\\\\");
        System.out.println("path:"+path);
        byte[] bytes = cw.InputStream2ByteArray(path);
        return bytes;

    }

    //下载 企业的申报书
    @RequestMapping(value="/sys/downdeclare.do", produces = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet")
    @ResponseBody
    public byte[] downdeclare(HttpSession session,HttpServletRequest request,HttpServletResponse response) throws IOException {

        //获取 cid ,eid, pid
        String cid=(String)session.getAttribute("cid");
        String pid=(String)session.getAttribute("pid");
        String eid=(String)session.getAttribute("eid");

        Pro_exper_com pro_exper_com=proExperComService.selectPEC( new Pro_exper_com(Integer.parseInt(pid),Integer.parseInt(eid),Integer.parseInt(cid)));


        // 创建word的工具类
        CreateWord cw = new CreateWord();

        // 通过拼接将服务器储存路径和所需文档存在了path中
        String path = "/file/declare/";
        path = request.getServletContext().getRealPath(path);
        File dir = new File(path);
        dir.mkdirs();
        String filename= new String(pro_exper_com.getPdeclare().getBytes(),"ISO-8859-1");

        response.setHeader("Content-Disposition", "attachment;filename=\""+filename+"\"");

        path=path+pro_exper_com.getPdeclare();

        // 将路径中所有的\改为\\
        System.out.println("path:"+path);
        path = path.replaceAll("\\\\", "\\\\\\\\");

        byte[] bytes = cw.InputStream2ByteArray(path);
        return bytes;
    }






        //修改个人信息
    @RequestMapping(value = "/sys/updateExpert.do",method= RequestMethod.POST)
    public String updateExpert(Expert expert, HttpServletRequest request)
     {
         expertService.updateDetails(expert);
         Expert currentExpert=expertService.getMessageById(expert.getEid());
         HttpSession session = request.getSession();
         session.setAttribute("currentExpert", currentExpert);
         return "/sys/Expert/personage";
     }

     //修改密码
     @RequestMapping(value = "/sys/updatePassword.do",method=RequestMethod.GET)
     public String updatePassword(Expert expert, HttpServletRequest request){
         expertService.updateDetails(expert);
         Expert currentExpert=expertService.getMessageById(expert.getEid());
         HttpSession session = request.getSession();
         session.setAttribute("currentExpert", currentExpert);
         return "/sys/Expert/select";
     }

     //项目名称点击展示
    @RequestMapping(value="/sys/search.do",method=RequestMethod.GET)
    public ModelAndView find(Query query, Integer pid, Integer eid){
        query.setPid(pid);
        query.setEid(eid);
        Page<Pro_Exper_Com_xzh> pro_com= proExperComService.findAllByEid(query);
        List<Project> list=proExperComService.findPname(query);
        ModelAndView mav=new ModelAndView("/sys/Expert/select");//括号类为指定的页面名称
        mav.addObject("page", pro_com);
        mav.addObject("list", list);
        return mav;
    }

    //专家打分
    @RequestMapping(value="/sys/mark.do",method=RequestMethod.POST)
    public ModelAndView mark(Pro_Exper_Com_xzh proExperCom, Query query){
        proExperComService.markIn(proExperCom);
        //Pro_ComService.finishMark(proExperCom.getCid(),proExperCom.getPid());
        Page<Pro_Exper_Com_xzh> page= proExperComService.findAllByEid(query);
        ModelAndView mav=new ModelAndView("/sys/Expert/select");//括号类为指定的页面名称
        mav.addObject("page", page);
        //request.getSession().setAttribute("LIST", list);
        return mav;
    }

    @RequestMapping(value = "/sys/register.do",method = RequestMethod.POST)
    public String Register(HttpServletRequest request, HttpServletResponse response, Expert expert){
        System.out.println(expert);
        String password2= request.getParameter("password2");
        if("".equals(expert.getEmail())){
            request.setAttribute("errname",2);
            //request.setAttribute("e",expert);
            return "index/register";
        }

        if(!expert.getPassword().equals(password2)){
            request.setAttribute("errp",0);
            //request.setAttribute("e",expert);
            //
            System.out.println("注册失败，密码确认错误");
            return "index/register";
        }


//        try{
//            Manager man_datebase=managerService.checkRegister(manager);
//        }catch (RegisterException e){
//            request.setAttribute("errname",0);
//            request.setAttribute("m",manager);
//
//            //
//            System.out.println("注册失败，用户已存在");
//            return "index/register";
//        }


        try{
            Expert expert1=expertService.checkRegister(expert);
        }catch (RegisterException e){
            request.setAttribute("errname",0);
            //request.setAttribute("e",expert);
            return "index/register";
        }


        //检查完毕，可以注册
        expertService.insert(expert);
        //request.setAttribute("m",expert);

        return "index/login";
    }
}
