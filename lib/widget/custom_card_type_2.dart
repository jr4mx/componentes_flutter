import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 10,
      // ignore: deprecated_member_use
      shadowColor: AppTheme.primaryC.withOpacity(1),
      child: Column(
        children: [
          const FadeInImage(
            image: NetworkImage(
              'https://discoveryalert.com.au/wp-content/uploads/elementor/thumbs/red-mountain-mining-advances-critical-antimony-gold-exploration-in-southern-new-england-orogen-r1lxr4e9l440ujlgq23ljktag31397itp38q6du4qw.jpg',
            ),
            placeholder: AssetImage('assets/images/jar-loading.gif'),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: Duration(milliseconds: 300),
          ),
          Container(
            padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
            child: Text('Un logo de R4mx'),
          ),
        ],
      ),
    );
  }
}
