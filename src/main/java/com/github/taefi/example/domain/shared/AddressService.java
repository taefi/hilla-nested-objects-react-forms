package com.github.taefi.example.domain.shared;

import com.github.taefi.example.domain.shared.entity.Address;
import com.github.taefi.example.domain.shared.repo.AddressRepository;
import com.vaadin.flow.server.auth.AnonymousAllowed;
import com.vaadin.hilla.BrowserCallable;
import com.vaadin.hilla.crud.CrudRepositoryService;

@BrowserCallable
@AnonymousAllowed
public class AddressService extends CrudRepositoryService<Address, Long, AddressRepository> {
}
