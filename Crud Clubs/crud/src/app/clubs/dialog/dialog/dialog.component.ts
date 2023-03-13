import { Component, OnInit, Inject, ViewChild } from '@angular/core';
import { SharedService } from './../../../shared/shared.service';
import { ClubsService } from '../../../services/clubs.service';
import { Club } from '../../clubs-interface';
import { MAT_DIALOG_DATA } from '@angular/material/dialog';

@Component({
  selector: 'app-dialog',
  templateUrl: './dialog.component.html',
  styleUrls: ['./dialog.component.css'],
})



export class DialogComponent implements OnInit {
  types!: any;
  sex!: any;
  category!: any;
  countries!: any;

  constructor(
    private sharedService: SharedService,
    private clubsService: ClubsService,
    @Inject(MAT_DIALOG_DATA) public data: Club,
  ) {}

  ngOnInit() {
    this.getSex();
    this.getCategory();
    this.getTypes();
    this.getCountries();
  }

  onImage(event: any) {
    const file = event.target.files[0];
    if (![undefined, null, ''].includes(file)) {
      const size = this.getSizeOfFile(file);
      if (size >= 206967) {
        console.log("Taille Invalid")
      } else { this.toBase64(file).then((res : any) => { this.data.logo = res; }).catch(err => { console.log(err) }); this.data.logo = file; }
    }
  }


  getSizeOfFile(file:any) {
        var _size = file.size;
        var exactSize = Math.round(_size * 100) / 100;
        return exactSize;
    }

   toBase64 = (file:any) => new Promise((resolve, reject) => {
        const reader = new FileReader();
        reader.readAsDataURL(file);
        reader.onload = () => resolve(reader.result);
        reader.onerror = error => reject(error);
    });

  getSex() {
    this.sex = this.sharedService.getSex();
  }
  getTypes() {
    this.types = this.sharedService.getTypes();
  }
  getCategory() {
    this.category = this.sharedService.getCategory();
  }
  getCountries(): void {
    this.clubsService.searchCountry('').subscribe({
      next: (response: any) => {
        this.countries = response.data;
      },
      error: (error) => {
        console.log(error.message);
      },
    });
  }

}
