package com.Entities;

import java.util.Date;
import javax.persistence.*;

@Entity
public class Note {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String title;
    @Column(length = 2000)
    private String content;
    private Date addDate;

    public Note() {
    }

    public Note(String title, String content, Date addDate) {

        this.title = title;
        this.content = content;
        this.addDate = addDate;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getAddDate() {
        return addDate;
    }

    public void setAddDate(Date addDate) {
        this.addDate = addDate;
    }

    @Override
    public String toString() {
        return "Note{" + "id=" + id + ", title=" + title + ", content=" + content + ", addDate=" + addDate + '}';
    }

}
