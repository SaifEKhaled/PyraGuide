import 'package:flutter/material.dart';

class ChosenLocationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chosen Location'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Photo at the top
            Image.network(
              'https://www.ticati.com/img/hotel/1043542s.jpg',
              height: 200.0,
              fit: BoxFit.cover,
            ),

            SizedBox(height: 16.0),

            // Name of the place
            Text(
              'Place Name',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 8.0),

            // Rate and total number of reviews
            Row(
              children: [
                Icon(Icons.star, color: Colors.yellow),
                Text('4.5'), // Replace with the actual rating
                SizedBox(width: 8.0),
                Text(
                    '150 Reviews'), // Replace with the actual number of reviews
              ],
            ),

            SizedBox(height: 16.0),

            // Brief overview with read more option
            Text(
              'Brief overview of the place. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Read more',
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),

            SizedBox(height: 8.0),

            // Facilities icons
            Row(
              children: [
                Icon(Icons.wifi),
                Icon(Icons.local_dining),
                Icon(Icons.directions_walk),
                // Add more icons as needed
              ],
            ),

            SizedBox(height: 16.0),

            // Price and Show on Map button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Price: EGP 100'), // Replace with the actual price
                ElevatedButton(
                  onPressed: () {
                    // Navigate to the map page
                    Navigator.pushNamed(context, '/map');
                  },
                  child: Text('Show on Map'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
