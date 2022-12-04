import { CommonModule } from '@angular/common';
import { NgModule } from '@angular/core';
import { ComboboxClassroomComponent } from './combobox-classroom/combobox-classroom.component';

@NgModule({
  imports: [CommonModule],
  declarations: [ComboboxClassroomComponent],
  exports: [ComboboxClassroomComponent],
})
export class SharedClassroomModule {}
