package com.example.todo_mvc;

import java.io.*;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;

import com.entities.Todo;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HelloServlet{
    List<Todo> list = new LinkedList<>();

    @RequestMapping("/home")
    public String home(Model m){
        m.addAttribute("name","home");
        m.addAttribute("msg","");
        return "home";
    }

    @RequestMapping("/add")
    public String addTodo(Model m){
        m.addAttribute("name","add");
        Todo t = new Todo();
        m.addAttribute("todo",t);
//        m.addAttribute("msg","Saved Successfully");
//        System.out.println("Saved");
        return "home";
    }

    @RequestMapping(value = "/saveTodo",method = RequestMethod.POST)
    public String saveTodo(@ModelAttribute("todo")Todo t, Model m){
        t.setTodoDate(new Date());
        list.add(t);
        m.addAttribute("msg","Saved Successfully");
//        System.out.println("List: "+list);
//        System.out.println(t);
        return "home";
    }

    @RequestMapping("/viewTodo")
    public String viewTodo(Model m){
        m.addAttribute("name","home");
        m.addAttribute("todoList",list);
        m.addAttribute("msg","");
        return "home";
    }
}