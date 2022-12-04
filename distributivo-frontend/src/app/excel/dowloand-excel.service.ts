import { HttpClient, HttpResponse } from '@angular/common/http';
import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class DowloandExcelService {

  constructor(
    private http : HttpClient
  ) { }

  onFileSelected(e : FileList, url : string ) {

    const file:File | null = e.item(0);

    if (file) {


        const formData = new FormData();

        formData.append("file", file);
       
  
       return this.http.post(url, formData);
    }
    throw new Error("no hay ningun archivo");
}

  private getFileName(response: HttpResponse<Blob>) {
    let filename: string;
    try {
      const contentDisposition: string = response.headers.get('content-disposition')!;
      const r = /(?:filename=")(.+)(?:;")/
      filename = r.exec(contentDisposition)![1];
    }
    catch (e) {
      filename = 'myfile.xlsx'
    }
    return filename;
  }

  downloadFile(response : HttpResponse<Blob>) {
  
          let filename: string = this.getFileName(response);
          let binaryData = [];
          binaryData.push(response.body!);
          let downloadLink = document.createElement('a');
          downloadLink.href = window.URL.createObjectURL(new Blob(binaryData, { type: 'blob' }));
          downloadLink.setAttribute('download', filename);
          document.body.appendChild(downloadLink);
          downloadLink.click();
        }
      
}


