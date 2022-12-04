import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { ComboboxCoursComponent } from './combobox-cours/combobox-cours.component';



@NgModule({
  declarations: [
    ComboboxCoursComponent
  ],
  exports:[
    ComboboxCoursComponent
  ],
  imports: [
    CommonModule
  ]
})
export class SharedCourseModule { }
