import {AutoCrud} from '@vaadin/hilla-react-crud';
import { CountryService } from 'Frontend/generated/endpoints';
import CountryModel from "Frontend/generated/com/github/taefi/example/domain/shared/entity/CountryModel";

export default function CountryView() {

  return (
      <AutoCrud className="h-full"
                service={CountryService}
                model={CountryModel} />
  );
}