class Product {
  final String name;
  final double price;
  final String description;
  final String specifications;
  final String features;
  final String imageUrl;
  int quantity;
  final bool isFeatured;

  Product({
    required this.name,
    required this.price,
    required this.description,
    required this.specifications,
    required this.features,
    required this.imageUrl,
    required this.quantity,
    this.isFeatured = false,
  });

  static List<Product> allProduct = [
    Product(
      name: 'Sony XM4 Wireless Premium Noise Canceling Headphones',
      price: 349.99,
      description:
          'Immerse yourself in exceptional sound quality with the Sony XM4 Wireless Premium Noise Canceling Headphones. '
          'Featuring industry-leading noise cancellation, these headphones deliver a superior listening experience. '
          'With up to 30 hours of battery life, touch sensor controls, and adaptive sound control, the Sony XM4 headphones are perfect for music lovers and frequent travelers.',
      features:
          '- Noise Cancellation: Industry-leading noise canceling with Dual Noise Sensor technology\n'
          '- Battery Life: Up to 30 hours of battery life with quick charging capability\n'
          '- Sound Quality: Premium sound quality with Edge-AI, co-developed with Sony Music Studios Tokyo\n'
          '- Comfort: Lightweight design with soft, pressure-relieving earpads\n'
          '- Controls: Touch sensor controls for play/pause, skip tracks, control volume, and activate voice assistant\n'
          '- Connectivity: Multi-point connection allows you to pair two Bluetooth devices at the same time',
      specifications: '- Brand: Sony\n'
          '- Model: WH-1000XM4\n'
          '- Weight: 0.56 lbs\n'
          '- Battery: Rechargeable via USB-C\n'
          '- Care Instructions: Clean with a soft, dry cloth; avoid exposure to liquids',
      imageUrl: 'sony_headphone',
      quantity: 10,
      isFeatured: true,
    ),
    Product(
      name:
          'HP 15 VICTUS GAMING, 12th Gen Intel Core i5, 8GB RAM, 512GB SSD, 4GB NVIDIA RTX 3050, Windows 11',
      price: 899.99,
      description:
          'Unleash your gaming potential with the HP 15 VICTUS GAMING laptop. '
          'Powered by a 12th Gen Intel Core i5 processor and equipped with 8GB RAM, this laptop delivers high performance for gaming and multitasking. '
          'The 512GB SSD provides ample storage and fast load times, while the 4GB NVIDIA RTX 3050 graphics card ensures smooth and immersive visuals. '
          'Enjoy the latest features and security of Windows 11 on a sleek and stylish design.',
      features: '- Processor: 12th Gen Intel Core i5 for powerful performance\n'
          '- Memory: 8GB RAM for efficient multitasking\n'
          '- Storage: 512GB SSD for fast boot and load times\n'
          '- Graphics: 4GB NVIDIA RTX 3050 for stunning graphics and smooth gameplay\n'
          '- Display: 15.6-inch Full HD display for crisp visuals\n'
          '- Operating System: Pre-installed with Windows 11\n'
          '- Design: Sleek and modern design with a backlit keyboard',
      specifications: '- Brand: HP\n'
          '- Model: Victus 15\n'
          '- Weight: 5.44 lbs\n'
          '- Battery Life: Up to 8 hours\n'
          '- Care Instructions: Clean with a soft, dry cloth',
      imageUrl: 'hp_victus',
      quantity: 8,
    ),
    Product(
      name: 'Apple iPhone 15 Pro Max 512GB - Nano SIM - Blue Titanium',
      price: 1399.99,
      description:
          'Experience the pinnacle of smartphone technology with the Apple iPhone 15 Pro Max. '
          'Featuring a sleek Blue Titanium finish, this model comes with a massive 512GB of storage and a powerful A17 Bionic chip. '
          'Enjoy stunning visuals on the 6.7-inch Super Retina XDR display and capture incredible photos with the advanced Pro camera system.',
      features:
          '- Storage: 512GB of internal storage for all your apps, photos, and videos\n'
          '- Display: 6.7-inch Super Retina XDR display with ProMotion technology\n'
          '- Camera: Pro camera system with advanced computational photography\n'
          '- Performance: A17 Bionic chip for lightning-fast performance\n'
          '- Design: Durable Blue Titanium finish with Ceramic Shield front cover\n'
          '- SIM: Supports Nano SIM and eSIM for flexibility\n'
          '- Battery: All-day battery life with fast charging and MagSafe compatibility',
      specifications: '- Brand: Apple\n'
          '- Model: iPhone 15 Pro Max\n'
          '- Weight: 8.46 oz\n'
          '- Operating System: iOS 17\n'
          '- Care Instructions: Use a soft, slightly damp, lint-free cloth to clean',
      imageUrl: 'iphone_15',
      quantity: 4,
    ),
    Product(
      name: 'PlayStation 5',
      price: 499.99,
      description:
          'Experience lightning-fast loading with an ultra-high-speed SSD, deeper immersion with support for haptic feedback, adaptive triggers, and 3D Audio, and an all-new generation of incredible PlayStation games with the PlayStation 5.',
      features:
          '- Storage: Ultra-high-speed SSD for faster load times and seamless gameplay\n'
          '- Performance: Custom CPU, GPU, and SSD with integrated I/O for breathtaking graphics and performance\n'
          '- Audio: 3D Audio technology for immersive soundscapes\n'
          '- Controller: DualSense wireless controller with haptic feedback and adaptive triggers\n'
          '- Games: Backwards compatibility with the majority of PS4 games and a new generation of PS5 exclusive titles',
      specifications: '- Brand: Sony\n'
          '- Model: PlayStation 5\n'
          '- Weight: 9.9 lbs\n'
          '- Dimensions: 15.4 x 10.2 x 4.1 inches\n'
          '- Care Instructions: Keep in a cool, dry place; clean with a soft, dry cloth',
      imageUrl: 'playstation_5',
      quantity: 3,
      isFeatured: true,
    ),
    Product(
        name: 'Nikon D7000 Camera With 18-105mm Lens',
        price: 999.99,
        description:
            'Capture stunning photos and videos with the Nikon D7000 Camera. '
            'Equipped with an 18-105mm lens, this DSLR camera offers versatility and precision for both novice and professional photographers. '
            'The D7000 features a 16.2 MP DX-format CMOS sensor, 6 fps continuous shooting, and full HD 1080p video recording.',
        features:
            '- Sensor: 16.2 MP DX-format CMOS sensor for high-quality images\n'
            '- Lens: Includes 18-105mm f/3.5-5.6G ED VR lens for versatile shooting\n'
            '- ISO: Wide ISO range of 100-6400 for various lighting conditions\n'
            '- Video: Full HD 1080p video recording with full-time autofocus\n'
            '- Display: 3.0-inch LCD screen for easy viewing and playback\n'
            '- Durability: Magnesium alloy body for durability and reliability',
        specifications: '- Brand: Nikon\n'
            '- Model: D7000\n'
            '- Weight: 1.7 lbs (body only)\n'
            '- Battery: EN-EL15 rechargeable Li-ion battery\n'
            '- Care Instructions: Use a microfiber cloth to clean the lens and body',
        imageUrl: 'nikon_camera',
        quantity: 7,
        isFeatured: true),
    Product(
      name: 'Nike Air Max ZM950 Women\'s Sneakers',
      price: 149.99,
      description:
          'Experience the ultimate in comfort and style with the Nike Air Max ZM950 Women\'s Sneakers. '
          'These sneakers feature a sleek, modern design that pays homage to the classic Air Max lineage. '
          'With a full-length Air Max unit and a layered upper, these shoes provide exceptional cushioning and a bold look.',
      features:
          '- Material: Breathable mesh upper with synthetic overlays for added support\n'
          '- Design: Futuristic design inspired by the Air Max 95\n'
          '- Cushioning: Full-length Air Max unit for maximum comfort\n'
          '- Comfort: Padded collar and tongue for a snug, comfortable fit\n'
          '- Fit: Secure lace-up closure for a customizable fit\n'
          '- Color Options: Available in a variety of colorways to match any style',
      specifications: '- Brand: Nike\n'
          '- Model: Air Max ZM950\n'
          '- Size Range: 5-11 (US Women\'s Sizes)\n'
          '- Weight: 1.2 lbs (per shoe)\n'
          '- Care Instructions: Spot clean with a damp cloth, air dry',
      imageUrl: 'nike_air',
      quantity: 2,
      isFeatured: true,
    ),
    Product(
      name:
          'Apple MacBook Pro 14.2" M3 Chip With 8-core CPU, 10-core GPU, 8GB RAM, 1TB SSD, Silver, 2023',
      price: 2499.99,
      description:
          'Experience unparalleled performance with the Apple MacBook Pro 14.2" (2023). '
          'Equipped with the powerful M3 chip featuring an 8-core CPU and 10-core GPU, this MacBook Pro is designed for professionals who need top-tier performance. '
          'With 8GB of RAM and a 1TB SSD, you get ample memory and storage for all your demanding tasks and creative projects. The stunning Retina display offers vibrant colors and exceptional detail, while the sleek Silver finish adds a touch of elegance.',
      features:
          '- Processor: Apple M3 chip with 8-core CPU and 10-core GPU for high performance\n'
          '- Memory: 8GB RAM for smooth multitasking\n'
          '- Storage: 1TB SSD for fast storage and quick access to your files\n'
          '- Display: 14.2-inch Retina display with True Tone technology\n'
          '- Design: Sleek and durable Silver aluminum body\n'
          '- Battery Life: Up to 17 hours of battery life for all-day use\n'
          '- Operating System: macOS with powerful built-in apps and features',
      specifications: '- Brand: Apple\n'
          '- Model: MacBook Pro 14.2" (2023)\n'
          '- Weight: 3.5 lbs\n'
          '- Dimensions: 12.31 x 8.71 x 0.61 inches\n'
          '- Care Instructions: Clean with a soft, dry cloth; avoid exposure to liquids',
      imageUrl: 'mac_book_pro',
      quantity: 5,
    ),
    Product(
      name: 'Nike Classic Canvas Shoes',
      price: 79.99,
      description:
          'Step into timeless style with the Nike Classic Canvas Shoes. '
          'These versatile sneakers are designed for comfort and durability, making them perfect for everyday wear. '
          'Crafted from high-quality canvas, they offer a breathable and lightweight feel, ideal for any season. '
          'The rubber outsole provides excellent traction and stability, ensuring you can walk with confidence on any surface.',
      features:
          '- Material: Premium canvas upper for breathability and comfort\n'
          '- Design: Classic silhouette with a modern twist\n'
          '- Outsole: Durable rubber for enhanced grip and durability\n'
          '- Comfort: Cushioned insole for all-day comfort\n'
          '- Fit: Lace-up closure for a secure, adjustable fit\n'
          '- Color Options: Available in a variety of colors to match any outfit',
      specifications: '- Brand: Nike\n'
          '- Model: Classic Canvas\n'
          '- Size Range: 6-12 (US Men\'s Sizes)\n'
          '- Weight: 0.8 lbs (per shoe)\n'
          '- Care Instructions: Spot clean with a damp cloth, air dry',
      imageUrl: 'nike_canvas',
      quantity: 10,
    ),
    Product(
      name: 'Men\'s Casual Shoes Popular Color Design Sneakers',
      price: 59.99,
      description:
          'Step out in style with these Men\'s Casual Shoes, designed with popular color patterns and a modern aesthetic. '
          'Perfect for everyday wear, these sneakers offer a blend of comfort and fashion, ensuring you look good and feel great throughout the day. '
          'The breathable upper material and cushioned insole provide exceptional comfort, while the durable outsole ensures long-lasting wear.',
      features:
          '- Material: Breathable fabric upper with stylish color design\n'
          '- Comfort: Cushioned insole for all-day comfort\n'
          '- Outsole: Durable rubber outsole for enhanced traction\n'
          '- Fit: Lace-up closure for a secure fit\n'
          '- Versatility: Suitable for casual outings, work, or leisure activities',
      specifications: '- Brand: Generic\n'
          '- Model: Casual Color Design Sneakers\n'
          '- Size Range: 7-13 (US Men\'s Sizes)\n'
          '- Weight: 0.9 lbs (per shoe)\n'
          '- Care Instructions: Spot clean with a damp cloth, air dry',
      imageUrl: 'casual_shoe',
      quantity: 1,
      isFeatured: true,
    ),
    Product(
      name: 'Danami Queens Are Born In March Birthday T-Shirt - White',
      price: 24.99,
      description:
          'Celebrate your March birthday in style with the Danami "Queens Are Born In March" Birthday T-Shirt. '
          'This white t-shirt features a bold and elegant design that highlights your special month. '
          'Made from high-quality cotton, it offers a comfortable fit and durability. '
          'Whether it\'s for yourself or as a gift for a loved one, this t-shirt is perfect for showcasing March-born pride.',
      features:
          '- Material: 100% high-quality cotton for comfort and durability\n'
          '- Design: Stylish "Queens Are Born In March" graphic\n'
          '- Fit: Classic unisex fit\n'
          '- Color: White\n'
          '- Care Instructions: Machine washable, tumble dry low',
      specifications: '- Brand: Danami\n'
          '- Model: Queens Are Born In March Birthday T-Shirt\n'
          '- Sizes: Available in S, M, L, XL, XXL\n'
          '- Weight: Lightweight\n'
          '- Care Instructions: Machine washable, tumble dry low',
      imageUrl: 'birthday_tshirt',
      quantity: 15,
    )
  ];
}
