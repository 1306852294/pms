package com.peace.pms.dao.sys;

import com.peace.pms.entity.sys.Pro_file;

public interface Pro_fileMapper {

    int insert(Pro_file record);

    int insertSelective(Pro_file record);

    Pro_file selectPF(Pro_file pro_file);
}