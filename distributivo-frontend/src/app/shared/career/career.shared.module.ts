
import { CommonModule } from '@angular/common';
import { NgModule } from '@angular/core';
import { ComboboxCareerComponent } from './combobox-career/combobox-career.component';


@NgModule({
    imports: [CommonModule],
    declarations: [ComboboxCareerComponent],
    exports: [ComboboxCareerComponent
    ]
})
export class SharedCareerModule { }