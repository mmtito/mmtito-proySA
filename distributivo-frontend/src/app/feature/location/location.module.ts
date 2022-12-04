import { NgModule } from '@angular/core';

import { LocationListComponent } from './location-list/location-list.component';
import { ToolbarLocationComponent } from './toolbar-location/toolbar-location.component';
import { UploadModalLocationComponent } from './upload-modal-location/upload-modal-location.component';
import { ModalLocationComponent } from './modal-location/modal-location.component';
import { Route, RouterModule } from '@angular/router';
import { LocationComponent } from './location.component';
import { PaginationLocationComponent } from './pagination-location/pagination-location.component';
import { FormsModule } from '@angular/forms';
import { CommonModule } from '@angular/common';

const routes : Route[] =[
    {
        path : '', component : LocationComponent,
    },
    {
        path : ':id', component : LocationComponent
    }
]  

@NgModule({
  imports: [RouterModule.forChild(routes),
    FormsModule,
    CommonModule],
  exports: [],
  declarations: [
    LocationListComponent,
    ToolbarLocationComponent,
    UploadModalLocationComponent,
    ModalLocationComponent,
    LocationComponent, 
    PaginationLocationComponent, 
    LocationComponent,
  
  ],
  providers: [],
})
export class LocationModule {}
