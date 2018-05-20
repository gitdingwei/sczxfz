package com.mt.controller;

import com.mt.model.Tree;
import com.mt.model.User;
import com.mt.service.JuriService;
import org.apache.catalina.servlet4preview.http.HttpServletRequest;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2018/5/14 0014.
 */
@Controller
@RequestMapping("usercontroller")
public class JuriController {
    @Autowired
    private JuriService userService;
    @Autowired
    private RedisTemplate redisTemplate;
    @Autowired
    private MongoTemplate mongoTemplate;

    //登陆的时候查询
    @ResponseBody
    @RequestMapping("loginDeng")
    public String loginDeng(User user, HttpSession session,HttpServletRequest request) throws Exception{

        Map<String,Object> list=userService.loginDeng(user);
        User user2=(User) list.get("user");
        if (user2!=null) {
            session.setAttribute("userid", user2.getUserid());
            session.setAttribute("username", user2.getUsername());
            request.getSession().setAttribute("kk",user2);
        }

        return (String)list.get("flag");
    }

    //登陆的时候树的查询
    @RequestMapping("queryTree")
    @ResponseBody
    public List<Tree> queryTree(HttpSession session){
        List<Tree> list=userService.queryTree((Integer) session.getAttribute("userid"));
        System.out.println(list);
        return list;
    }
    ///跳修改密码页面
    @RequestMapping("xiugaimima")
    public String xiugaimima(){
        return "mima";
    }
    @RequestMapping("updatemima")
    @ResponseBody
    public String updatemima(String username,String userpass,String newpass, HttpServletRequest request){
     Map<String,Object> map=new HashMap<String,Object>();
     String mas="";
     map=userService.updatemima(username,userpass,newpass);
        //String mas=(String) map.get("mas");
        User user = (User) map.get("user");
        System.out.println(user.getUserid());
        if("success".equals(mas)) {
           /* ServletActionContext.getRequest().getSession().setAttribute("userid",user.getUserid());*/
            request.getSession().setAttribute("userid", user.getUserid());
        }

        return mas;
    }
    ///跳到日志页面
    @RequestMapping("rizhi")
    public String rizhi(){
        return "view/rizhi";
    }

    @RequestMapping("queryrizilist")
    @ResponseBody
    public List queryloginlist(){
        List find = mongoTemplate.find(new Query(), User.class,"userdw");
        System.out.println("dasda"+find);
        return find;
    }
}
