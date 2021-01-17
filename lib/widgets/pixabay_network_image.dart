import 'package:flutter/cupertino.dart';

class PixabayNetworkImage extends StatelessWidget {
  final String url;
  final String userName;
  final String footerText;

  PixabayNetworkImage({
    @required this.url,
    this.userName,
    this.footerText,
  });

  @override
  Widget build(BuildContext context) {
    TextStyle baseStyle = CupertinoTheme.of(context).textTheme.textStyle;

    return Column(
      children: [
        /// Image
        AspectRatio(
          aspectRatio: 1,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Container(
              color: CupertinoColors.systemGrey3,
              child: Image.network(
                '$url',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: RichText(
              text: TextSpan(
                style: baseStyle,
                children: [
                  TextSpan(
                    text: 'By ',
                  ),
                  TextSpan(
                    text: '$userName',
                    style: baseStyle.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            '$footerText',
            style: baseStyle,
          ),
        ),
      ],
    );
  }
}
