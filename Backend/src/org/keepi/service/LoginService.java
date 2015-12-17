package org.keepi.service;

import org.keepi.model.Owner;

import java.io.*;

/**
 * Created by jota on 11/6/15.
 */
public class LoginService {

    private static String PATH_TO_CORE = "/home/pi/SCM/access/";
    private static String ACCOUNTS_FILE = "accounts";
    private static String TOKENS_FILE = "authorized";

    public int login (Owner owner){
        File file = new File(PATH_TO_CORE+ACCOUNTS_FILE);
        try (BufferedReader br = new BufferedReader(new FileReader(file))) {
            String line;
            while ((line = br.readLine()) != null) {
                String[] parts = line.split(",");
                if (parts[0].equals(owner.getEmail())){
                    if (parts[1].equals(owner.getPassword()))
                        return 0;
                    else
                        return -1;
                }
                else
                    continue;
            }
        } catch (Exception e) {
            e.printStackTrace();
            return -2;
        }
        return -1;
    }

    public int signup (Owner owner) {
        File file = new File(PATH_TO_CORE+TOKENS_FILE);
        try (BufferedReader br = new BufferedReader(new FileReader(file))) {
            String line;
            while ((line = br.readLine()) != null) {
                if (line.equals(owner.getToken())){
                    return signupValidToken(owner);
                }
            }
        }
        catch (Exception e){
            e.printStackTrace();
            return -3;
        }
        return -2;
    }

    private int signupValidToken (Owner owner){
        File file = new File(PATH_TO_CORE+ACCOUNTS_FILE);
        try (BufferedReader br = new BufferedReader(new FileReader(file))) {
            String line;
            while ((line = br.readLine()) != null) {
                String[] parts = line.split(",");
                if (parts[0].equals(owner.getEmail())){
                    return -1;
                }
            }
        }
        catch (Exception e){
            e.printStackTrace();
            return -3;
        }
        return signupValidUsername(owner);
    }

    private int signupValidUsername (Owner owner) {
        try {
            Writer output = new BufferedWriter(new FileWriter((PATH_TO_CORE + ACCOUNTS_FILE), true));
            output.append(owner.getEmail() + "," + owner.getPassword() + "," + owner.getRname() + "," + owner.getToken() + "\n");
            output.close();
        }
        catch (Exception e){
            e.printStackTrace();
            return -3;
        }
        return 0;
    }

    public static String getFullPathToTokensFile(){
        return PATH_TO_CORE+TOKENS_FILE;
    }
}
