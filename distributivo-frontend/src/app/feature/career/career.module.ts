import { CommonModule } from '@angular/common';
import { NgModule } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { Route, RouterModule } from '@angular/router';
import { SharedCareerModule } from 'src/app/shared/career/career.shared.module';
import { CareerModalComponent } from './career-modal/career-modal.component';

import { CareerComponent } from './career.component';
import { CardCareerComponent } from './card-career/card-career.component';
import { ListCareerComponent } from './list-career/list-career.component';

const routes : Route[] = [
    {
        path : '',
        component : CareerComponent
    }
]

@NgModule({
    imports: [RouterModule.forChild(routes), CommonModule
    , FormsModule, SharedCareerModule],
    exports: [],
    declarations: [CareerComponent, 
    CareerModalComponent, CardCareerComponent, ListCareerComponent],
    providers: [],
})
export class CareerModule { }
