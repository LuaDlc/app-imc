import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.appBarColor,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 10,
            left: 15,
            right: 15,
          ),
          child: Row(
            
          )
        )
      )
    )
    
  }

  @override
  Size get preferedSize => const Size.fromHeight(130);
}