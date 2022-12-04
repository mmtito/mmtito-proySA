import { CommonModule } from '@angular/common';
import { NgModule } from '@angular/core';
import { GradeComboboxComponent } from './grade-combobox/grade-combobox.component';

@NgModule({
  imports: [CommonModule],
  declarations: [GradeComboboxComponent],
  exports: [GradeComboboxComponent],
})
export class SharedGradeModule { }
