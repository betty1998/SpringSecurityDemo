package com.example.SpringSecurityDemo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/users")
public class UserController {
    @Autowired
    private UserService userService;

    @GetMapping("/")
    public String hiUser(){
        return "welcome user";
    }

    @GetMapping("/all")
//    @PreAuthorize("hasAnyAuthority('ROLE_ADMIN')")
    public List<User> getUsers(){
        return userService.getUser();
    }
    @GetMapping("/{id}")
    @PreAuthorize("hasAnyAuthority('ROLE_USER','ROLE_ADMIN')")
    public User getUsers(@PathVariable("id") Long id) throws Exception{
        return userService.getUserById(id)
                .orElseThrow(()-> {return new Exception("User" + id +" not found!");});
    }


    @PostMapping("/add")
    @PreAuthorize("hasAnyAuthority('ROLE_ADMIN')")
    public User saveUser(@RequestBody User user){
        return userService.saveUser(user);
    }



}
