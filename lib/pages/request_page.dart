import 'package:flutter/material.dart';
import 'package:projetgelo/core/utils/image_constant.dart';
import 'package:projetgelo/theme/custom_text_style.dart';
import 'package:projetgelo/theme/theme_helper.dart';
import 'package:projetgelo/widgets/custom_image_view.dart';

class RequestPage extends StatefulWidget {
  const RequestPage({super.key});

  @override
  State<RequestPage> createState() => _RequestPageState();
}

class _RequestPageState extends State<RequestPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildColumnbloodbank(context),
            const SizedBox(height: 41),
            const Text('Request Page'),
          ],
        ),
      ),
    );
  }

  Widget _buildColumnbloodbank(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 19),
      padding: const EdgeInsets.symmetric(horizontal: 3),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 78,
            width: 338,
            margin: const EdgeInsets.only(left: 13),
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "BLOOD",
                          style: CustomTextStyles.headlineMediumRed70001,
                        ),
                        const TextSpan(
                          text: " ",
                        ),
                        TextSpan(
                          text: "BANK ",
                          style: CustomTextStyles.headlineMediumOnPrimary,
                        ),
                        TextSpan(
                          text: "SYSTEM",
                          style: theme.textTheme.headlineMedium,
                        )
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: SizedBox(
                    width: 201,
                    child: Text(
                      "WELCOME",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.img29091191,
                        height: 36,
                        width: 36,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 8,
                          top: 5,
                          bottom: 3,
                        ),
                        child: Text(
                          "HGOPY",
                          style: theme.textTheme.titleLarge,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.only(right: 28),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.img11761,
                  height: 21,
                  width: 29,
                  margin: const EdgeInsets.symmetric(vertical: 18),
                ),
                CustomImageView(
                  imagePath: ImageConstant.img31357151,
                  height: 59,
                  width: 88,
                  margin: const EdgeInsets.only(left: 5),
                ),
                Container(
                  height: 46,
                  width: 218,
                  margin: const EdgeInsets.only(
                    left: 18,
                    top: 4,
                    bottom: 7,
                  ),
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            "Dr GUIYOBA",
                            style: theme.textTheme.headlineMedium,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          "mendengjonathan@gmail.com",
                          style: theme.textTheme.titleSmall,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
