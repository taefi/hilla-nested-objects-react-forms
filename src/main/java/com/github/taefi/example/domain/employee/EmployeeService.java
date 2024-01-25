package com.github.taefi.example.domain.employee;

import com.github.taefi.example.domain.employee.entity.Employee;
import com.github.taefi.example.domain.employee.repo.ContactInfoRepository;
import com.github.taefi.example.domain.employee.repo.EmployeeRepository;
import com.github.taefi.example.domain.shared.repo.AddressRepository;
import com.vaadin.flow.server.auth.AnonymousAllowed;
import com.vaadin.hilla.BrowserCallable;
import com.vaadin.hilla.Nullable;
import com.vaadin.hilla.crud.CrudRepositoryService;

import java.util.List;

@BrowserCallable
@AnonymousAllowed
public class EmployeeService extends CrudRepositoryService<Employee, Long, EmployeeRepository> {

    private final ContactInfoRepository contactInfoRepository;
    private final AddressRepository addressRepository;

    public EmployeeService(ContactInfoRepository contactInfoRepository, AddressRepository addressRepository) {
        this.contactInfoRepository = contactInfoRepository;
        this.addressRepository = addressRepository;
    }


    @Override
    public @Nullable Employee save(Employee employee) {
        if (employee.getManager() != null) {
            if ( employee.getManager().getId() == null) {
                employee.setManager(null);
            } else {
                getRepository().findById(employee.getManager().getId()).ifPresent(employee::setManager);
            }
        }
        if (employee.getContactInfo() != null) {
            if (employee.getContactInfo().getId() == null) {
                if (employee.getContactInfo().getMainAddress() != null) {
                    if (employee.getContactInfo().getMainAddress().getId() == null) {
                        var savedAddress = addressRepository.save(employee.getContactInfo().getMainAddress());
                        employee.getContactInfo().setMainAddress(savedAddress);
                    } else {
                        employee.getContactInfo().setMainAddress(addressRepository.findById(employee.getContactInfo().getMainAddress().getId()).orElseThrow());
                    }
                }
                var savedContactInfo = contactInfoRepository.save(employee.getContactInfo());
                employee.setContactInfo(savedContactInfo);
            } else {
                contactInfoRepository.findById(employee.getContactInfo().getId()).ifPresent(employee::setContactInfo);
            }
        }
        return super.save(employee);
    }

    @Nullable
    public List<Employee> listManagers() {
        return getRepository().findEmployeesByIsManagerIsTrue();
    }

}
