import 'package:flutter/material.dart';
import 'package:news_app/Model/articles_Model.dart';

// cached network image
class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articlesModel});
  final ArticlesModel articlesModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: articlesModel.Image != null
                ? Image.network(
                    articlesModel.Image!,
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  )
                : Image.network(
                    'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif',
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  )),
        const SizedBox(
          height: 12,
        ),
        Text(
          articlesModel.Title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Colors.black87,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          articlesModel.SubTitle ?? " ",
          maxLines: 2,
          style: const TextStyle(color: Colors.grey, fontSize: 14),
        )
      ],
    );
  }
}
