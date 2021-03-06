package com.mmall.service;

import com.mmall.dao.UserMapper;
import com.mmall.model.User;
import com.mmall.util.Constants;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import java.io.File;
import java.io.IOException;
import java.util.UUID;

/**
 * Created by ZHAOKANG on 2018/6/11.
 */
@Service
public class UserService {

    @Resource
    private UserMapper userMapper;

    /**
     * 用户注册，记录用户信息并处理上传的图片
     * @param user
     * @param file
     * @return
     */
    public boolean saveRegister(User user, MultipartFile file){
        if (file != null){
            // 生成图片存储的名称，UUID 避免相同图片名冲突
            String originalFileName = file.getOriginalFilename(); // 原始文件名
            String suffix = originalFileName.substring(originalFileName.lastIndexOf(".")); // 图片后缀
            String fileName = UUID.randomUUID().toString() + suffix;
            String filePath = Constants.IMG_PATH + fileName;
            File saveFile = new File(filePath);
            try {
                // 将上传的文件保存到服务器文件系统
                file.transferTo(saveFile);
                // 记录服务器文件系统图片名称
                user.setUserPic(fileName);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        // 持久化 user
        return userMapper.insertSelective(user) > 0;
    }

    /**
     * 查找指定 key 的 user 对象
     * @param userId
     * @return
     */
    public User findByUserId(int userId){
        return userMapper.selectByPrimaryKey(userId);
    }

}
