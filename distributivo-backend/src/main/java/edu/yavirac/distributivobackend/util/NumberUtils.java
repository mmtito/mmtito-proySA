package edu.yavirac.distributivobackend.util;

public class NumberUtils {

    public static boolean isNullOrEmpty(Long num){


        if( num == null) return true;
        if( num <= 0   ) return true;
        return false;
    }
    
}
