package org.keepi.action;

/**
 * Created by jota on 11/6/15.
 */

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import org.keepi.model.Owner;
import org.keepi.service.LoginService;

import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.util.Map;

public class SignUpAction extends ActionSupport implements ModelDriven{

    Owner owner = new Owner();

    @Override
    public void validate(){
        if (owner.getEmail() == null || owner.getEmail().isEmpty()) {
            addFieldError("email", "Email is empty or invalid");
        }
        if (owner.getPassword() == null || owner.getPassword().isEmpty()) {
            addFieldError("password", "Password is empty or invalid");
        }
        if (owner.getToken() == null || owner.getToken().isEmpty()) {
            addFieldError("token", "Token is empty or invalid");
        }
        if (owner.getRname() == null || owner.getRname().isEmpty()) {
            addFieldError("rname", "Real name is empty or invalid");
        }
    }

    public String execute() {

        owner.hashPassword();

        LoginService ls = new LoginService();
        int result = ls.signup(owner);
        if (result == 0) {
            Map session = ActionContext.getContext().getSession();
            session.put("owner", owner);
            return SUCCESS;
        }else if (result == -1){
            addFieldError("email","Email already exists");
            return INPUT;
        }
        else if (result == -2){
            addFieldError("token","Token not authorized. Please acquire our product first.");
            return INPUT;
        }
        else
            return ERROR;

        /*
        Map session = ActionContext.getContext().getSession();
 session.remove("logined");
        session.remove("context");
         */
    }

    public Object getModel() {
        return owner;
    }

    public Owner getOwner() {
        return owner;
    }

    public void setOwner(Owner owner) {
        this.owner = owner;
    }
}
