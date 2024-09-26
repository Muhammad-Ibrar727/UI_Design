// import 'dart:nativewrappers/_internal/vm/lib/ffi_allocation_patch.dart';

import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
          padding:const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Find your',
                style: TextStyle(fontSize: 25, color: Colors.black87),
              ),
              const SizedBox(
                height: 3,
              ),
              const Text(
                'Inspiration',
                style: TextStyle(fontSize: 40, color: Colors.black,fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(244, 243, 243, 1),
                    borderRadius: BorderRadius.circular(15)),
                child:const TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.black87,
                      ),
                      hintText: "Search you're looking for",
                      hintStyle: TextStyle(fontSize: 15, color: Colors.grey)),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
       const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Promo Today',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    promoCard('images/img1.jpg'),
                    promoCard('images/img3.jpg'),
                    promoCard('images/img5.jpg'),
                    promoCard('images/img2.jpg'),
                    promoCard('images/img4.jpg'),
                  ],
                ),
              ),
              const SizedBox(
                height: 19,
              ),
              Container(
                height: 160,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('images/img2.jpg'))),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                          stops: const [0.3, 0.9],
                          begin: Alignment.bottomRight,
                          colors: [
                            Colors.black.withOpacity(0.8),
                            Colors.black.withOpacity(0.1),
                          ])),

                        child: const Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding:  EdgeInsets.all(15.0),
                            child: Text("Best Trip",style: TextStyle(color: Colors.white,fontSize: 20),),
                          ),
                        ),
                ),
              )
            ],
          ),
        )
      ],
    )));
  }

  Widget promoCard(image) {
    return AspectRatio(
      aspectRatio: 2.5 / 3 ,
      child: Container(
        margin: const EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.circular(20),
            image:
                DecorationImage(fit: BoxFit.cover, image: AssetImage(image))),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                  stops: const [0.1, 0.9],
                  begin: Alignment.bottomRight,
                  colors: [
                    Colors.black.withOpacity(0.8),
                    Colors.black.withOpacity(0.1),
                  ])),
        ),
      ),
    );
  }
}
