import 'package:flutter/material.dart';
import 'homepage.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Homepage(),
            ),
            );
          },
        ),
        title: Text('Cart', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.account_circle, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CartItem(
              imageUrl: 'https://s3-alpha-sig.figma.com/img/79ec/0a3c/599e7e8a2a79a6e7a4f0dc9173b27282?Expires=1731283200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=W0s0l~arU--12ETW5GNgFvUmjlyAEvLnE7FbCuig1eMHDdf2hhYofRWCKxHJ5~VRV3tCqPdTgpP0FwqUu5lysNee5aCBMPqNGu2VAVOO1gbObXF7btNeqQDaWsLerHmZujcNFn7qa73PKBijguUf~Ltos6Q5Gkk-NwbWe2rcWmGh96Y5b2C3CeamUqFlCHobipgMo5tNBMdSjIGpiDZdyz~Pngyu64mwbsqQDNKv7YZ~qFMntfHtEWNSwJfJAoFR5PLPZO8Ii1CAQRXQl7Newq4zfEbRA1nEomIh2SQZrIOusXGDaLZwCyfnyM6dUAqNHw9KPIjM8RBnKEkhPohN-g__',
              title: 'Burger King Medium',
              price: 50000,
            ),
            CartItem(
              imageUrl: 'https://s3-alpha-sig.figma.com/img/f175/2044/627b328a606326f488a5c5fafdc4c8cc?Expires=1731283200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=YK5FFtNMLn29rXc1h-XVtkV3dtufMdoqK7eJ75vfPpE8WIMBomSeP9Al632g6jgjLHidbUkxXNUqQKiUACRfWDpm9LOIzf~AHjp8anjrHchtf2ukGxYUWXvDcJQGMdliZAOXd5ma3NL-8MGngYm0sJaavZKEURzmacKQQbbhPk6gGPlukFGyIs63u91qFyTkq0sijjgVf9zw9eywAOawsIhceVcHpLExSVAR7bqLaB3u2F-SiOTYLS3Z3il3iawzZai1OqYyuZNLC18ga0eJ5IPdFA0ughNyVrtuv2fToBLJ39eq2YGmiy6~l5z2tBvmavG~Ckly6oIcSnQrTtbJ2Q__',
              title: 'Teh Botol',
              price: 4000,
              quantity: 2,
            ),
            CartItem(
              imageUrl: 'https://s3-alpha-sig.figma.com/img/79ec/0a3c/599e7e8a2a79a6e7a4f0dc9173b27282?Expires=1731283200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=W0s0l~arU--12ETW5GNgFvUmjlyAEvLnE7FbCuig1eMHDdf2hhYofRWCKxHJ5~VRV3tCqPdTgpP0FwqUu5lysNee5aCBMPqNGu2VAVOO1gbObXF7btNeqQDaWsLerHmZujcNFn7qa73PKBijguUf~Ltos6Q5Gkk-NwbWe2rcWmGh96Y5b2C3CeamUqFlCHobipgMo5tNBMdSjIGpiDZdyz~Pngyu64mwbsqQDNKv7YZ~qFMntfHtEWNSwJfJAoFR5PLPZO8Ii1CAQRXQl7Newq4zfEbRA1nEomIh2SQZrIOusXGDaLZwCyfnyM6dUAqNHw9KPIjM8RBnKEkhPohN-g__',
              title: 'Burger King Small',
              price: 35000,
            ),
            Spacer(),
            SummarySection(),
            SizedBox(height: 16),
            CheckoutButton(),
          ],
        ),
      ),
    );
  }
}

class CartItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final int price;
  final int quantity;

  CartItem({
    required this.imageUrl,
    required this.title,
    required this.price,
    this.quantity = 1,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            Image.network(imageUrl, width: 60, height: 60, fit: BoxFit.cover),
            SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text('Rp.${price.toStringAsFixed(0)},00'),
                ],
              ),
            ),
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.remove),
                  onPressed: () {},
                ),
                Text('$quantity'),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {},
                ),
              ],
            ),
            IconButton(
              icon: Icon(Icons.delete, color: Colors.red),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class SummarySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("PPN 11%"),
            Text("Rp 10.000,00"),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Total belanja"),
            Text("Rp 94.000,00"),
          ],
        ),
        Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Total Pembayaran", style: TextStyle(fontWeight: FontWeight.bold)),
            Text("Rp 104.000,00", style: TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
      ],
    );
  }
}

class CheckoutButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
     
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          padding: EdgeInsets.symmetric(vertical: 16),
          
        ),
        onPressed: () {},
        child: Text(
          'Checkout',
          style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0), fontSize: 16),
        ),
      ),
    );
  }
}