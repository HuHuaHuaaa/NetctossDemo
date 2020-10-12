package cn.netctoss.dao;

import cn.netctoss.entity.AdminInfo;
import org.apache.ibatis.annotations.Param;

public interface AdminInfoMapper {
    int deleteByPrimaryKey(Integer adminId);

    int insert(AdminInfo record);

    int insertSelective(AdminInfo record);

    AdminInfo selectByPrimaryKey(Integer adminId);

    int updateByPrimaryKeySelective(AdminInfo record);

    int updateByPrimaryKey(AdminInfo record);

    int selectByAdmincode(String adminCode);

    AdminInfo selectLogin(String adminCode, String password);
}