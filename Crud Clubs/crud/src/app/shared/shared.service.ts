import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';

@Injectable({
    providedIn: 'root',
  })
export class SharedService {

    constructor(private http: HttpClient) { }

    private apiUrl = 'http://localhost:3000';

    getSex(){
        return [
        {
            key:'m',
            label:'Masculin'
        },
        {
            key:'f',
            label:'Feminin'
        }
        ]
    }

    getTypes(){
        return [
            {
               key:'national-team',
               label:'National Team'
            },
            {
               key:'club',
               label:'Club'
            }
          ]
    }

    getCategory(){
        return    [
        {
            key : "Seniors"
        },
        {
            key : "U9"
        },
        {
            key : "U10"
        },
        {
            key : "U11"
        },
        {
            key : "U12"
        },
        {
            key : "U13"
        },
        {
            key : "U14"
        },
        {
            key : "U15"
        },
        {
            key : "U16"
        },
        {
            key : "U17"
        },
        {
            key : "U18"
        },
        {
            key : "U19"
        },
        {
            key : "U20"
        },
        {
            key : "U21"
        },
        {
            key : "U22"
        },
        {
            key : "U23"
        },
        {
            key : "U24"
        }
        ]
    }

}
