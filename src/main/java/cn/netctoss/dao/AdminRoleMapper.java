package cn.netctoss.dao;

import cn.netctoss.entity.AdminRole;

public interface AdminRoleMapper {
    int insert(AdminRole record);

    int insertSelective(AdminRole record);
}