import { NgModule } from '@angular/core';
import { Route, RouterModule } from '@angular/router';
import { GradeComponent } from './grade.component';
import { ToolbarGradeComponent } from './toolbar-grade/toolbar-grade.component';
import { UploadModalGradeComponent } from './upload-modal-grade/upload-modal-grade.component';
import { ModalGradeComponent } from './modal-grade/modal-grade.component';
import { ListGradeComponent } from './list-grade/list-grade.component';
import { CardGradeComponent } from './card-grade/card-grade.component';
import { FormsModule } from '@angular/forms';
import { CommonModule } from '@angular/common';
import { SharedCareerModule } from 'src/app/shared/career/career.shared.module';

const routes: Route[] = [
  {
    path: '',
    component: GradeComponent,
  },
  {
    path: ':id',
    component: GradeComponent,
  },
];

@NgModule({
  imports: [RouterModule.forChild(routes), FormsModule, CommonModule, SharedCareerModule],
  exports: [],
  declarations: [
    GradeComponent,
    ToolbarGradeComponent,
    UploadModalGradeComponent,
    ModalGradeComponent,
    ListGradeComponent,
    CardGradeComponent,
  ],
  providers: [],
})
export class GradeModule {}
