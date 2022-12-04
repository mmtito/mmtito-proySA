import { Component, OnInit } from '@angular/core';
import { Career } from '../models/career';
import { CareerService } from '../career.service';
import { MatSnackBar } from '@angular/material/snack-bar';

@Component({
  selector: 'app-list-career',
  templateUrl: './list-career.component.html',
  styleUrls: [],
})
export class ListCareerComponent implements OnInit {
  constructor(
    private careerService: CareerService,
    private snackbar: MatSnackBar
  ) {}

  public listCareers: Career[] = [];

  ngOnInit(): void {
    this.getCareers();
  }

  private currentId: string = '';

  private getCareers() {
    this.careerService.findAll().subscribe((res) => {
      res.forEach((value, index) => {
        res[index].img = this.resizeImage(value.img);
      });

      this.listCareers = res;
    });
  }

  setIdDelete(id: string) {
    this.currentId = id;
  }

  private resizeImage(link: any) {
    let array = link.split('/');
    array.splice(6, 0, 'w_300,h_150,c_scale/');

    return array.join().replaceAll(',', '/');
  }

  delete() {
    this.careerService.delete(this.currentId).subscribe(
      () => {
        this.snackbar.open('Se elimino la carrera correctamente ✅');
        this.removeItemdOfList();
      },
      () => this.snackbar.open('Hubo un error al guardar la carrera ❌')
    );
  }

  private removeItemdOfList() {
    this.listCareers = this.listCareers.filter((v) => v.id != this.currentId);
    this.removeCurrentId();
  }

  public removeCurrentId() {
    this.currentId = '';
  }
}
