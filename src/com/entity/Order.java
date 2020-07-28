package com.entity;

public class Order {
    private User user;
    private Courses courses;
    private int payid;

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Courses getCourses() {
        return courses;
    }

    public void setCourses(Courses courses) {
        this.courses = courses;
    }

    public int getPayid() {
        return payid;
    }

    public void setPayid(int payid) {
        this.payid = payid;
    }
}
