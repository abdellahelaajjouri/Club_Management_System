import { Component, OnInit, AfterViewInit, ViewChild } from '@angular/core';
import { ClubsService } from '../services/clubs.service';
import { Club } from './clubs-interface';
import { SharedService } from './../shared/shared.service';
import { MatPaginator } from '@angular/material/paginator';
import { MatDialog } from '@angular/material/dialog';
import { DialogComponent } from './dialog/dialog/dialog.component';

@Component({
  selector: 'app-clubs',
  templateUrl: './clubs.component.html',
  styleUrls: ['./clubs.component.css'],
})
export class ClubsComponent implements OnInit {
  displayedColumns: string[] = ['club', 'country','sex', 'type' , 'slug' ,'actions'];
  dataSource!: any;
  clubs: Club[] = [];
  errorMessage: string = '';
  types!: any;
  sex!: any;
  category!: any;
  countries!: any;
  editIcon = "fa-solid fa-pen"
  deleteIcon = 'fa-solid fa-trash'

  pagination = {
    loading: false,
    length: 0,
    pageSize: 5,
    pageIndex: 0,
    pageSizeOptions: [5, 50, 100],
  };

  getServerData(event?: any): void {
    this.pagination.pageSize = event.pageSize;
    this.pagination.length = event.length;
    this.pagination.pageIndex = event.pageIndex;
    this.getClubs();
  }

  constructor(
    private clubsService: ClubsService,
    private sharedService: SharedService,
    private dialog: MatDialog
  ) {}

  ngOnInit(): void {
    this.getClubs();
    this.getSex();
    this.getCategory();
    this.getTypes();
    this.getCountries();
  }

  getSex() {
    this.sex = this.sharedService.getSex();
  }
  getTypes() {
    this.types = this.sharedService.getTypes();
  }
  getCategory() {
    this.category = this.sharedService.getCategory();
  }

  getClubs(): void {
    let limit = this.pagination.pageSize;
    let page = this.pagination.pageIndex;
    this.clubsService.getClubs(limit, page).subscribe({
      next: (response: any) => {
        this.pagination.pageIndex = response.page;
        this.pagination.length = response.length;
        this.pagination.pageSize = response.limit;

        this.clubs = response.data;
        console.log(response.data);
        this.dataSource = response.data;
      },
      error: (error) => {
        this.errorMessage = error.message;
      },
    });
  }

  getCountries(): void {
    this.clubsService.searchCountry('').subscribe({
      next: (response: any) => {
        this.countries = response.data;
      },
      error: (error) => {
        this.errorMessage = error.message;
      },
    });
  }

  deleteClub(id: number): void {
    this.clubsService.deleteClub(id).subscribe({
      next: () => {
        console.log('Club deleted:');
        this.getClubs();
      },
      error: (error) => {
        this.errorMessage = error.message;
      },
    });
  }

  actions(type: string, request: any = null) {
    let dialogRef;
    switch (type) {
      case 'addClub':
        dialogRef = this.dialog.open(DialogComponent, {
          data: {
            id: 0,
            nom: '',
            slug: '',
            categories: '',
            logo: '',
            country: '',
            sexe: '',
            type: '',
          },
        });

        dialogRef.afterClosed().subscribe((result) => {
          if (result != false) {
            this.clubsService.addClub(result).subscribe(
              (club: Club) => {
                console.log('Club added:', club);
                this.getClubs();
              },
              (error) => {
                console.error('Error adding club:', error);
              }
            );
          }
        });
        dialogRef.disableClose = true;
        break;
      case 'updateClub':
        dialogRef = this.dialog.open(DialogComponent, {
          data: {
            id: request.id,
            nom: request.nom,
            slug: request.slug,
            categories: request.categories,
            logo: request.logo,
            country: request.country,
            sexe: request.sexe,
            type: request.type,
          },
        });

        dialogRef.afterClosed().subscribe((result) => {
          if (result != false) {
            this.clubsService.updateClub(result.id, result).subscribe((c) => {
              console.log('Edited Club is Now :', result);
              this.getClubs();
            });
          }
        });
        dialogRef.disableClose = true;
        break;
      default:
        break;
    }
  }
}
