package edu.yavirac.distributivobackend.util;
import java.util.HashMap;
import java.util.Map;

import org.springframework.context.annotation.Bean;

import com.cloudinary.*;
import com.cloudinary.utils.ObjectUtils;

public class CloudinaryConfig {
    
    private final static String CLOUD_NAME = "dx5lme7oc";
    private final static String API_KEY ="757517194995583";
    private final static String API_SECRET = "GGiG7XkHfLRZ1fEPcFuORtI486A";
    
    @Bean
    public static Cloudinary getConfig(){

        Map<String,String> config = new HashMap<String,String>();
        config.put("cloud_name", CLOUD_NAME);
        config.put("api_key", API_KEY);
        config.put("api_secret", API_SECRET);
        Cloudinary cloudinary = new Cloudinary(config);
        return cloudinary;
    }

    public static  Map getOptiosSubmitImage(String filename){
        return ObjectUtils.asMap(
            "public_id", "distributivo_yavirac/"+filename,
            "overwrite", true,
            "resource_type", "image");
    }

}
