package com.github.taefi.example.domain.employee;

import com.github.taefi.example.domain.employee.entity.ContactInfo;
import com.github.taefi.example.domain.employee.repo.ContactInfoRepository;
import com.vaadin.hilla.crud.CrudRepositoryService;
import org.springframework.stereotype.Service;

@Service
class ContactInfoService extends CrudRepositoryService<ContactInfo, Long, ContactInfoRepository> {
}
