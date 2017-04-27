/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com;

import java.util.Date;




public class Society {
    
    int id ;
    String Firstname ;
    String Lastname ;
    String email ;
    String Flatnumber;
    String Bld_No ;
    String Contact ;
    Date date;
    String Password ;
    String parkingstatus;
   String Parking_number ;

    public String getParkingstatus() {
        return parkingstatus;
    }

    public void setParkingstatus(String parkingstatus) {
        this.parkingstatus = parkingstatus;
    }

    public String getParking_number() {
        return Parking_number;
    }

    public void setParking_number(String Parking_number) {
        this.Parking_number = Parking_number;
    }

   
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFirstname() {
        return Firstname;
    }

    public void setFirstname(String Firstname) {
        this.Firstname = Firstname;
    }

    public String getLastname() {
        return Lastname;
    }

    public void setLastname(String Lastname) {
        this.Lastname = Lastname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getFlatnumber() {
        return Flatnumber;
    }

    public void setFlatnumber(String Flatnumber) {
        this.Flatnumber = Flatnumber;
    }

    public String getBld_No() {
        return Bld_No;
    }

    public void setBld_No(String Bld_No) {
        this.Bld_No = Bld_No;
    }

    public String getContact() {
        return Contact;
    }

    public void setContact(String Contact) {
        this.Contact = Contact;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String Password) {
        this.Password = Password;
    }
   
    
}
