// class ProductList
// {
//   List<Product> productList = [];
  
//   ProductList()
//   {
//     productList.add(Product("atari", 1500, "Hepsiburada"));
//     productList.add(Product("bardak", 75, "Hepsiburada"));
//     productList.add(Product("AT", 35000, "N11"));
//     productList.add(Product("bisiklet", 3750, "MediaMarkt"));
//     productList.add(Product("atari", 2500, "Teknoda"));
//   }

//   List<Product> get getProductList => productList;
// }

class Product
{
  final String productName;
  final double productPrice;
  final String productSeller;

  Product(this.productName, this.productPrice, this.productSeller);
}