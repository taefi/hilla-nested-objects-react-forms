import Employee from "Frontend/generated/com/github/taefi/example/domain/employee/entity/Employee";
import {FormLayout} from "@vaadin/react-components/FormLayout";
import {TextField} from "@vaadin/react-components/TextField";
import {Select} from "@vaadin/react-components/Select";
import {DatePicker} from "@vaadin/react-components/DatePicker";
import {useForm, useFormPart} from "@vaadin/hilla-react-form";
import EmployeeModel from "Frontend/generated/com/github/taefi/example/domain/employee/entity/EmployeeModel";
import {CSSProperties, useEffect, useState} from "react";
import {CityService, CountryService, EmployeeService} from "Frontend/generated/endpoints";
import Gender from "Frontend/generated/com/github/taefi/example/domain/employee/entity/Gender";
import {ComboBox} from "@vaadin/react-components/ComboBox";
import {VerticalLayout} from "@vaadin/react-components/VerticalLayout";
import {HorizontalLayout} from "@vaadin/react-components/HorizontalLayout";
import {Button} from "@vaadin/react-components/Button";
import {EmailField} from "@vaadin/react-components/EmailField";
import Country from "Frontend/generated/com/github/taefi/example/domain/shared/entity/Country";
import City from "Frontend/generated/com/github/taefi/example/domain/shared/entity/City";

const responsiveSteps = [
  { minWidth: '0', columns: 1 },
  { minWidth: '800px', columns: 2 },
];

const GenderOptions = [
  {label: "Female", value: Gender.FEMALE},
  {label: "Male", value: Gender.MALE},
  {label: "Non-binary", value: Gender.NON_BINARY},
  {label: "Other", value: Gender.OTHER}
]

const booleanOptions = [
  {label: "Yes", value: "true"},
  {label: "No", value: "false"}
]

interface EmployeeFormProps {
  employee?: Employee;
  afterSave?: (employee: Employee) => void;
  style?: CSSProperties;
}

interface Manager extends Employee {
  fullName: string;
}

export default function EmployeeForm({ employee, afterSave, style}: EmployeeFormProps) {

  const [managers, setManagers] = useState<Array<Manager>>([]);

  const employeeForm = useForm(EmployeeModel, {
    onSubmit: async (employee: Employee) => {
      const savedEmployee = await EmployeeService.save(employee);
      if (savedEmployee) {
        afterSave?.(savedEmployee);
      }
    }
  });

  const contactInfoForm = useFormPart(employeeForm.model.contactInfo);
  const addressForm = useFormPart(contactInfoForm.model.mainAddress);
  const cityForm = useFormPart(addressForm.model.city);

  const emptyEmployee: Employee = {
    id: undefined,
    firstName: '',
    lastName: '',
    gender: undefined,
    birthDate: '',
    employmentDate: '',
    terminationDate: '',
    isManager: false,
    manager: undefined,
    contactInfo: {
      id: undefined,
      email: '',
      phone: '',
      mainAddress: {
        id: undefined,
        street1: '',
        street2: '',
        zipCode: '',
        city: {
          id: undefined,
          name: '',
          country: undefined,
        },
      },
    },
  }

  useEffect(() => {
    EmployeeService.listManagers().then((employees) => {
      const managers = employees!.filter(e => e !== null && e !== undefined).map((e) => {
        return { ...e, fullName: `${e!.firstName} ${e!.lastName}` } as Manager;
      });
      setManagers(managers);
    });
    if (employee) {
      const manager = employee.manager;
      const employeeWithManager = {
        ...employee,
        manager: {
          ...employee.manager,
          fullName: manager ? `${employee.manager?.firstName} ${employee.manager?.lastName}` : ''
        }
      } as Employee;
      employeeForm.read(employeeWithManager);
    } else {
      read(emptyEmployee);
    }
  }, [employee]);

  const [countries, setCountries] = useState<Array<Country>>([]);
  const [cities, setCities] = useState<Array<City>>([]);

  useEffect( () => {
    const fetchCountries = async () => {
      const countryList = await CountryService.findAll();
      setCountries(countryList);
    }
    fetchCountries();
  }, []);

  useEffect(() => {
    const selectedCountry = cityForm.value?.country;
    if (selectedCountry == null) {
      setCities([]);
    } else {
      CityService.findByCountryId(selectedCountry.id!).then((cities) => {
        setCities(cities);
      });
    }
  }, [cityForm.value?.country]);

  const { model, field, read, submit, reset } = employeeForm;
  return (
    <VerticalLayout style={style}>
      <FormLayout responsiveSteps={responsiveSteps} className="m-m">
        <TextField label="First name" {...field(model.firstName)} />
        <TextField label="Last name" {...field(model.lastName)} />
        <Select label="Gender" {...field(model.gender)} items={GenderOptions} />
        <DatePicker label="Birth date" {...field(model.birthDate)} />
        <DatePicker label="Employment date" {...field(model.employmentDate)} />
        <DatePicker label="Termination date" {...field(model.terminationDate)} />
        <Select label="Is manager" {...field(model.isManager)} items={booleanOptions} />
        <ComboBox label="Manager" {...field(model.manager)}
                  itemLabelPath="fullName"
                  itemValuePath="id"
                  items={managers} />
        <EmailField label="Email" {...contactInfoForm.field(contactInfoForm.model.email)} />
        <TextField label="Phone" {...contactInfoForm.field(contactInfoForm.model.phone)} />
        <TextField label="Address line 1" {...addressForm.field(addressForm.model.street1)} />
        <TextField label="Address line 2" {...addressForm.field(addressForm.model.street2)} />
        <TextField label="Zip code" {...addressForm.field(addressForm.model.zipCode)} />
        <div></div>
        <ComboBox label="Country"
                  item-label-path="name"
                  item-value-path="id"
                  {...cityForm.field(cityForm.model.country)}
                  items={countries} />
        <ComboBox label="City"
                  item-label-path="name"
                  item-value-path="id"
                  {...addressForm.field(addressForm.model.city)}
                  items={cities} />
      </FormLayout>

      <HorizontalLayout theme="spacing padding">
        <Button onClick={reset}>Cancel</Button>
        <Button onClick={submit} theme="primary">Save</Button>
      </HorizontalLayout>
    </VerticalLayout>
  );

}