import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../controllers/home_controller.dart';
import '../widgets/banner_card.dart';
import '../widgets/category_icon.dart';
import '../widgets/product_card.dart';
import '../widgets/brand_card.dart'; // Pastikan path ini benar

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage('assets/images/profile.jpeg'),
          ),
        ),
        actions: [
          IconButton(
            icon: Stack(
              children: [
                const Icon(Icons.notifications),
                Positioned(
                  right: 0,
                  child: CircleAvatar(
                    radius: 6,
                    backgroundColor: Colors.red,
                    child: Text(
                      ' ',
                      style: TextStyle(fontSize: 6),
                    ),
                  ),
                ),
              ],
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.shopping_bag_rounded),
            onPressed: () {},
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildHeader(),
            _buildTopCategories(),
            _buildBannerSection(),
            _buildDealsOfTheDay(),
            _buildFeaturedBrands(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
  return Container(
    decoration: BoxDecoration(
      color: Colors.blueAccent, // Background color
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(20.0), // Radius for the bottom left corner
        bottomRight: Radius.circular(20.0), // Radius for the bottom right corner
      ),
    ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi, Lorem',
              style: GoogleFonts.overpass(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Welcome to MedHub',
              style: GoogleFonts.overpass(
                fontSize: 18,
                color: Colors.white70,
              ),
            ),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search Medicine & Healthcare products',
                  border: InputBorder.none,
                  icon: Icon(Icons.search, color: Colors.blueAccent),
                  hintStyle: GoogleFonts.overpass(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTopCategories() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Top Categories',
            style: GoogleFonts.overpass(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CategoryIcon(
                    icon: Icons.favorite, label: 'Dental', color: Colors.pink),
                CategoryIcon(
                    icon: Icons.spa, label: 'Wellness', color: Colors.green),
                CategoryIcon(
                    icon: Icons.home, label: 'Homeo', color: Colors.orange),
                CategoryIcon(
                    icon: Icons.remove_red_eye,
                    label: 'Eye care',
                    color: Colors.blue),
                CategoryIcon(
                    icon: Icons.face, label: 'Skin & Hair', color: Colors.grey),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBannerSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: CarouselSlider(
        items: [
          BannerCard(
            title: 'Save extra on every order',
            subtitle: 'Etiam mollis metus non faucibus.',
            image: 'assets/images/banner.png',
          ),
          BannerCard(
            title: '20% Off on First Order!',
            subtitle: 'Use code: FIRST20',
            image: 'assets/images/banner.png',
          ),
        ],
        options: CarouselOptions(
          height: 100,
          enlargeCenterPage: true,
          autoPlay: true,
        ),
      ),
    );
  }

  Widget _buildDealsOfTheDay() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Deals of the Day',
                style: GoogleFonts.overpass(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('More'),
              ),
            ],
          ),
          const SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: ProductCard(
                    name: 'Accu-check Active Test Strip',
                    price: 'Rp 112.000',
                    assetImagePath: 'assets/images/product2.png',
                    rating: 4.2,
                  ),
                ),
                const SizedBox(width: 8),
                ProductCard(
                  name: 'Omron HEM-8712 BP Monitor',
                  price: 'Rp 150.000',
                  assetImagePath: 'assets/images/product2.png',
                  rating: 4.5,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFeaturedBrands() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Featured Brands',
            style: GoogleFonts.overpass(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: BrandCard(
                      imagePath: 'assets/images/brand.png',
                      brandName: 'Himalaya'),
                ),
                const SizedBox(
                    width: 16), // Gunakan width untuk ruang horizontal
                BrandCard(
                    imagePath: 'assets/images/brand.png',
                    brandName: 'Accu-Chek'),
                const SizedBox(width: 16), // Ruang antar BrandCard
                BrandCard(
                    imagePath: 'assets/images/brand3.png', brandName: 'VLCC'),
                const SizedBox(width: 16), // Ruang antar BrandCard
                BrandCard(
                    imagePath: 'assets/images/brand3.png',
                    brandName: 'Protinex'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
