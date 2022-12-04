import { CommonModule } from '@angular/common';
import { NgModule } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { Route, RouterModule } from '@angular/router';
import { SharedTeacherModule } from 'src/app/shared/teacher/teacher.shared.module';
import { ModalTeacherComponent } from './modal-teacher/modal-teacher.component';
import { TeacherListComponent } from './teacher-list/teacher-list.component';
import { TeacherPaginationComponent } from './teacher-pagination/teacher-pagination.component';

import { TeacherComponent } from './teacher.component';
import { ToolbarTeacherComponent } from './toolbar-teacher/toolbar-teacher.component';
import { UploadModalTeacherComponent } from './upload-modal-teacher/upload-modal-teacher.component';

const routes : Route[] = [
    {path: '', component: TeacherComponent },
    {path: ':id', component: TeacherComponent },
]

@NgModule({
    imports: [
        RouterModule.forChild(routes), 
        CommonModule, 
        FormsModule, 
        SharedTeacherModule],
    exports: [],
    declarations: [
        TeacherComponent,
        ModalTeacherComponent,
        TeacherListComponent,
        ToolbarTeacherComponent,
        TeacherPaginationComponent,
        UploadModalTeacherComponent

    ],
    providers: [],
})
export class TeacherModule { }
