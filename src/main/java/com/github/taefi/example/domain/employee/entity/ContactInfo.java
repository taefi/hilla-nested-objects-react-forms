package com.github.taefi.example.domain.employee.entity;

import com.github.taefi.example.domain.AbstractEntity;
import com.github.taefi.example.domain.shared.entity.Address;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.OneToOne;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;

@Entity
public class ContactInfo extends AbstractEntity {

    @NotEmpty
    @Email
    private String email;

    @NotEmpty
    private String phone;

    @OneToOne(fetch = FetchType.EAGER)
    @NotNull
    private Address mainAddress;

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public Address getMainAddress() {
        return mainAddress;
    }

    public void setMainAddress(Address mainAddress) {
        this.mainAddress = mainAddress;
    }
}
