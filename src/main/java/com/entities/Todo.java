package com.entities;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class Todo {
    String Title;

    @Override
    public String toString() {
        return "Todo{" +
                "Title='" + Title + '\'' +
                ", Content='" + Content + '\'' +
                ", todoDate=" + todoDate +
                '}';
    }

    public Todo() {
    }

    public Todo(String title, String content, Date todoDate) {
        Title = title;
        Content = content;
        this.todoDate = todoDate;
    }

    String Content;
    @DateTimeFormat(pattern = "dd/mm/yyyy")
    Date todoDate;

    public String getTitle() {
        return Title;
    }

    public void setTitle(String title) {
        Title = title;
    }

    public String getContent() {
        return Content;
    }

    public void setContent(String content) {
        Content = content;
    }

    public Date getTodoDate() {
        return todoDate;
    }

    public void setTodoDate(Date todoDate) {
        this.todoDate = todoDate;
    }
}
