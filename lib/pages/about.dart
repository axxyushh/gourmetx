import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About Us"),
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header Image
            const SizedBox(height: 20),
            // Company Overview
            Text(
              "About GourmetX",
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.grey, // Grey color for headings
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "GourmetX is a leading food delivery service dedicated to connecting people with the best local restaurants. We believe in the power of good food to bring people together and create memorable experiences.",
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Colors.white, // White color for text
              ),
            ),
            const SizedBox(height: 20),
            // Mission and Vision
            Text(
              "Our Mission",
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.grey, // Grey color for headings
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "Our mission is to make food delivery a delightful and convenient experience for everyone. We strive to offer a diverse selection of cuisines, quick and reliable delivery, and exceptional customer service.",
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Colors.white, // White color for text
              ),
            ),
            const SizedBox(height: 20),
            Text(
              "Our Vision",
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.grey, // Grey color for headings
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "We envision a world where delicious meals are just a tap away, and where our platform empowers local restaurants to reach more customers and grow their businesses.",
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Colors.white, // White color for text
              ),
            ),
            const SizedBox(height: 20),
            // Values
            Text(
              "Our Values",
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.grey, // Grey color for headings
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "• Customer Satisfaction: We put our customers first and strive to exceed their expectations.\n"
                  "• Quality: We are committed to providing high-quality food and reliable service.\n"
                  "• Innovation: We embrace new ideas and technologies to improve our service.\n"
                  "• Community: We support local restaurants and contribute to the community.",
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Colors.white, // White color for text
              ),
            ),
            const SizedBox(height: 20),
            // Contact Information
            Text(
              "Contact Us",
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.grey, // Grey color for headings
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "If you have any questions or feedback, feel free to reach out to us:",
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Colors.white, // White color for text
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const Icon(
                  Icons.email,
                  color: Colors.grey, // Grey color for icons
                ),
                const SizedBox(width: 10),
                Text(
                  "2300032931@kluniversity.in",
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Colors.white, // White color for text
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
