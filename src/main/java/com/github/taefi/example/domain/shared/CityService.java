package com.github.taefi.example.domain.shared;

import com.github.taefi.example.domain.shared.entity.City;
import com.github.taefi.example.domain.shared.repo.CityRepository;
import com.vaadin.flow.server.auth.AnonymousAllowed;
import com.vaadin.hilla.BrowserCallable;
import com.vaadin.hilla.crud.CrudRepositoryService;

import java.util.List;

@BrowserCallable
@AnonymousAllowed
public class CityService extends CrudRepositoryService<City, Long, CityRepository> {

    public List<City> findByCountryId(Long countryId) {
        return getRepository().findCitiesByCountry_Id(countryId);
    }
}
