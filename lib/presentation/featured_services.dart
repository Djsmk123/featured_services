import 'package:flutter/material.dart';
import 'package:flutter_app/presentation/widgets/custom_card.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class FeaturedServicesWidget extends StatelessWidget {
  const FeaturedServicesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    int itemCount = 10;
    var size = MediaQuery.of(context).size;
    PageController controller = PageController(
      initialPage: 1,
      viewportFraction: size.width > 600 ? 0.3 : 0.47,
    );

    return Scaffold(
        appBar: AppBar(title: const Text("Example")),
        body: Center(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          buidFeaturedRow(),
          SizedBox(
            height: 300,
            child: PageView.builder(
                controller: controller,
                padEnds: false,
                scrollDirection: Axis.horizontal,
                itemCount: itemCount,
                itemBuilder: (context, index) => const CustomCard()),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: SmoothPageIndicator(
              controller: controller,
              count: itemCount,
              effect: const JumpingDotEffect(
                activeDotColor: Colors.deepPurple,
                dotColor: Color.fromARGB(255, 150, 137, 170),
                dotHeight: 10,
                dotWidth: 10,
                spacing: 12,
                // verticalOffset: 10,
                jumpScale: 1,
              ),
            ),
          )
        ])));
  }

  Row buidFeaturedRow() {
    return Row(
      children: [
        Flexible(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              contentPadding: const EdgeInsets.all(0),
              leading: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.grey.shade100,
                child: const Icon(
                  Icons.star_border,
                  color: Colors.black,
                  size: 20,
                ),
              ),
              title: const Text(
                'Featured Service',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
