package com.peace.pms.dao.sys;

import com.peace.pms.entity.sys.Pro_exper_com;
import com.peace.pms.entity.sys.Query;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface Pro_Exper_ComMapper {
    int insert(Pro_exper_com record);

    int insertSelective(Pro_exper_com record);


    /**
     * 通过 项目id把所有 PEC-的信息查询出来
     * @param pid
     * @return
     */
    List<Pro_exper_com> selectPECByPid(Integer pid);


    Pro_exper_com selectPRC(Pro_exper_com pro_exper_com);



    int deleteByPid(Integer pid);

    //许子昊
    Pro_exper_com  selectByPrimaryKey(Pro_exper_com key);

    //通过项目号查找评论
    List<Pro_exper_com > selectByPid(@Param("Pid") int pid, @Param("Cid") int cid);

    int getCountByQuery(Query query);

    List<Pro_exper_com > find(Query query);

    //查找无重复的pid
    List<Integer> getPid(Query query);

}