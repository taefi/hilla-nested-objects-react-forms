import {AutoCrud} from '@vaadin/hilla-react-crud';
import {CityService, CountryService} from 'Frontend/generated/endpoints';
import CityModel from "Frontend/generated/com/github/taefi/example/domain/shared/entity/CityModel";
import {useEffect, useState} from "react";
import Country from "Frontend/generated/com/github/taefi/example/domain/shared/entity/Country";
import {ComboBox} from "@vaadin/react-components/ComboBox";

export default function CityView() {

  const [countries, setCountries] = useState<Array<Country>>([]);

  useEffect(() => {
    CountryService.findAll().then((countries) => {
      setCountries(countries);
    });
  }, []);

  return (
      <AutoCrud service={CityService}
                model={CityModel}
                className="h-full"
                gridProps={{
                  visibleColumns: ['name', 'country.name'],
                  columnOptions: {
                    'country.name': {
                      header: 'Country'
                    }
                  }
                }}
                formProps={{
                  fieldOptions: {
                    country: {
                      renderer: ({ field }) =>
                          <ComboBox label="Country"
                                    item-label-path="name"
                                    item-value-path="id"
                                    items={countries}
                                    {...field}
                                    required />,
                    }
                  }
                }} />
  );
}