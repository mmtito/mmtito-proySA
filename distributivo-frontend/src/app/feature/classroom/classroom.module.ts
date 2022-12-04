import { CommonModule } from '@angular/common';
import { NgModule } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { Route, RouterModule } from '@angular/router';
import { LocationComboboxComponent } from '../location/locationcombobox/location-combobox.component';
import { ClassroomListComponent } from './classroom-list/classroom-list.component';

import { ClassroomComponent } from './classroom.component';
import { ModalClassroomComponent } from './modal-classroom/modal-classroom.component';
import { PaginationClassroomComponent } from './pagination-classroom/pagination-classroom.component';
import { ToolbarClassroomComponent } from './toolbar-classroom/toolbar-classroom.component';
import { UploadModalClassroomComponent } from './upload-modal-classroom/upload-modal-classroom.component';
import { ClassroomTypeComboboxComponent } from './classroom-type-combobox/classroom-type-combobox.component';
//import { ClassroomComboboxComponent } from './classroom-combobox/classroom-combobox.component';

const routes : Route[] =[
    {
        path : '', component : ClassroomComponent,
    },
    {
        path : ':id', component : ClassroomComponent
    }
] 

@NgModule({
    imports: [ RouterModule.forChild(routes), FormsModule, CommonModule ],
    exports: [],
    declarations: [ClassroomComponent,
        ToolbarClassroomComponent,
        ClassroomListComponent,
        UploadModalClassroomComponent,
        ModalClassroomComponent,
        PaginationClassroomComponent,
        LocationComboboxComponent,
        ClassroomTypeComboboxComponent,
  

    
    ],
    providers: [],
})
export class ClassroomModule { }
