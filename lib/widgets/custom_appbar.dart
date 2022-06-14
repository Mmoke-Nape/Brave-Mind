import 'package:flutter/material.dart';

import '../constants/constants.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 60,
      width: size.width,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      color: AppColors.primaryBlue,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu, size: 25, color: Colors.white),
          ),
          Text(
            'Brave Mind',
            style:
                Theme.of(context).textTheme.headline4!.copyWith(fontSize: 25),
          ),
          Image.asset('assets/images/logos/white-logo-new.png'),
        ],
      ),
    );
  }
}
