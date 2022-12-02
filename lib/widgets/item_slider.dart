import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:w2w_app/theme/app_theme.dart';

class ItemSlider extends StatelessWidget {
  const ItemSlider({super.key, required this.size});
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.zero,
      width: size.width * 1,
      height: size.height * 0.2,
      child: _ListItem(size: size),
    );
  }
}

class _ListItem extends StatelessWidget {
  const _ListItem({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    List<String> nameItems = ['Rutas', 'Restaurantes', 'Eventos', 'Tours'];
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: nameItems.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: const EdgeInsets.all(1),
            margin: EdgeInsets.symmetric(horizontal: size.width * 0.01),
            width: size.width * 0.28,
            height: size.height * 0.4,
            decoration: const BoxDecoration(
                color: AppTheme.primary,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                      color: AppTheme.secondary,
                      blurRadius: 10,
                      spreadRadius: 1,
                      offset: Offset(4, 4))
                ]),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              GestureDetector(
                  onTap: () {},
                  child: AutoSizeText(
                    nameItems[index],
                    style: Theme.of(context).textTheme.headline6,
                    textAlign: TextAlign.center,
                    maxLines: 1,
                  )),
            ]),
          );
        });
  }
}