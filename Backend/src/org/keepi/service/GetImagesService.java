package org.keepi.service;

import java.io.*;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;

/**
 * Created by jota on 12/14/15.
 */
public class GetImagesService {

    private static String PATH_TO_IMAGES = "/var/www/html/92jFBTrivWGB3gkd828403FBJenvbwbncbvs2/";

    public GetImagesService() {
    }

    public List<String> getImagePaths (){
        File dir = new File(PATH_TO_IMAGES);
        List<String> list = Arrays.asList(dir.list(
                new FilenameFilter() {
                    @Override
                    public boolean accept(File dir, String name) {
                        return name.endsWith(".jpg");
                    }
                }
        ));
        java.util.Collections.sort(list,new Comparator<String>() {
            public int compare(String o1, String o2) {
                return extractInt(o1) - extractInt(o2);
            }

            int extractInt(String s) {
                String num = s.replaceAll("\\D", "");
                // return 0 if no digits found
                return num.isEmpty() ? 0 : Integer.parseInt(num);
            }
        });
        java.util.Collections.reverse(list);
        return list;
    }
}
