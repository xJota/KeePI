package org.keepi.action;

/**
 * Created by jota on 11/6/15.
 */

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import org.keepi.model.Owner;
import org.keepi.service.GetImagesService;
import org.keepi.service.LoginService;
import org.keepi.service.OwnerService;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class GetImagesAction extends ActionSupport{

    private List<String> list = new ArrayList<String>();
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
        GetImagesService gis = new GetImagesService();
        list = gis.getImagePaths();
        return Action.SUCCESS;
    }

    public List<String> getList() {
        return list;
    }

    public void setList(List<String> list) {
        this.list = list;
    }
}
