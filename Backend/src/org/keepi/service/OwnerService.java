package org.keepi.service;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.Writer;

/**
 * Created by jota on 12/14/15.
 */
public class OwnerService {

    public OwnerService() {
    }

    public boolean addOwner (String token){
        try {
            Writer output = new BufferedWriter(new FileWriter((LoginService.getFullPathToTokensFile()), true));
            output.append(token + "\n");
            output.close();
            return true;
        }
        catch (Exception e){
            e.printStackTrace();
            return false;
        }
    }
}
