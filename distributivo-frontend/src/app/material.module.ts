import {NgModule} from '@angular/core';

import {MatStepperModule} from '@angular/material/stepper';
import {MatDialogModule} from '@angular/material/dialog';
import { MatRippleModule} from '@angular/material/core';
import {MatSnackBarModule, MAT_SNACK_BAR_DEFAULT_OPTIONS} from '@angular/material/snack-bar';
import {MatProgressSpinnerModule} from '@angular/material/progress-spinner';

@NgModule({


  exports: [

    MatStepperModule,
    MatDialogModule,
    MatSnackBarModule,
    MatRippleModule,
    MatProgressSpinnerModule 
 

  ]
  ,providers : [{provide: MAT_SNACK_BAR_DEFAULT_OPTIONS, useValue: {duration: 2500}}]
})
export class MaterialExampleModule {}
