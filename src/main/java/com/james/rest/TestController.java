package com.james.rest;


import com.james.model.User;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/user")
public class TestController {
    @GetMapping("/{id}")
    public User query(@PathVariable("id") Integer id){
        User user = new User();
        user.setAge(22);
        user.setName("James");
        user.setSex("男");
        user.setDesc("程序员");
        user.setId(1);

        return user;
    }
}
