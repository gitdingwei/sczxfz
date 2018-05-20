package com.mt.service;

import com.mt.model.Tree;
import com.mt.model.User;
import java.util.Map;
import java.util.List;

/**
 * Created by Administrator on 2018/5/14 0014.
 */
public interface JuriService {
    //登陆的时候查询
    Map<String, Object> loginDeng(User user);
    //登陆的时候树的查询
    List<Tree> queryTree(Integer userid);

    Map<String,Object> updatemima(String username,String userpass, String newpass);
}
