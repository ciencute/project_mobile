import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class AppCacheImage extends StatelessWidget {
  final String url;
  final double? width;
  final double? height;
  final double? borderRadius;
  final BoxFit fit;

  const AppCacheImage({
    Key? key,
    this.url = '',
    this.width,
    this.height,
    this.borderRadius,
    this.fit = BoxFit.cover,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool isValidUrl = Uri.tryParse(url)?.isAbsolute == true;
    return Container(
      width: width ?? double.infinity,
      height: height ?? double.infinity,
      // ignore: sort_child_properties_last
      child: isValidUrl
          ? ClipRRect(
              borderRadius: BorderRadius.circular(borderRadius ?? 0),
              child: CachedNetworkImage(
                imageUrl: url,
                progressIndicatorBuilder: (context, url, downloadProgress) {
                  return Center(
                    child: SizedBox(
                      width: 24,
                      height: 24,
                      child: CircularProgressIndicator(
                        value: downloadProgress.progress,
                        backgroundColor: Colors.white,
                        valueColor: AlwaysStoppedAnimation<Color>(
                            AppColor.contractInfoColor),
                      ),
                    ),
                  );
                },
                errorWidget: (context, url, error) {
                  return Image.network(
                    url,
                    errorBuilder: (context, error, stackTrace) =>
                        _buildPlaceHolderImage(),
                    fit: fit,
                  );
                },
                fit: fit,
              ),
            )
          : _buildPlaceHolderImage(),
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(borderRadius ?? 0),
      ),
    );
  }

  Widget _buildPlaceHolderImage() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius ?? 0),
      child: Container(
        color: const Color(0xFFe6e6e6),
        child: const Center(
          child: Icon(
            Icons.broken_image_outlined,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}