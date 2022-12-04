package edu.yavirac.distributivobackend.util;

public class StringUtils {

    public static boolean isNullOrEmpty(String str) {
        if (str == null) return true;
        if (str.isEmpty()) return true;
     
        return false;
    }

}
