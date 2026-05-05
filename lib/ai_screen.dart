import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:nacttac_summerofcode3/ai_product_detail_screen.dart';

class AiScreen extends StatelessWidget {
  const AiScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFA),
      appBar: AppBar(
        title: const Text(
          'Discover',
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.w800,
            fontSize: 24,
            letterSpacing: 0.5,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.search_rounded, color: Colors.black87, size: 28),
            onPressed: () {},
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(bottom: 20.0, top: 8.0),
              child: Text(
                'Perfect choices for you',
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                physics: const BouncingScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.68,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                ),
                itemCount: _products.length,
                itemBuilder: (context, index) {
                  return ProductCard(product: _products[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Product {
  final String title;
  final String price;
  final String imageUrl;
  final List<Color> gradientColors;

  Product({
    required this.title,
    required this.price,
    required this.imageUrl,
    required this.gradientColors,
  });
}

final List<Product> _products = [
  Product(
    title: 'Nike Air Max',
    price: '\$120.00',
    imageUrl: 'https://images.unsplash.com/photo-1542291026-7eec264c27ff?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=400',
    gradientColors: [const Color(0xFFe0c3fc), const Color(0xFF8ec5fc)],
  ),
  Product(
    title: 'Minimal Watch',
    price: '\$150.00',
    imageUrl: 'https://images.unsplash.com/photo-1523275335684-37898b6baf30?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=400',
    gradientColors: [const Color(0xFFffecd2), const Color(0xFFfcb69f)],
  ),
  Product(
    title: 'Retro Camera',
    price: '\$200.00',
    imageUrl: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=400',
    gradientColors: [const Color(0xFFcfd9df), const Color(0xFFe2ebf0)],
  ),
  Product(
    title: 'Headphones',
    price: '\$299.00',
    imageUrl: 'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=400',
    gradientColors: [const Color(0xFFfbc2eb), const Color(0xFFa6c1ee)],
  ),
  Product(
    title: 'Jo Malone',
    price: '\$85.00',
    imageUrl: 'https://images.unsplash.com/photo-1594035910387-fea47794261f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=400',
    gradientColors: [const Color(0xFFfdcbf1), const Color(0xFFe6dee9)],
  ),
  Product(
    title: 'Skin Care',
    price: '\$45.00',
    imageUrl: 'https://images.unsplash.com/photo-1556228578-0d85b1a4d571?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=400',
    gradientColors: [const Color(0xFFa1c4fd), const Color(0xFFc2e9fb)],
  ),
  Product(
    title: 'Smart Glasses',
    price: '\$199.00',
    imageUrl: 'https://images.unsplash.com/photo-1572635196237-14b3f281501f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=400',
    gradientColors: [const Color(0xFFff9a9e), const Color(0xFFfecfef)],
  ),
  Product(
    title: 'Mech Keyboard',
    price: '\$125.00',
    imageUrl: 'https://images.unsplash.com/photo-1595225476474-87563907a212?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=400',
    gradientColors: [const Color(0xFFa18cd1), const Color(0xFFfbc2eb)],
  ),
  Product(
    title: 'Ceramic Mug',
    price: '\$25.00',
    imageUrl: 'https://images.unsplash.com/photo-1514228742587-6b1558fcca3d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=400',
    gradientColors: [const Color(0xFFf6d365), const Color(0xFFfda085)],
  ),
  Product(
    title: 'Urban Backpack',
    price: '\$89.00',
    imageUrl: 'https://images.unsplash.com/photo-1553062407-98eeb64c6a62?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=400',
    gradientColors: [const Color(0xFFd4fc79), const Color(0xFF96e6a1)],
  ),
  Product(
    title: 'Home Speaker',
    price: '\$145.00',
    imageUrl: 'https://images.unsplash.com/photo-1543661877-62f9011e0310?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=400',
    gradientColors: [const Color(0xFF84fab0), const Color(0xFF8fd3f4)],
  ),
  Product(
    title: 'Pro Runner',
    price: '\$160.00',
    imageUrl: 'https://images.unsplash.com/photo-1539185441755-769473a23570?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=400',
    gradientColors: [const Color(0xFFfccb90), const Color(0xFFd57eeb)],
  ),
  Product(
    title: 'Desk Clock',
    price: '\$35.00',
    imageUrl: 'https://images.unsplash.com/photo-1508057198894-247b23fe5288?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=400',
    gradientColors: [const Color(0xFFe0c3fc), const Color(0xFF8ec5fc)],
  ),
  Product(
    title: 'Studio Lamp',
    price: '\$65.00',
    imageUrl: 'https://images.unsplash.com/photo-1507473885765-e6ed057f782c?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=400',
    gradientColors: [const Color(0xFFffecd2), const Color(0xFFfcb69f)],
  ),
  Product(
    title: 'Hydro Flask',
    price: '\$40.00',
    imageUrl: 'https://images.unsplash.com/photo-1602143407151-7111542de6e8?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=400',
    gradientColors: [const Color(0xFFcfd9df), const Color(0xFFe2ebf0)],
  ),
  Product(
    title: 'Mini Drone',
    price: '\$450.00',
    imageUrl: 'https://images.unsplash.com/photo-1506947411487-a56738267384?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=400',
    gradientColors: [const Color(0xFFa1c4fd), const Color(0xFFc2e9fb)],
  ),
];

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AiProductDetailScreen(product: product),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: product.gradientColors,
        ),
        boxShadow: [
          BoxShadow(
            color: product.gradientColors.last.withOpacity(0.3),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Stack(
        children: [
          // Image filling the top portion
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 75, // Leave room for product info
            child: Hero(
              tag: 'product_image_${product.title}',
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                  bottomRight: Radius.circular(32), // Stylish asymmetric crop
                ),
                child: Image.network(
                  product.imageUrl,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) =>
                      const Center(child: Icon(Icons.broken_image, color: Colors.white54)),
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) return child;
                    return const Center(
                      child: CircularProgressIndicator(
                        color: Colors.white,
                        strokeWidth: 2,
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
          
          // Favorite Button with Glassmorphism
          Positioned(
            top: 12,
            right: 12,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white.withOpacity(0.3),
                      width: 1,
                    )
                  ),
                  child: const Icon(
                    Icons.favorite_border_rounded,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
              ),
            ),
          ),

          // Product Details
          Positioned(
            bottom: 16,
            left: 14,
            right: 50,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  product.title,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                    letterSpacing: -0.3,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 2),
                Text(
                  product.price,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),

          // Cart Button
          Positioned(
            bottom: 10,
            right: 10,
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.black87,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.15),
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  )
                ]
              ),
              child: const Icon(
                Icons.shopping_bag_outlined,
                color: Colors.white,
                size: 20,
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
