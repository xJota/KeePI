package org.keepi.action;

/**
 * Created by jota on 11/6/15.
 */

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import org.apache.struts2.ServletActionContext;
import org.keepi.model.Owner;
import org.keepi.service.LoginService;
import org.keepi.service.StreamService;

import javax.servlet.http.HttpServletRequest;
import java.security.NoSuchAlgorithmException;
import java.util.Map;

public class StreamAction extends ActionSupport{

    private String isRunning;
    private String userAgent;
    private Owner owner;

    @Override
    public void validate (){
        HttpServletRequest request = ServletActionContext.getRequest();
        userAgent = request.getHeader("user-agent").toString();
        System.out.println(userAgent);
        Map session = ActionContext.getContext().getSession();
        if ((owner = (Owner) session.get("owner")) == null)
            addActionError("ERROR");
    }

    public String execute(){
        LoginService ls = new LoginService();
        if (ls.login(owner) != 0)
            return ERROR;
        StreamService ss = new StreamService();
        if (ss.startStream(userAgent) == 0) {
            setIsRunning("yes");
            return SUCCESS;
        }else
            return ERROR;
    }

    public String getIsRunning() {
        return isRunning;
    }

    public void setIsRunning(String isRunning) {
        this.isRunning = isRunning;
    }

    public String stopStream(){
        LoginService ls = new LoginService();
        if (ls.login(owner) != 0)
            return ERROR;
        StreamService ss = new StreamService();
        if (ss.stopStream(userAgent) == 0) {
            setIsRunning("no");
            return SUCCESS;
        }else
            return ERROR;
    }

    public String snapshot(){
        LoginService ls = new LoginService();
        if (ls.login(owner) != 0)
            return ERROR;
        StreamService ss = new StreamService();
        if (ss.snapshot() == 0)
            return SUCCESS;
        else
            return ERROR;
    }

    public String getUserAgent() {
        return userAgent;
    }

    public void setUserAgent(String userAgent) {
        this.userAgent = userAgent;
    }
}
