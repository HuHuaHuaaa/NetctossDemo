package cn.netctoss.dao;

import cn.netctoss.entity.ModuleInfo;

public interface ModuleInfoMapper {
    int deleteByPrimaryKey(Integer moduleId);

    int insert(ModuleInfo record);

    int insertSelective(ModuleInfo record);

    ModuleInfo selectByPrimaryKey(Integer moduleId);

    int updateByPrimaryKeySelective(ModuleInfo record);

    int updateByPrimaryKey(ModuleInfo record);
}