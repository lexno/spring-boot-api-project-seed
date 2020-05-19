package com.company.project.exception;

import lombok.Getter;
import org.springframework.http.HttpStatus;

import static sun.security.timestamp.TSResponse.BAD_REQUEST;

@Getter
public class BadRequestException extends RuntimeException {
    private Integer status = BAD_REQUEST;
    public BadRequestException(String msg){
        super(msg);
    }

    public BadRequestException(HttpStatus status, String msg){
        super(msg);
        this.status = status.value();
    }
}
