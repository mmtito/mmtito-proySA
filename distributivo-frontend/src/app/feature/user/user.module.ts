import { CommonModule } from '@angular/common';
import { NgModule } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { Route, RouterModule } from '@angular/router';
import { ComboboxRoleComponent } from '../role/combobox-role/combobox-role.component';
import { ModalUserComponent } from './modal-user/modal-user.component';
import { PaginationUserComponent } from './pagination-user/pagination-user.component';
import { ToolbarUserComponent } from './toolbar-location/toolbar-user.component';
import { UploadModalUserComponent } from './upload-modal-user/upload-modal-.component';
import { UserListComponent } from './user-list/user-list.component';

import { UserComponent } from './user.component';
import { ListRoleUserComponent } from './list-role-user/list-role-user.component';

const routes: Route[] = [
  {
    path: '',
    component: UserComponent,
  },
];

@NgModule({
  imports: [CommonModule, FormsModule, RouterModule.forChild(routes)],
  exports: [],
  declarations: [
    UserComponent,
    UserListComponent,
    PaginationUserComponent,
    ToolbarUserComponent,
    ModalUserComponent,
    UploadModalUserComponent,
    ComboboxRoleComponent,
    ListRoleUserComponent
  ],
  providers: [],
})
export class UserModule {}
