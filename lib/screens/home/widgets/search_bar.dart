import 'package:flutter/material.dart';
import 'package:ngo_index/utils/dimensions.dart';
import 'package:ngo_index/widgets/blurshadow.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: Dimensions.height20),
      padding:
          EdgeInsets.only(left: Dimensions.width10, right: Dimensions.width10),
      height: Dimensions.height20 * 3,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(Dimensions.radius30 - 5),
          boxShadow: [BlurShadow()]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(Icons.search),
              SizedBox(width: Dimensions.width20 + 10),
              Text('Search for NGO'),
            ],
          ),
          const Icon(Icons.mic_none_sharp)
        ],
      ),
    );
  }
}
