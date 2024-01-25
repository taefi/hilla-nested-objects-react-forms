package com.github.taefi.example.domain.shared;

import com.github.taefi.example.domain.shared.entity.Country;
import com.github.taefi.example.domain.shared.repo.CountryRepository;
import com.vaadin.flow.server.auth.AnonymousAllowed;
import com.vaadin.hilla.BrowserCallable;
import com.vaadin.hilla.crud.CrudRepositoryService;

import java.util.List;

@BrowserCallable
@AnonymousAllowed
public class CountryService extends CrudRepositoryService<Country, Long, CountryRepository> {

    public List<Country> findAll() {
        return getRepository().findAll();
    }
}
