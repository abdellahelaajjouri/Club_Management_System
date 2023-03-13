import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { Club } from '../clubs/clubs-interface';

@Injectable({
  providedIn: 'root',
})
export class ClubsService {
  private apiUrl = 'http://localhost:3000';

  constructor(private http: HttpClient) {}

  // getClubs(): Observable<Club> {
  //   return this.http.get<Club>(`${this.apiUrl}/list-clubs`);
  // }

  getClubs(limit: number, page: number): Observable<any> {
    return this.http.post<any>(`${this.apiUrl}/list-clubs?limit=${limit}&page=${page}`,null);
  }

  deleteClub(id: number): Observable<any> {
    return this.http.delete(`${this.apiUrl}/delete-club/${id}`);
  }

  addClub(club: Club): Observable<Club> {
    return this.http.post<Club>(`${this.apiUrl}/insert-club`, club);
  }

  updateClub(id: number, club: Club): Observable<Club> {
    return this.http.put<Club>(`${this.apiUrl}/update-clubs/${id}`, club);
  }

  searchCountry(query: string = ''): Observable<string[]> {
    return this.http.get<string[]>(`${this.apiUrl}/list-country/${query}`);
  }
}
