package com.clz.spider.form;

public class ListForm {

    private String grade;

    private String subject;

    private int count;

    public String getGrade() {
        return grade;
    }

    public void setGrade(String grade) {
        this.grade = grade;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    @Override
    public String toString() {
        return "ListForm{" +
                "grade='" + grade + '\'' +
                ", subject='" + subject + '\'' +
                ", count=" + count +
                '}';
    }
}
