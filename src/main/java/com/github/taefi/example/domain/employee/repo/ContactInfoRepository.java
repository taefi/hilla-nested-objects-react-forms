package com.github.taefi.example.domain.employee.repo;

import com.github.taefi.example.domain.employee.entity.ContactInfo;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

@Repository
public interface ContactInfoRepository extends JpaRepository<ContactInfo, Long>, JpaSpecificationExecutor<ContactInfo> {
}
