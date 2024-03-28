part of "../avs_svg_provider.dart";

bool _isLocalImageCheck(String path) {
  if (path.trim().toLowerCase().contains("https://") ||
      path.trim().toLowerCase().contains("https://")) {
    return false;
  } else {
    return true;
  }
}
