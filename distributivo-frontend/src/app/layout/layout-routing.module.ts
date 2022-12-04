import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { DashboardComponent } from './dashboard/dashboard.component';
import { MainComponent } from './main/main.component';

const routes: Routes = [
  {
    path: '',
    component: MainComponent,
    children: [
      { path: '', component: DashboardComponent },
      { path: 'dashboard', component: DashboardComponent },

      {
        path: 'career', loadChildren: () =>
          import("../feature/career/career.module").then(
            (m) => m.CareerModule
          )
      },

      {
        path: 'distributivo-docente',
        loadChildren: () =>
          import('../feature/distibutivo-docente/distibutivo-docente.module').then(
            (m) => m.DistibutivoDocenteModule
          )
      },
      {
        path: 'location',
        loadChildren: () =>
          import('../feature/location/location.module').then(
            (m) => m.LocationModule
          ),
      },
      {
        path: 'classroom',
        loadChildren: () =>
          import('../feature/classroom/classroom.module').then(
            (m) => m.ClassroomModule
          ),
      },
      {
        path: 'grade',
        loadChildren: () =>
          import('../feature/grade/grade.module').then((m) => m.GradeModule),
      },
      {
        path: 'schedule',
        loadChildren: () =>
          import('../feature/schedule/schedule.module').then(
            (c) => c.ScheduleModule
          ),
      },
      {
        path: 'user',
        loadChildren: () =>
          import('../feature/user/user.module').then(
            (c) => c.UserModule
          ),
      },
      {
        path : 'teacher-list',
        loadChildren : ()=>
        import('../feature/teacher/teacher.module').then(
          c=> c.TeacherModule
        )
      },
      {
        path : 'career',
        loadChildren : ()=>import('../feature/career/career.module').then(c=>c.CareerModule)
      }
    ],
  },
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
})
export class LayoutRoutingModule { }
