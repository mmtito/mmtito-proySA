import { TestBed } from '@angular/core/testing';

import { DistributiveService } from './distributive.service';

describe('DistributiveService', () => {
  let service: DistributiveService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(DistributiveService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
