package cn.netctoss.service.impl;

import cn.netctoss.dao.AdminInfoMapper;
import cn.netctoss.entity.AdminInfo;
import cn.netctoss.service.IAdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class IAdminServiceImpl implements IAdminService {
    @Autowired
    private AdminInfoMapper adminInfoMapper;

    public String findByCode(String admincode,String password) {
//        Connection conn=null;
//        try {
//            conn= DBUtil.getConnection();
//            String sql="SELECT password FROM admin_info WHERE admin_code=?";
//            PreparedStatement ps = conn.prepareStatement(sql);
//            ps.setObject(1,adminCode);
//            ResultSet rs = ps.executeQuery();
//            if (rs.next()){
//                return rs.getString("PASSWORD");
//            }
//        } catch (SQLException throwables) {
//            throwables.printStackTrace();
//        }finally {
//            DBUtil.close(conn);
//        }
//        return null;
//    }
        int i = adminInfoMapper.selectByAdmincode(admincode);
        if (i > 0) {
            AdminInfo adminInfo = adminInfoMapper.selectLogin(admincode, password);
            return adminInfo.getPassword();
        }
        return null;
    }

}
