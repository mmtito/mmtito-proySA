import { CommonModule } from '@angular/common';
import { NgModule } from '@angular/core';
import { TeacherComboboxComponent } from './teacher-combobox/teacher-combobox.component';

@NgModule({
  imports: [CommonModule],
  declarations: [TeacherComboboxComponent],
  exports: [TeacherComboboxComponent],
})
export class SharedTeacherModule {}
