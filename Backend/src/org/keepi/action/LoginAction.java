package org.keepi.action;

/**
 * Created by jota on 11/6/15.
 */

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import org.keepi.model.Owner;
import org.keepi.service.LoginService;
import java.util.Map;

public class LoginAction extends ActionSupport implements ModelDriven{

    Owner owner = new Owner();

    @Override
    public void validate(){
        Map session = ActionContext.getContext().getSession();
        if (session.get("owner") == null) {
            if (owner.getEmail() == null || owner.getEmail().isEmpty()) {
                addFieldError("email", "Email is empty or invalid");
            }
            if (owner.getPassword() == null || owner.getPassword().isEmpty()) {
                addFieldError("password", "Password is empty or invalid");
            }
        }
    }

    public String execute() {
        Map session = ActionContext.getContext().getSession();
        if (session.get("owner") != null)
            return SUCCESS;

        if (owner.hashPassword() != 0)
            return ERROR;

        LoginService ls = new LoginService();
        int result = ls.login(owner);
        if (result == 0) {
            session = ActionContext.getContext().getSession();
            session.put("owner", owner);
            return SUCCESS;
        }else if (result == -1){
            addFieldError("email","Invalid email or password");
            addFieldError("password","Invalid email or password");
            return INPUT;
        }
        else
            return ERROR;
    }

    public String logout (){
        Map session = ActionContext.getContext().getSession();
        session.remove("owner");
        return SUCCESS;
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
