package com.dao;

import com.entity.Login;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;


/**
 *
 * @author akshay
 */
public class UserValidator implements Validator {

    @Override
    public boolean supports(Class<?> clazz) {
        return Login.class.isAssignableFrom(clazz);
    }

    @Override
    public void validate(Object obj, Errors errors) {
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "uname", "Empty.UsersName");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "pass", "Empty.UsersPass");
 
   //     ValidationUtils.rejectIfEmptyOrWhitespace(errors, "user", "Empty.UsersUser");
        
        Login user = (Login) obj;
        System.out.println("count from validator!!!!!" + user.getUser_count());
        if (user.getUser_count() > 0) {

        } else {
            errors.reject("User.Details.Mismatch");
        }
    }
    
}
