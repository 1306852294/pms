package com.peace.pms.service.sys.impl;

import com.peace.pms.dao.sys.Pro_fileMapper;
import com.peace.pms.entity.sys.Pro_file;
import com.peace.pms.service.sys.Pro_fileService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class Pro_fileServiceimpl implements Pro_fileService {

    @Autowired
    private Pro_fileMapper pro_fileMapper;

    @Override
    public Integer insert(Pro_file pro_file) {
        pro_fileMapper.insert(pro_file);
        return  null;
    }

    @Override
    public Pro_file selectPF(Pro_file pro_file) {
        return pro_fileMapper.selectPF(pro_file);
    }
}
