import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ConvertNunberToThaiWordComponent } from './convert-nunber-to-thai-word.component';

describe('ConvertNunberToThaiWordComponent', () => {
  let component: ConvertNunberToThaiWordComponent;
  let fixture: ComponentFixture<ConvertNunberToThaiWordComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ ConvertNunberToThaiWordComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(ConvertNunberToThaiWordComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
