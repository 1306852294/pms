package com.peace.pms.service.sys;

import com.peace.pms.entity.sys.Pro_file;

public interface Pro_fileService {

    /**
     *   插入文件文件信息
     * @param pro_file
     * @return
     */
    Integer insert(Pro_file pro_file);

    /**
     *  通过pid 和文件类型查询Pro_file
     */
    Pro_file selectPF(Pro_file pro_file);


}
