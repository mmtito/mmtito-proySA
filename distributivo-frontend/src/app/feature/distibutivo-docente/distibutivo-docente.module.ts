import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { DistibutivoDocenteListComponent } from './distibutivo-docente-list/distibutivo-docente-list.component';
import { Route, RouterModule } from '@angular/router';
import { FormsModule } from '@angular/forms';
import { DistibutivoDocenteComponent } from './distibutivo-docente.component';
import { DistibutivoDocentePaginationComponent } from './distibutivo-docente-pagination/distibutivo-docente-pagination.component';
import { DistibutivoDocenteToolbarComponent } from './distibutivo-docente-toolbar/distibutivo-docente-toolbar.component';
import { DistibutivoDocenteGenerateComponent } from './distibutivo-docente-generate/distibutivo-docente-generate.component';
import { DistibutivoDocenteComboboxComponent } from './distibutivo-docente-combobox/distibutivo-docente-combobox.component';
import { DistibutivoDocenteDetalleComponent } from './distibutivo-docente-detalle/distibutivo-docente-detalle.component';
import { DistributivoModalAddComponent } from './distributivo-modal-add/distributivo-modal-add.component'; 
import { SharedCareerModule } from 'src/app/shared/career/career.shared.module';
import { SharedGradeModule } from 'src/app/shared/grade/grade.shared.module';
import { SharedTeacherModule } from 'src/app/shared/teacher/teacher.shared.module';
import { SharedSchoolPeriodModule } from 'src/app/shared/school-period/school-period.shared.module';
import { SharedCourseModule } from 'src/app/shared/course/course.module';

const routes : Route[] = [
  
  { path: '', component : DistibutivoDocenteListComponent},
  { path: ':id', component: DistibutivoDocenteListComponent },
]

@NgModule({
  declarations: [
    DistibutivoDocenteComponent,
    DistibutivoDocenteListComponent,
    DistibutivoDocentePaginationComponent,
    DistibutivoDocenteToolbarComponent,
    DistibutivoDocenteGenerateComponent,
    DistibutivoDocenteComboboxComponent,
    DistibutivoDocenteDetalleComponent,
    DistributivoModalAddComponent
  ],
  imports: [RouterModule.forChild(routes),
    CommonModule,
    FormsModule,
    SharedCareerModule,
    SharedGradeModule,
    SharedTeacherModule,
    SharedSchoolPeriodModule,
    SharedCourseModule

  ],
  providers: [],
  exports: []
})
export class DistibutivoDocenteModule { }
