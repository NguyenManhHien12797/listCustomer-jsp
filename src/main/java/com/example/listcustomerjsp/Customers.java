package com.example.listcustomerjsp;

import java.time.LocalDate;

public class Customers {
    private String name;
    private LocalDate dateBirth;
    private  String address;
    private  String img;

    public Customers(String name, String dateBirth, String address, String img) {
        this.name = name;
        this.dateBirth = LocalDate.parse(dateBirth) ;
        this.address = address;
        this.img = img;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public LocalDate getDateBirth() {
        return dateBirth;
    }

    public void setDateBirth(LocalDate dateBirth) {
        this.dateBirth = dateBirth;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }
}
