import {AutoGrid, AutoGridRef} from "@vaadin/hilla-react-crud";
import {EmployeeService} from "Frontend/generated/endpoints";
import EmployeeModel from "Frontend/generated/com/github/taefi/example/domain/employee/entity/EmployeeModel";
import Employee from "Frontend/generated/com/github/taefi/example/domain/employee/entity/Employee";
import {GridColumn} from "@vaadin/react-components/GridColumn";
import {useRef, useState} from "react";
import EmployeeForm from "Frontend/views/employee/EmployeeForm";
import {SplitLayout} from "@vaadin/react-components/SplitLayout";


export default function EmployeeCustomCrud() {

  const employeeGridRef = useRef<AutoGridRef>(null);
  const [selectedEmployee, setSelectedEmployee] = useState<Employee|undefined>(undefined);

  function refreshGrid() {
    employeeGridRef.current?.refresh();
  }

  function ManagerColumnRenderer({ item }: { item: Employee }) {
    const { manager } = item;
    return (
      <span>
        {manager?.firstName} {manager?.lastName}
      </span>
    );
  }

  return (
    <SplitLayout orientation="horizontal" className="h-full">
      <AutoGrid service={EmployeeService} model={EmployeeModel}
                className="h-full"
                style={{ width: '75%' }}
                visibleColumns={['firstName', 'lastName', 'employmentDate', 'isManager', 'managerFullName']}
                customColumns={[
                  <GridColumn key="managerFullName" header="Manager" renderer={ManagerColumnRenderer} />,
                ]}
                ref={employeeGridRef}
                onActiveItemChanged={(e) => {
                  const item = e.detail.value;
                  setSelectedEmployee(item);
                }}
                selectedItems={[selectedEmployee]}
      />
      <EmployeeForm employee={selectedEmployee} style={{ width: '25%' }} afterSave={refreshGrid}/>
    </SplitLayout>
  );
}