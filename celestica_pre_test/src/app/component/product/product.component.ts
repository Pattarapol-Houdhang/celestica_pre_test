import { Component, OnInit } from '@angular/core';
import { ProductService } from 'src/app/service/product.service';

@Component({
  selector: 'app-product',
  templateUrl: './product.component.html',
  styleUrls: ['./product.component.scss']
})
export class ProductComponent implements OnInit {
  products: any[] = [];
  currentPage: number = 1;
  itemsPerPage: number = 9;
  totalProducts: number = 0;
  constructor(private productService: ProductService) { }

  ngOnInit(): void {
    this.getProducts();
  }
  getProducts() {
    this.productService.getProducts().subscribe({
      next: (response) => {
        const start = (this.currentPage - 1) * this.itemsPerPage;
        this.totalProducts = response.products.length;
        this.products = response.products.slice(start, start + this.itemsPerPage);
      }
    });
  }
  nextPage() {
    this.currentPage++;
    this.getProducts();
  }
  previousPage() {
    if (this.currentPage > 1) {
      this.currentPage--;
      this.getProducts();
    }
  }
  onPageChange(page: number) {
    this.currentPage = page;
    this.getProducts();
  }
  toggleCart(product: any) {
    product.inCart = !product.inCart; // Toggle the inCart property
    if (product.inCart) {
      console.log(`Added to cart: ${product.name}`);
    } else {
      console.log(`Removed from cart: ${product.name}`);
    }
  }
}

