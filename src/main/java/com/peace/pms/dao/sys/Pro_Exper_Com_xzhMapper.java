package com.peace.pms.dao.sys;

import com.peace.pms.entity.sys.Pro_Exper_ComKey;
import com.peace.pms.entity.sys.Pro_Exper_Com_xzh;
import com.peace.pms.entity.sys.Query;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface Pro_Exper_Com_xzhMapper {
    int deleteByPrimaryKey(Pro_Exper_ComKey key);

    int insert(Pro_Exper_Com_xzh record);

    int insertSelective(Pro_Exper_Com_xzh record);

    Pro_Exper_Com_xzh selectByPrimaryKey(Pro_Exper_ComKey key);

    int updateByPrimaryKeySelective(Pro_Exper_Com_xzh record);

    int updateByPrimaryKeyWithBLOBs(Pro_Exper_Com_xzh record);

    int updateByPrimaryKey(Pro_Exper_Com_xzh record);
    
    //通过项目号查找评论
    List<Pro_Exper_Com_xzh> selectByPid(@Param("Pid") int pid, @Param("Cid") int cid);

    int getCountByQuery(Query query);

    List<Pro_Exper_Com_xzh> find(Query query);

    //查找无重复的pid
    List<Integer> getPid(Query query);
}