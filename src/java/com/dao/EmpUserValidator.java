
package com.dao;

import com.entity.Employee;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

public class EmpUserValidator implements Validator  {
    
    @Override
    public boolean supports(Class<?> clazz) {
        return Employee.class.isAssignableFrom(clazz);
    }

    @Override
    public void validate(Object obj, Errors errors) {
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email", "Empty.UsersEmail");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "Empty.UsersPassword"); }
}
