package com.example.java_project;



import javax.xml.bind.annotation.XmlRootElement;
import java.io.Serializable;

public class WuzzufPojo  {

    String tiltle , company , location , type,level , yearsExp , country , skills;

    public WuzzufPojo() {}

    public WuzzufPojo(String tiltle, String company, String location, String type, String level, String yearsExp, String country, String skills) {
        this.tiltle = tiltle;
        this.company = company;
        this.location = location;
        this.type = type;
        this.level = level;
        this.yearsExp = yearsExp;
        this.country = country;
        this.skills = skills;
    }

    public String getTiltle() {
        return tiltle;
    }

    public void setTiltle(String tiltle) {
        this.tiltle = tiltle;
    }

    public String getCompany() {
        return company;
    }


    public void setCompany(String company) {
        this.company = company;
    }

    public String getLocation() {
        return location;
    }


    public void setLocation(String location) {
        this.location = location;
    }

    public String getType() {
        return type;
    }



    public void setType(String type) {
        this.type = type;
    }

    public String getLevel() {
        return level;
    }



    public void setLevel(String level) {
        this.level = level;
    }

    public String getYearsExp() {
        return yearsExp;
    }



    public void setYearsExp(String yearsExp) {
        this.yearsExp = yearsExp;
    }

    public String getCountry() {
        return country;
    }



    public void setCountry(String country) {
        this.country = country;
    }

    public String getSkills() {
        return skills;
    }


    public void setSkills(String skills) {
        this.skills = skills;
    }

    @Override
    public String toString() {
        return "Wuzzuf : [" + "tiltle=" + tiltle + ", company="
                + company + ", location=" + location
                + ", type=" + type + ", level=" + level
                + ", yearsExp=" + yearsExp + ", country=" + country
                + ", skills=" + skills + ']';
    }

}

