import { TestBed } from '@angular/core/testing';

import { DowloandExcelService } from './dowloand-excel.service';

describe('DowloandExcelService', () => {
  let service: DowloandExcelService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(DowloandExcelService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
