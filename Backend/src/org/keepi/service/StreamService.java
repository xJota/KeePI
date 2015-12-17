package org.keepi.service;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

/**
 * Created by jota on 11/7/15.
 */
public class StreamService {

    private static String PATH_TO_SCRIPT = "/home/pi/SCM/scripts/";
    private static String SCRIPT_NAME_FFMPEG = "ffmpeg.sh";
    private static String SCRIPT_NAME_MJPG = "mjpg.sh";
    private static String EXECUTER = "bash ";
    private static String PROCESS_FINDER = "ps ax";
    private static String KILL_COMMAND = "kill -9 ";
    private static String SNAPSHOT_SCRIPT = "snapshot.sh";
    private static String KILL_FFMPEG = "sudo killall -9 ffmpeg";
    private static String KILL_MJPEG = "sudo killall -9 raspistill mjpg_streamer";

    public int startStream(String userAgent){
        try {
            if (getProcessID(getCommandFor(userAgent)) >= 10)
                return 0;
            new Thread(new Runnable() {
                @Override
                public void run() {
                    try {
                        Process p = Runtime.getRuntime().exec(getCommandFor(userAgent));
                        p.waitFor();
                    } catch (IOException e) {
                        e.printStackTrace();
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
            }).start();
            return 0;
        } catch (Exception e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int stopStream(String userAgent){
        try {
            int processID = getProcessID(getCommandFor(userAgent));
            if (processID < 10)
                return 0;
            Process p2 = Runtime.getRuntime().exec(getKillCommandFor(userAgent));
            Process p = Runtime.getRuntime().exec(KILL_COMMAND+processID);
            return 0;
        } catch (IOException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int snapshot(){
        try {
            Process p = Runtime.getRuntime().exec(EXECUTER+PATH_TO_SCRIPT+SNAPSHOT_SCRIPT);
            return 0;
        } catch (IOException e) {
            e.printStackTrace();
            return -1;
        }
    }

    private int getProcessID(String command){
        try{
            Process p = Runtime.getRuntime().exec(PROCESS_FINDER);
            p.waitFor();
            BufferedReader reader = new BufferedReader(new InputStreamReader(p.getInputStream()));

            String line = "";
            while ((line = reader.readLine())!= null) {
                if (line.contains(command)){
                    System.out.println(line);
                    String[] splitted = line.split(" ");
                    for (String k:splitted){
                        if (k.replace(" ","").length()>1)
                            return Integer.parseInt(k);
                    }
                }
            }
        } catch (Exception e){
            e.printStackTrace();
            return -1;
        }
        return -1;
    }

    private String getCommandFor(String userAgent){
        if ((userAgent.indexOf("Chrome") > -1 || userAgent.indexOf("Firefox") > -1) && userAgent.indexOf("Android") <= -1) {
            return EXECUTER+PATH_TO_SCRIPT+SCRIPT_NAME_MJPG;
        }
        else{
            return EXECUTER+PATH_TO_SCRIPT+SCRIPT_NAME_FFMPEG;
        }
    }

    private String getKillCommandFor(String userAgent){
        if ((userAgent.indexOf("Chrome") > -1 || userAgent.indexOf("Firefox") > -1) && userAgent.indexOf("Android") <= -1) {
            return KILL_MJPEG;
        }
        else{
            return KILL_FFMPEG;
        }
    }
}
