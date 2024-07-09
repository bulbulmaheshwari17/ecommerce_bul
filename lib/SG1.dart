import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Home page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String? _sortByValue = 'Sort By';
  String? _colorValue = 'Color';
  String? _brandValue = 'Brand';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search for products',
                prefixIcon: Icon(Icons.search),
                suffixIcon: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.mic),
                    SizedBox(width: 8),
                    Icon(Icons.camera_alt),
                    SizedBox(width: 8),
                    Icon(Icons.shopping_cart),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 6),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              DropdownButton<String>(
                value: _sortByValue,
                items: <String>['Sort By', 'Price', 'Rating']
                    .map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    _sortByValue = newValue;
                  });
                },
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Filter'),
              ),
              DropdownButton<String>(
                value: _colorValue,
                items: <String>['Color', 'Black', 'White']
                    .map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    _colorValue = newValue;
                  });
                },
              ),
              DropdownButton<String>(
                value: _brandValue,
                items: <String>['Brand', 'HP', 'DELL']
                    .map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    _brandValue = newValue;
                  });
                },
              ),
            ],
          ),
          Expanded(
            child: ProductGrid(),
          ),
        ],
      ),
    );
  }
}

class ProductGrid extends StatefulWidget {
  @override
  _ProductGridState createState() => _ProductGridState();
}

class _ProductGridState extends State<ProductGrid> {
  final List<Product> products = [
    Product(
        'Macbook',
        'assets/images/mac.jpg',
        4.8,
        236,
        169.00),
    Product(
        'Macbook air',
        'assets/images/macbook.jpg',
        4.7,
        59,
        187.00),
    Product(
        'HP',
        'assets/images/hp.jpg',
        5.0,
        29,
        0.00), // Assuming free for demonstration
    Product(
        'Asus',
        'assets/images/asus.jpg',
        4.8,
        163,
        0.00), // Assuming free for demonstration
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(8.0),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 9,
        mainAxisSpacing: 20,
        childAspectRatio: 0.6, // Adjust this value to increase card size
      ),
      itemCount: products.length,
      itemBuilder: (context, index) {
        return ProductCard(product: products[index]);
      },
    );
  }
}

class Product {
  final String title;
  final String imageUrl;
  final double rating;
  final int ratingCount;
  final double price;

  Product(this.title, this.imageUrl, this.rating, this.ratingCount, this.price);
}

class ProductCard extends StatelessWidget {
  final Product product;

  ProductCard({required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              product.imageUrl,
              fit: BoxFit.cover,
              height: 150, // Increase image height
              width: double.infinity,
            ),
            SizedBox(height: 8), // Add spacing
            Text(
              product.title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16), // Increase font size
            ),
            SizedBox(height: 4), // Add spacing
            Row(
              children: [
                Icon(Icons.star, color: Colors.yellow, size: 20), // Increase icon size
                SizedBox(width: 4),
                Text('${product.rating} (${product.ratingCount})', style: TextStyle(fontSize: 14)), // Increase text size
              ],
            ),
            Spacer(),
            Text('\$${product.price.toStringAsFixed(2)}', style: TextStyle(fontSize: 16)), // Increase font size
          ],
        ),
      ),
    );
  }
}