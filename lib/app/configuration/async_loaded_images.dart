// import 'package:flutter/services.dart';
// import 'dart:ui' as ui;
//
// class AsyncLoadedImages {
//   static final AsyncLoadedImages _singleton = AsyncLoadedImages._();
//
//   //네이버맵 마커
//   late OverlayImage _markerJob;
//   late OverlayImage _markerAlfCall;
//   late OverlayImage _markerFlash;
//   late OverlayImage _markerJobFlat;
//   late OverlayImage _markerJobSelected;
//   late OverlayImage _markerAlba;
//   late OverlayImage _markerAlbaFlat;
//
//   //거리 슬라이더 썸
//   late ui.Image _distanceSliderThumbBlue;
//   late ui.Image _distanceSliderThumbRed;
//
//   factory AsyncLoadedImages() {
//     return _singleton;
//   }
//
//   OverlayImage getJobMarker(
//       {required bool isSelected, bool isFlat = false, bool isAlfCall = false}) {
//     if (isAlfCall) {
//       return _markerAlfCall;
//     }
//     if (isFlat) {
//       return _markerJobFlat;
//     }
//     if (isSelected) {
//       return _markerJobSelected;
//     }
//     return _markerJob;
//   }
//
//   OverlayImage getFlashJobMarker() {
//     return _markerFlash;
//   }
//
//   OverlayImage getAlbaMarker({bool isFlat = false}) {
//     if (isFlat) {
//       return _markerAlbaFlat;
//     }
//     return _markerAlba;
//   }
//
//   get distanceSliderThumbBlue => _distanceSliderThumbBlue;
//
//   get distanceSliderThumbRed => _distanceSliderThumbRed;
//
//   Future<void> init() async {
//     final images = await Future.wait([
//       OverlayImage.fromAssetImage(
//         assetName: AppIcon.markerJob,
//       ), // 일반알바 마커
//       OverlayImage.fromAssetImage(
//         assetName: AppIcon.markerJobSelected,
//       ), // 일반알바 마커 선택
//       _loadImage(AppIcon.distanceSliderThumbBlue),
//       OverlayImage.fromAssetImage(
//         assetName: AppIcon.markerAlba,
//       ), // 내위치
//       OverlayImage.fromAssetImage(
//         assetName: AppIcon.markerAlbaFlat,
//       ), // 내위
//       OverlayImage.fromAssetImage(
//         assetName: AppIcon.markerJobFlat,
//       ), // 내위치
//       _loadImage(AppIcon.distanceSliderThumbRed),
//       OverlayImage.fromAssetImage(
//         assetName: AppIcon.markerJobAlfCall,
//       ), // 내위치
//       OverlayImage.fromAssetImage(
//         assetName: AppIcon.markerFlash,
//       ), // 내위치
//     ]);
//
//     _markerJob = images[0] as OverlayImage;
//     _markerJobSelected = images[1] as OverlayImage;
//     _distanceSliderThumbBlue = images[2] as ui.Image;
//     _markerAlba = images[3] as OverlayImage;
//     _markerAlbaFlat = images[4] as OverlayImage;
//     _markerJobFlat = images[5] as OverlayImage;
//     _distanceSliderThumbRed = images[6] as ui.Image;
//     _markerAlfCall = images[7] as OverlayImage;
//     _markerFlash = images[8] as OverlayImage;
//   }
//
//   Future<ui.Image> _loadImage(String assetPath) async {
//     ByteData data = await rootBundle.load(assetPath);
//     ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List());
//     ui.FrameInfo fi = await codec.getNextFrame();
//     return fi.image;
//   }
//
//   AsyncLoadedImages._();
// }
