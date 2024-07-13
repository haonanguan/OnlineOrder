package com.laioffer.onlineorder.entity;

import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Table;

@Table("customers")
public record CustomerEntity(
        @Id Long id,
        String email,
        String password,
        Boolean enabled,
        String firstName,
        String lastName
) {
}