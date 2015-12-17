package org.keepi.model;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 * Created by jota on 11/7/15.
 */
public class Owner {

    private String password;
    private String token;
    private String email;
    private String rname;

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getRname() {
        return rname;
    }

    public void setRname(String rname) {
        this.rname = rname;
    }

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int hashPassword() {
        MessageDigest md = null;
        try {
            md = MessageDigest.getInstance("MD5");
        } catch (NoSuchAlgorithmException e) {
            return -1;
        }
        md.update(password.getBytes());
        byte byteMDpassword[] = md.digest();

        String hashedPassword = new String();
        for (int i = 0; i < byteMDpassword.length; i++){
            hashedPassword = hashedPassword+Integer.toHexString((int)byteMDpassword[i] & 0xFF) ;
        }
        System.out.println(hashedPassword);
        password = hashedPassword;
        return 0;
    }
}
