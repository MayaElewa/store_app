import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:store_app/main.dart';

void main() {}

class storeApp extends StatelessWidget {
  const storeApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "store app",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 124, 172, 255)),
      ),
      home: const mystorepage(title: "store page"),
    );
  }
}

class mystorepage extends StatefulWidget {
  const mystorepage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("store app"),
        centerTitle: true,
        actions: [
       Icon(Icons.shopping_cart_outlined),
        ],
      ),
      body: Center(
        child: Column(

        ),
      ),
      bottomNavigationBar: BottomNavigationBar(),
    );
  }
}












































































































// Great! You're looking to design a UI like the one in your screenshot using **Dart and Flutter**. This is a clean shopping app-style grid screen. Here's a step-by-step breakdown of **what to think about and how to implement it**:

// ---

// ## ✅ 1. **Page Structure Planning**

// ### 🌟 Screen Summary:

// * **AppBar**: Title, icons (back, cart)
// * **Grid/List of Products**: Each with image, name, price, heart icon
// * **Bottom Navigation Bar**

// ---

// ## 🔧 2. **Flutter Widgets to Use**

// | UI Element              | Suggested Widget                  |
// | ----------------------- | --------------------------------- |
// | Top bar                 | `AppBar`                          |
// | Product grid            | `GridView.builder()`              |
// | Individual product card | `Card` / `Container` + `Column`   |
// | Heart icon (favorite)   | `IconButton`                      |
// | Bottom navigation bar   | `BottomNavigationBar`             |
// | Images                  | `Image.network()` or `AssetImage` |

// ---

// ## 🧱 3. **Steps to Build It**

// ### ➤ Step 1: Scaffold

// ```dart
// Scaffold(
//   appBar: AppBar(...),
//   body: GridView.builder(...),
//   bottomNavigationBar: BottomNavigationBar(...),
// );
// ```

// ---

// ### ➤ Step 2: AppBar

// ```dart
// AppBar(
//   title: Text('New Trend'),
//   centerTitle: true,
//   leading: Icon(Icons.arrow_back),
//   actions: [
//     Icon(Icons.shopping_cart),
//   ],
// )
// ```

// ---

// ### ➤ Step 3: Product Grid

// Use `GridView.builder` for dynamic item rendering.

// ```dart
// GridView.builder(
//   padding: EdgeInsets.all(10),
//   itemCount: products.length,
//   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//     crossAxisCount: 2,
//     childAspectRatio: 0.7,
//     crossAxisSpacing: 10,
//     mainAxisSpacing: 10,
//   ),
//   itemBuilder: (context, index) {
//     return ProductCard(product: products[index]);
//   },
// )
// ```

// ---

// ### ➤ Step 4: ProductCard Widget

// Create a custom widget for each product.

// ```dart
// class ProductCard extends StatelessWidget {
//   final Product product;

//   ProductCard({required this.product});

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 4,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Expanded(child: Image.asset(product.image, fit: BoxFit.contain)),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Text(product.name),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 8.0),
//             child: Text("\$${product.price}"),
//           ),
//           Spacer(),
//           Align(
//             alignment: Alignment.bottomRight,
//             child: IconButton(
//               icon: Icon(
//                 product.isFavorite ? Icons.favorite : Icons.favorite_border,
//                 color: product.isFavorite ? Colors.red : Colors.grey,
//               ),
//               onPressed: () {
//                 // Toggle favorite
//               },
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
// ```

// ---

// ### ➤ Step 5: Product Model

// ```dart
// class Product {
//   final String name;
//   final String image;
//   final double price;
//   bool isFavorite;

//   Product({
//     required this.name,
//     required this.image,
//     required this.price,
//     this.isFavorite = false,
//   });
// }
// ```

// ---

// ### ➤ Step 6: Bottom Navigation Bar

// ```dart
// BottomNavigationBar(
//   currentIndex: selectedIndex,
//   onTap: (index) => setState(() => selectedIndex = index),
//   items: const [
//     BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
//     BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
//     BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
//     BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
//   ],
// )
// ```

// ---

// ## 🎨 4. **Design Considerations**

// * Use **Material 3** for modern styling (`useMaterial3: true` in `ThemeData`)
// * Add shadows or elevation to cards
// * Use responsive sizing (maybe with `MediaQuery` or `LayoutBuilder`)
// * Consider animations for heart toggling
// * Use `Provider`, `Bloc`, or `setState` for managing favorite state

// ---

// ## 🧪 5. **Testing**

// * Check scroll behavior
// * Ensure responsiveness across devices
// * Test interactions (favorites, navigation)

// ---

// Let me know if you’d like a full code template or need help integrating real data or navigation!
