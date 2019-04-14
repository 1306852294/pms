package com.peace.pms.service.sys;

import com.peace.pms.entity.sys.Pro_Exper_Com_xzh;
import com.peace.pms.entity.sys.Pro_exper_com;
import com.peace.pms.entity.sys.Project;
import com.peace.pms.entity.sys.Query;
import com.peace.pms.util.Page;

import java.util.List;

public interface Pro_Exper_ComService {

	void markIn(Pro_Exper_Com_xzh proExperCom);

	List<Pro_Exper_Com_xzh> OtherViews(int pid, int cid);

	Page<Pro_Exper_Com_xzh> findAllByEid(Query query);

	List<Project> findPname(Query query);

	Pro_exper_com selectPEC(Pro_exper_com pro_exper_com);

}
