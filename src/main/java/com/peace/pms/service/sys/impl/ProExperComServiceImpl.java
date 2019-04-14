package com.peace.pms.service.sys.impl;

import com.peace.pms.dao.sys.CompanyMapper;
import com.peace.pms.dao.sys.Pro_Exper_ComMapper;
import com.peace.pms.dao.sys.Pro_Exper_Com_xzhMapper;
import com.peace.pms.dao.sys.ProjectMapper;
import com.peace.pms.entity.sys.Pro_Exper_Com_xzh;
import com.peace.pms.entity.sys.Pro_exper_com;
import com.peace.pms.entity.sys.Project;
import com.peace.pms.entity.sys.Query;
import com.peace.pms.service.sys.Pro_Exper_ComService;
import com.peace.pms.util.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProExperComServiceImpl implements Pro_Exper_ComService {

	@Autowired
	private Pro_Exper_Com_xzhMapper proExperComMapper;

	@Autowired
	private com.peace.pms.dao.sys.ProjectMapper ProjectMapper;

	@Autowired
	private com.peace.pms.dao.sys.CompanyMapper CompanyMapper;

	@Autowired
	private Pro_Exper_ComMapper pro_exper_comMapper;

	//添加评分信息
	//修改：不是添加信息，而是更新信息，
	@Override
	public void markIn(Pro_Exper_Com_xzh proExperCom) {
		//proExperComMapper.insertSelective(proExperCom);
		proExperComMapper.updateByPrimaryKeySelective(proExperCom);
	}

	@Override
	public Pro_exper_com selectPEC(Pro_exper_com pro_exper_com) {
		return pro_exper_comMapper.selectPRC(pro_exper_com);
	}

	//其他专家评论信息
	@Override
	public List<Pro_Exper_Com_xzh> OtherViews(int pid, int cid) {
		return proExperComMapper.selectByPid(pid,cid);
	}

    //通过专家号展现项目
	@Override
	public Page<Pro_Exper_Com_xzh> findAllByEid(Query query) {
		//计算分页查询从哪条记录开始
		query.setStart((query.getPage()-1)*query.getRows());

		//查询总记录数
		Integer total= proExperComMapper.getCountByQuery(query);

		//查询每页的数据列表
		List<Pro_Exper_Com_xzh> list= proExperComMapper.find(query);
		List<Pro_Exper_Com_xzh> list_number= proExperComMapper.find(query);
		for (int i=0;i<list_number.size();i++)
		{
			String pname=ProjectMapper.selectByPrimaryKey(list_number.get(i).getPid()).getPname();
			String cname=CompanyMapper.selectByPrimaryKey(list_number.get(i).getCid()).getCname();
			list.get(i).setPname(pname);
			list.get(i).setCname(cname);
		}

		//包装分页数据
		Page<Pro_Exper_Com_xzh> page=new Page<Pro_Exper_Com_xzh>(total,query.getPage(),query.getRows(),list);

		return page;
	}

    @Override
    public List<Project> findPname(Query query) {
		List<Integer> integerList =proExperComMapper.getPid(query);
		for(Integer i:integerList){
			System.out.println(i);
		}
        List<Project> list=ProjectMapper.findAll(integerList);
	    return list;

    }

}
