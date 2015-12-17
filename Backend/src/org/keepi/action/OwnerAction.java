package org.keepi.action;

/**
 * Created by jota on 11/6/15.
 */

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;
import org.keepi.model.Owner;
import org.keepi.service.LoginService;
import org.keepi.service.OwnerService;
import org.keepi.service.StreamService;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

public class OwnerAction extends ActionSupport{

    private String ptoken;
    private Owner owner;

    @Override
    public void validate (){
        Map session = ActionContext.getContext().getSession();
        if ((owner = (Owner) session.get("owner")) == null)
            addActionError("ERROR");
    }

    public String execute(){
        LoginService ls = new LoginService();
        if (ls.login(owner) != 0)
            return ERROR;

        OwnerService os = new OwnerService();
        if (os.addOwner(ptoken))
            return SUCCESS;
        else
            return ERROR;
    }

    public String getPtoken() {
        return ptoken;
    }

    public void setPtoken(String ptoken) {
        this.ptoken = ptoken;
    }
}
