import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-convert-nunber-to-thai-word',
  templateUrl: './convert-nunber-to-thai-word.component.html',
  styleUrls: ['./convert-nunber-to-thai-word.component.scss']
})
export class ConvertNunberToThaiWordComponent implements OnInit {
  number: string = '0';
  thaiWord: string = '';

  number_th = ['ศูนย์', 'หนึ่ง', 'สอง', 'สาม', 'สี่', 'ห้า', 'หก', 'เจ็ด', 'แปด', 'เก้า'];
  unit_th = ['', 'สิบ', 'ร้อย', 'พัน', 'หมื่น', 'แสน', 'ล้าน'];
  ngOnInit(): void {
    // Initialization logic if needed
  }

  convertNumberToThaiWord() {
    this.thaiWord = this.numberToThai(this.number);
  }

  private numberToThai(numStr: string): string {
    if (numStr.length == 1) {
      if (Number(numStr) === 0) return 'ศูนย์';
    }

    let result = '', i = 0, temp = numStr;

    result = this.toThai(numStr);

    let tempnumStr = numStr;

    if (numStr.length > 7) {
      while (tempnumStr.length > 0) {
        let rightNumber = tempnumStr.slice(0, 6) // เอา 6 ตัวท้าย
        let leftNumber = tempnumStr.slice(0, -6); // เลขที่เหลือจากการตัด
        result = this.toThai(rightNumber) + this.unit_th[6];
      }

    }

    return result;
  }

  toThai(str: string): string {
    return str.split('').reverse().map((value, index) => {
      let _number = Number(value);
      if (_number === 0) return '';
      if (index === 0 && _number === 1 && str.length > 1) return 'เอ็ด';
      if (index === 1 && _number === 2) return 'ยี่' + this.unit_th[index];
      if (index === 1 && _number === 1) return this.unit_th[index];
      return this.number_th[_number] + (this.unit_th[index] || '');
    }).reverse().join('');
  }



}
