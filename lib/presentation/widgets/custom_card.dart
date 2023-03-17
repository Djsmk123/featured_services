import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(16.0),
          child: Stack(
            children: [
              SizedBox(
                height: 300,
                child: Image.network(
                  "https://i.ibb.co/gj1Z3bb/health-insurance-template-vector-poster-53876-111249.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    height: 30,
                    width: 30,
                    margin: const EdgeInsets.all(8),
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 5,
                          spreadRadius: 1,
                        ),
                      ],
                    ),
                    child: const Icon(
                      Icons.navigate_next,
                      color: Colors.deepPurple,
                    ),
                  )),
            ],
          )),
    );
  }
}
