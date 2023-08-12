// Autogenerated from Pigeon (v10.1.6), do not edit directly.
// See also: https://pub.dev/packages/pigeon

import Foundation
#if os(iOS)
import Flutter
#elseif os(macOS)
import FlutterMacOS
#else
#error("Unsupported platform.")
#endif

private func wrapResult(_ result: Any?) -> [Any?] {
  return [result]
}

private func wrapError(_ error: Any) -> [Any?] {
  if let flutterError = error as? FlutterError {
    return [
      flutterError.code,
      flutterError.message,
      flutterError.details
    ]
  }
  return [
    "\(error)",
    "\(type(of: error))",
    "Stacktrace: \(Thread.callStackSymbols)"
  ]
}

private func nilOrValue<T>(_ value: Any?) -> T? {
  if value is NSNull { return nil }
  return value as! T?
}

enum MapType: Int {
  case normal = 0
  case satellite = 1
  case dark = 2
}

/// 定位模式
///
/// 在地图的各种应用场景中，用户对定位点展示时也希望地图能跟随定位点旋转、移动等多种行为
enum MyLocationType: Int {
  /// 连续定位，但不会移动到地图中心点，并且会跟随设备移动
  case followNoCenter = 0
  /// 连续定位，且将视角移动到地图中心，定位点依照设备方向旋转，并且会跟随设备移动,默认是此种类型
  case locationRotate = 1
  /// 连续定位，但不会移动到地图中心点，定位点依照设备方向旋转，并且跟随设备移动
  case locationRotateNoCenter = 2
  /// 连续定位，但不会移动到地图中心点，地图依照设备方向旋转，并且会跟随设备移动
  case mapRotateNoCenter = 3
}

/// Generated class from Pigeon that represents data sent in messages.
struct MyLocationStyle {
  var myLocationType: MyLocationType? = nil

  static func fromList(_ list: [Any?]) -> MyLocationStyle? {
    var myLocationType: MyLocationType? = nil
    let myLocationTypeEnumVal: Int? = nilOrValue(list[0])
    if let myLocationTypeRawValue = myLocationTypeEnumVal {
      myLocationType = MyLocationType(rawValue: myLocationTypeRawValue)!
    }

    return MyLocationStyle(
      myLocationType: myLocationType
    )
  }
  func toList() -> [Any?] {
    return [
      myLocationType?.rawValue,
    ]
  }
}

/// Generated class from Pigeon that represents data sent in messages.
struct LatLng {
  var latitude: Double? = nil
  var longitude: Double? = nil

  static func fromList(_ list: [Any?]) -> LatLng? {
    let latitude: Double? = nilOrValue(list[0])
    let longitude: Double? = nilOrValue(list[1])

    return LatLng(
      latitude: latitude,
      longitude: longitude
    )
  }
  func toList() -> [Any?] {
    return [
      latitude,
      longitude,
    ]
  }
}

/// Generated class from Pigeon that represents data sent in messages.
struct Location {
  var latitude: Double? = nil
  var longitude: Double? = nil
  var bearing: Double? = nil
  var accuracy: Double? = nil

  static func fromList(_ list: [Any?]) -> Location? {
    let latitude: Double? = nilOrValue(list[0])
    let longitude: Double? = nilOrValue(list[1])
    let bearing: Double? = nilOrValue(list[2])
    let accuracy: Double? = nilOrValue(list[3])

    return Location(
      latitude: latitude,
      longitude: longitude,
      bearing: bearing,
      accuracy: accuracy
    )
  }
  func toList() -> [Any?] {
    return [
      latitude,
      longitude,
      bearing,
      accuracy,
    ]
  }
}

/// Generated class from Pigeon that represents data sent in messages.
struct MapPoi {
  var name: String
  var position: LatLng

  static func fromList(_ list: [Any?]) -> MapPoi? {
    let name = list[0] as! String
    let position = LatLng.fromList(list[1] as! [Any?])!

    return MapPoi(
      name: name,
      position: position
    )
  }
  func toList() -> [Any?] {
    return [
      name,
      position.toList(),
    ]
  }
}

/// Generated class from Pigeon that represents data sent in messages.
struct CameraPosition {
  var bearing: Double? = nil
  var target: LatLng? = nil
  var tilt: Double? = nil
  var zoom: Double? = nil

  static func fromList(_ list: [Any?]) -> CameraPosition? {
    let bearing: Double? = nilOrValue(list[0])
    var target: LatLng? = nil
    if let targetList: [Any?] = nilOrValue(list[1]) {
      target = LatLng.fromList(targetList)
    }
    let tilt: Double? = nilOrValue(list[2])
    let zoom: Double? = nilOrValue(list[3])

    return CameraPosition(
      bearing: bearing,
      target: target,
      tilt: tilt,
      zoom: zoom
    )
  }
  func toList() -> [Any?] {
    return [
      bearing,
      target?.toList(),
      tilt,
      zoom,
    ]
  }
}

/// Generated class from Pigeon that represents data sent in messages.
struct MarkerOptions {
  var position: LatLng
  var alpha: Double? = nil
  var rotation: Double? = nil
  var zIndex: Int64? = nil
  var flat: Bool? = nil
  var draggable: Bool? = nil
  var icon: Bitmap? = nil
  var anchor: [Double?]? = nil

  static func fromList(_ list: [Any?]) -> MarkerOptions? {
    let position = LatLng.fromList(list[0] as! [Any?])!
    let alpha: Double? = nilOrValue(list[1])
    let rotation: Double? = nilOrValue(list[2])
    let zIndex: Int64? = list[3] is NSNull ? nil : (list[3] is Int64? ? list[3] as! Int64? : Int64(list[3] as! Int32))
    let flat: Bool? = nilOrValue(list[4])
    let draggable: Bool? = nilOrValue(list[5])
    var icon: Bitmap? = nil
    if let iconList: [Any?] = nilOrValue(list[6]) {
      icon = Bitmap.fromList(iconList)
    }
    let anchor: [Double?]? = nilOrValue(list[7])

    return MarkerOptions(
      position: position,
      alpha: alpha,
      rotation: rotation,
      zIndex: zIndex,
      flat: flat,
      draggable: draggable,
      icon: icon,
      anchor: anchor
    )
  }
  func toList() -> [Any?] {
    return [
      position.toList(),
      alpha,
      rotation,
      zIndex,
      flat,
      draggable,
      icon?.toList(),
      anchor,
    ]
  }
}

/// Generated class from Pigeon that represents data sent in messages.
struct PolylineOptions {
  var points: [LatLng?]? = nil

  static func fromList(_ list: [Any?]) -> PolylineOptions? {
    let points: [LatLng?]? = nilOrValue(list[0])

    return PolylineOptions(
      points: points
    )
  }
  func toList() -> [Any?] {
    return [
      points,
    ]
  }
}

/// Generated class from Pigeon that represents data sent in messages.
struct Bitmap {
  var asset: String? = nil
  var bytes: FlutterStandardTypedData? = nil

  static func fromList(_ list: [Any?]) -> Bitmap? {
    let asset: String? = nilOrValue(list[0])
    let bytes: FlutterStandardTypedData? = nilOrValue(list[1])

    return Bitmap(
      asset: asset,
      bytes: bytes
    )
  }
  func toList() -> [Any?] {
    return [
      asset,
      bytes,
    ]
  }
}
/// Generated protocol from Pigeon that represents a handler of messages from Flutter.
protocol TencentMapSdkApi {
  func initSdk(iosApiKey: String?, agreePrivacy: Bool) throws
}

/// Generated setup class from Pigeon to handle messages through the `binaryMessenger`.
class TencentMapSdkApiSetup {
  /// The codec used by TencentMapSdkApi.
  /// Sets up an instance of `TencentMapSdkApi` to handle messages through the `binaryMessenger`.
  static func setUp(binaryMessenger: FlutterBinaryMessenger, api: TencentMapSdkApi?) {
    let initSdkChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.tencent_map.TencentMapSdkApi.initSdk", binaryMessenger: binaryMessenger)
    if let api = api {
      initSdkChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let iosApiKeyArg: String? = nilOrValue(args[0])
        let agreePrivacyArg = args[1] as! Bool
        do {
          try api.initSdk(iosApiKey: iosApiKeyArg, agreePrivacy: agreePrivacyArg)
          reply(wrapResult(nil))
        } catch {
          reply(wrapError(error))
        }
      }
    } else {
      initSdkChannel.setMessageHandler(nil)
    }
  }
}
private class TencentMapApiCodecReader: FlutterStandardReader {
  override func readValue(ofType type: UInt8) -> Any? {
    switch type {
      case 128:
        return Bitmap.fromList(self.readValue() as! [Any?])
      case 129:
        return CameraPosition.fromList(self.readValue() as! [Any?])
      case 130:
        return LatLng.fromList(self.readValue() as! [Any?])
      case 131:
        return LatLng.fromList(self.readValue() as! [Any?])
      case 132:
        return Location.fromList(self.readValue() as! [Any?])
      case 133:
        return MarkerOptions.fromList(self.readValue() as! [Any?])
      case 134:
        return MyLocationStyle.fromList(self.readValue() as! [Any?])
      case 135:
        return PolylineOptions.fromList(self.readValue() as! [Any?])
      default:
        return super.readValue(ofType: type)
    }
  }
}

private class TencentMapApiCodecWriter: FlutterStandardWriter {
  override func writeValue(_ value: Any) {
    if let value = value as? Bitmap {
      super.writeByte(128)
      super.writeValue(value.toList())
    } else if let value = value as? CameraPosition {
      super.writeByte(129)
      super.writeValue(value.toList())
    } else if let value = value as? LatLng {
      super.writeByte(130)
      super.writeValue(value.toList())
    } else if let value = value as? LatLng {
      super.writeByte(131)
      super.writeValue(value.toList())
    } else if let value = value as? Location {
      super.writeByte(132)
      super.writeValue(value.toList())
    } else if let value = value as? MarkerOptions {
      super.writeByte(133)
      super.writeValue(value.toList())
    } else if let value = value as? MyLocationStyle {
      super.writeByte(134)
      super.writeValue(value.toList())
    } else if let value = value as? PolylineOptions {
      super.writeByte(135)
      super.writeValue(value.toList())
    } else {
      super.writeValue(value)
    }
  }
}

private class TencentMapApiCodecReaderWriter: FlutterStandardReaderWriter {
  override func reader(with data: Data) -> FlutterStandardReader {
    return TencentMapApiCodecReader(data: data)
  }

  override func writer(with data: NSMutableData) -> FlutterStandardWriter {
    return TencentMapApiCodecWriter(data: data)
  }
}

class TencentMapApiCodec: FlutterStandardMessageCodec {
  static let shared = TencentMapApiCodec(readerWriter: TencentMapApiCodecReaderWriter())
}

/// Generated protocol from Pigeon that represents a handler of messages from Flutter.
protocol TencentMapApi {
  func setMapType(type: MapType) throws
  func setCompassEnabled(enabled: Bool) throws
  func setScaleControlsEnabled(enabled: Bool) throws
  func setRotateGesturesEnabled(enabled: Bool) throws
  func setScrollGesturesEnabled(enabled: Bool) throws
  func setZoomGesturesEnabled(enabled: Bool) throws
  func setTiltGesturesEnabled(enabled: Bool) throws
  func setIndoorViewEnabled(enabled: Bool) throws
  func setTrafficEnabled(enabled: Bool) throws
  func setBuildingsEnabled(enabled: Bool) throws
  func setMyLocationButtonEnabled(enabled: Bool) throws
  func setMyLocationEnabled(enabled: Bool) throws
  func setMyLocation(location: Location) throws
  func setMyLocationStyle(style: MyLocationStyle) throws
  func moveCamera(position: CameraPosition, duration: Int64) throws
  func addMarker(options: MarkerOptions) throws -> String
  func addPolyline(options: PolylineOptions) throws -> String
  func pause() throws
  func resume() throws
  func stop() throws
  func start() throws
  func destroy() throws
}

/// Generated setup class from Pigeon to handle messages through the `binaryMessenger`.
class TencentMapApiSetup {
  /// The codec used by TencentMapApi.
  static var codec: FlutterStandardMessageCodec { TencentMapApiCodec.shared }
  /// Sets up an instance of `TencentMapApi` to handle messages through the `binaryMessenger`.
  static func setUp(binaryMessenger: FlutterBinaryMessenger, api: TencentMapApi?) {
    let setMapTypeChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.tencent_map.TencentMapApi.setMapType", binaryMessenger: binaryMessenger, codec: codec)
    if let api = api {
      setMapTypeChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let typeArg = MapType(rawValue: args[0] as! Int)!
        do {
          try api.setMapType(type: typeArg)
          reply(wrapResult(nil))
        } catch {
          reply(wrapError(error))
        }
      }
    } else {
      setMapTypeChannel.setMessageHandler(nil)
    }
    let setCompassEnabledChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.tencent_map.TencentMapApi.setCompassEnabled", binaryMessenger: binaryMessenger, codec: codec)
    if let api = api {
      setCompassEnabledChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let enabledArg = args[0] as! Bool
        do {
          try api.setCompassEnabled(enabled: enabledArg)
          reply(wrapResult(nil))
        } catch {
          reply(wrapError(error))
        }
      }
    } else {
      setCompassEnabledChannel.setMessageHandler(nil)
    }
    let setScaleControlsEnabledChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.tencent_map.TencentMapApi.setScaleControlsEnabled", binaryMessenger: binaryMessenger, codec: codec)
    if let api = api {
      setScaleControlsEnabledChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let enabledArg = args[0] as! Bool
        do {
          try api.setScaleControlsEnabled(enabled: enabledArg)
          reply(wrapResult(nil))
        } catch {
          reply(wrapError(error))
        }
      }
    } else {
      setScaleControlsEnabledChannel.setMessageHandler(nil)
    }
    let setRotateGesturesEnabledChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.tencent_map.TencentMapApi.setRotateGesturesEnabled", binaryMessenger: binaryMessenger, codec: codec)
    if let api = api {
      setRotateGesturesEnabledChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let enabledArg = args[0] as! Bool
        do {
          try api.setRotateGesturesEnabled(enabled: enabledArg)
          reply(wrapResult(nil))
        } catch {
          reply(wrapError(error))
        }
      }
    } else {
      setRotateGesturesEnabledChannel.setMessageHandler(nil)
    }
    let setScrollGesturesEnabledChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.tencent_map.TencentMapApi.setScrollGesturesEnabled", binaryMessenger: binaryMessenger, codec: codec)
    if let api = api {
      setScrollGesturesEnabledChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let enabledArg = args[0] as! Bool
        do {
          try api.setScrollGesturesEnabled(enabled: enabledArg)
          reply(wrapResult(nil))
        } catch {
          reply(wrapError(error))
        }
      }
    } else {
      setScrollGesturesEnabledChannel.setMessageHandler(nil)
    }
    let setZoomGesturesEnabledChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.tencent_map.TencentMapApi.setZoomGesturesEnabled", binaryMessenger: binaryMessenger, codec: codec)
    if let api = api {
      setZoomGesturesEnabledChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let enabledArg = args[0] as! Bool
        do {
          try api.setZoomGesturesEnabled(enabled: enabledArg)
          reply(wrapResult(nil))
        } catch {
          reply(wrapError(error))
        }
      }
    } else {
      setZoomGesturesEnabledChannel.setMessageHandler(nil)
    }
    let setTiltGesturesEnabledChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.tencent_map.TencentMapApi.setTiltGesturesEnabled", binaryMessenger: binaryMessenger, codec: codec)
    if let api = api {
      setTiltGesturesEnabledChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let enabledArg = args[0] as! Bool
        do {
          try api.setTiltGesturesEnabled(enabled: enabledArg)
          reply(wrapResult(nil))
        } catch {
          reply(wrapError(error))
        }
      }
    } else {
      setTiltGesturesEnabledChannel.setMessageHandler(nil)
    }
    let setIndoorViewEnabledChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.tencent_map.TencentMapApi.setIndoorViewEnabled", binaryMessenger: binaryMessenger, codec: codec)
    if let api = api {
      setIndoorViewEnabledChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let enabledArg = args[0] as! Bool
        do {
          try api.setIndoorViewEnabled(enabled: enabledArg)
          reply(wrapResult(nil))
        } catch {
          reply(wrapError(error))
        }
      }
    } else {
      setIndoorViewEnabledChannel.setMessageHandler(nil)
    }
    let setTrafficEnabledChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.tencent_map.TencentMapApi.setTrafficEnabled", binaryMessenger: binaryMessenger, codec: codec)
    if let api = api {
      setTrafficEnabledChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let enabledArg = args[0] as! Bool
        do {
          try api.setTrafficEnabled(enabled: enabledArg)
          reply(wrapResult(nil))
        } catch {
          reply(wrapError(error))
        }
      }
    } else {
      setTrafficEnabledChannel.setMessageHandler(nil)
    }
    let setBuildingsEnabledChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.tencent_map.TencentMapApi.setBuildingsEnabled", binaryMessenger: binaryMessenger, codec: codec)
    if let api = api {
      setBuildingsEnabledChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let enabledArg = args[0] as! Bool
        do {
          try api.setBuildingsEnabled(enabled: enabledArg)
          reply(wrapResult(nil))
        } catch {
          reply(wrapError(error))
        }
      }
    } else {
      setBuildingsEnabledChannel.setMessageHandler(nil)
    }
    let setMyLocationButtonEnabledChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.tencent_map.TencentMapApi.setMyLocationButtonEnabled", binaryMessenger: binaryMessenger, codec: codec)
    if let api = api {
      setMyLocationButtonEnabledChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let enabledArg = args[0] as! Bool
        do {
          try api.setMyLocationButtonEnabled(enabled: enabledArg)
          reply(wrapResult(nil))
        } catch {
          reply(wrapError(error))
        }
      }
    } else {
      setMyLocationButtonEnabledChannel.setMessageHandler(nil)
    }
    let setMyLocationEnabledChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.tencent_map.TencentMapApi.setMyLocationEnabled", binaryMessenger: binaryMessenger, codec: codec)
    if let api = api {
      setMyLocationEnabledChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let enabledArg = args[0] as! Bool
        do {
          try api.setMyLocationEnabled(enabled: enabledArg)
          reply(wrapResult(nil))
        } catch {
          reply(wrapError(error))
        }
      }
    } else {
      setMyLocationEnabledChannel.setMessageHandler(nil)
    }
    let setMyLocationChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.tencent_map.TencentMapApi.setMyLocation", binaryMessenger: binaryMessenger, codec: codec)
    if let api = api {
      setMyLocationChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let locationArg = args[0] as! Location
        do {
          try api.setMyLocation(location: locationArg)
          reply(wrapResult(nil))
        } catch {
          reply(wrapError(error))
        }
      }
    } else {
      setMyLocationChannel.setMessageHandler(nil)
    }
    let setMyLocationStyleChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.tencent_map.TencentMapApi.setMyLocationStyle", binaryMessenger: binaryMessenger, codec: codec)
    if let api = api {
      setMyLocationStyleChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let styleArg = args[0] as! MyLocationStyle
        do {
          try api.setMyLocationStyle(style: styleArg)
          reply(wrapResult(nil))
        } catch {
          reply(wrapError(error))
        }
      }
    } else {
      setMyLocationStyleChannel.setMessageHandler(nil)
    }
    let moveCameraChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.tencent_map.TencentMapApi.moveCamera", binaryMessenger: binaryMessenger, codec: codec)
    if let api = api {
      moveCameraChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let positionArg = args[0] as! CameraPosition
        let durationArg = args[1] is Int64 ? args[1] as! Int64 : Int64(args[1] as! Int32)
        do {
          try api.moveCamera(position: positionArg, duration: durationArg)
          reply(wrapResult(nil))
        } catch {
          reply(wrapError(error))
        }
      }
    } else {
      moveCameraChannel.setMessageHandler(nil)
    }
    let addMarkerChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.tencent_map.TencentMapApi.addMarker", binaryMessenger: binaryMessenger, codec: codec)
    if let api = api {
      addMarkerChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let optionsArg = args[0] as! MarkerOptions
        do {
          let result = try api.addMarker(options: optionsArg)
          reply(wrapResult(result))
        } catch {
          reply(wrapError(error))
        }
      }
    } else {
      addMarkerChannel.setMessageHandler(nil)
    }
    let addPolylineChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.tencent_map.TencentMapApi.addPolyline", binaryMessenger: binaryMessenger, codec: codec)
    if let api = api {
      addPolylineChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let optionsArg = args[0] as! PolylineOptions
        do {
          let result = try api.addPolyline(options: optionsArg)
          reply(wrapResult(result))
        } catch {
          reply(wrapError(error))
        }
      }
    } else {
      addPolylineChannel.setMessageHandler(nil)
    }
    let pauseChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.tencent_map.TencentMapApi.pause", binaryMessenger: binaryMessenger, codec: codec)
    if let api = api {
      pauseChannel.setMessageHandler { _, reply in
        do {
          try api.pause()
          reply(wrapResult(nil))
        } catch {
          reply(wrapError(error))
        }
      }
    } else {
      pauseChannel.setMessageHandler(nil)
    }
    let resumeChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.tencent_map.TencentMapApi.resume", binaryMessenger: binaryMessenger, codec: codec)
    if let api = api {
      resumeChannel.setMessageHandler { _, reply in
        do {
          try api.resume()
          reply(wrapResult(nil))
        } catch {
          reply(wrapError(error))
        }
      }
    } else {
      resumeChannel.setMessageHandler(nil)
    }
    let stopChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.tencent_map.TencentMapApi.stop", binaryMessenger: binaryMessenger, codec: codec)
    if let api = api {
      stopChannel.setMessageHandler { _, reply in
        do {
          try api.stop()
          reply(wrapResult(nil))
        } catch {
          reply(wrapError(error))
        }
      }
    } else {
      stopChannel.setMessageHandler(nil)
    }
    let startChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.tencent_map.TencentMapApi.start", binaryMessenger: binaryMessenger, codec: codec)
    if let api = api {
      startChannel.setMessageHandler { _, reply in
        do {
          try api.start()
          reply(wrapResult(nil))
        } catch {
          reply(wrapError(error))
        }
      }
    } else {
      startChannel.setMessageHandler(nil)
    }
    let destroyChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.tencent_map.TencentMapApi.destroy", binaryMessenger: binaryMessenger, codec: codec)
    if let api = api {
      destroyChannel.setMessageHandler { _, reply in
        do {
          try api.destroy()
          reply(wrapResult(nil))
        } catch {
          reply(wrapError(error))
        }
      }
    } else {
      destroyChannel.setMessageHandler(nil)
    }
  }
}
private class MarkerApiCodecReader: FlutterStandardReader {
  override func readValue(ofType type: UInt8) -> Any? {
    switch type {
      case 128:
        return Bitmap.fromList(self.readValue() as! [Any?])
      case 129:
        return LatLng.fromList(self.readValue() as! [Any?])
      default:
        return super.readValue(ofType: type)
    }
  }
}

private class MarkerApiCodecWriter: FlutterStandardWriter {
  override func writeValue(_ value: Any) {
    if let value = value as? Bitmap {
      super.writeByte(128)
      super.writeValue(value.toList())
    } else if let value = value as? LatLng {
      super.writeByte(129)
      super.writeValue(value.toList())
    } else {
      super.writeValue(value)
    }
  }
}

private class MarkerApiCodecReaderWriter: FlutterStandardReaderWriter {
  override func reader(with data: Data) -> FlutterStandardReader {
    return MarkerApiCodecReader(data: data)
  }

  override func writer(with data: NSMutableData) -> FlutterStandardWriter {
    return MarkerApiCodecWriter(data: data)
  }
}

class MarkerApiCodec: FlutterStandardMessageCodec {
  static let shared = MarkerApiCodec(readerWriter: MarkerApiCodecReaderWriter())
}

/// Generated protocol from Pigeon that represents a handler of messages from Flutter.
protocol MarkerApi {
  func remove(id: String) throws
  func setRotation(id: String, rotation: Double) throws
  func setPosition(id: String, position: LatLng) throws
  func setAnchor(id: String, x: Double, y: Double) throws
  func setZIndex(id: String, zIndex: Int64) throws
  func setAlpha(id: String, alpha: Double) throws
  func setIcon(id: String, icon: Bitmap) throws
  func setDraggable(id: String, draggable: Bool) throws
}

/// Generated setup class from Pigeon to handle messages through the `binaryMessenger`.
class MarkerApiSetup {
  /// The codec used by MarkerApi.
  static var codec: FlutterStandardMessageCodec { MarkerApiCodec.shared }
  /// Sets up an instance of `MarkerApi` to handle messages through the `binaryMessenger`.
  static func setUp(binaryMessenger: FlutterBinaryMessenger, api: MarkerApi?) {
    let removeChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.tencent_map.MarkerApi.remove", binaryMessenger: binaryMessenger, codec: codec)
    if let api = api {
      removeChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let idArg = args[0] as! String
        do {
          try api.remove(id: idArg)
          reply(wrapResult(nil))
        } catch {
          reply(wrapError(error))
        }
      }
    } else {
      removeChannel.setMessageHandler(nil)
    }
    let setRotationChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.tencent_map.MarkerApi.setRotation", binaryMessenger: binaryMessenger, codec: codec)
    if let api = api {
      setRotationChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let idArg = args[0] as! String
        let rotationArg = args[1] as! Double
        do {
          try api.setRotation(id: idArg, rotation: rotationArg)
          reply(wrapResult(nil))
        } catch {
          reply(wrapError(error))
        }
      }
    } else {
      setRotationChannel.setMessageHandler(nil)
    }
    let setPositionChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.tencent_map.MarkerApi.setPosition", binaryMessenger: binaryMessenger, codec: codec)
    if let api = api {
      setPositionChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let idArg = args[0] as! String
        let positionArg = args[1] as! LatLng
        do {
          try api.setPosition(id: idArg, position: positionArg)
          reply(wrapResult(nil))
        } catch {
          reply(wrapError(error))
        }
      }
    } else {
      setPositionChannel.setMessageHandler(nil)
    }
    let setAnchorChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.tencent_map.MarkerApi.setAnchor", binaryMessenger: binaryMessenger, codec: codec)
    if let api = api {
      setAnchorChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let idArg = args[0] as! String
        let xArg = args[1] as! Double
        let yArg = args[2] as! Double
        do {
          try api.setAnchor(id: idArg, x: xArg, y: yArg)
          reply(wrapResult(nil))
        } catch {
          reply(wrapError(error))
        }
      }
    } else {
      setAnchorChannel.setMessageHandler(nil)
    }
    let setZIndexChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.tencent_map.MarkerApi.setZIndex", binaryMessenger: binaryMessenger, codec: codec)
    if let api = api {
      setZIndexChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let idArg = args[0] as! String
        let zIndexArg = args[1] is Int64 ? args[1] as! Int64 : Int64(args[1] as! Int32)
        do {
          try api.setZIndex(id: idArg, zIndex: zIndexArg)
          reply(wrapResult(nil))
        } catch {
          reply(wrapError(error))
        }
      }
    } else {
      setZIndexChannel.setMessageHandler(nil)
    }
    let setAlphaChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.tencent_map.MarkerApi.setAlpha", binaryMessenger: binaryMessenger, codec: codec)
    if let api = api {
      setAlphaChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let idArg = args[0] as! String
        let alphaArg = args[1] as! Double
        do {
          try api.setAlpha(id: idArg, alpha: alphaArg)
          reply(wrapResult(nil))
        } catch {
          reply(wrapError(error))
        }
      }
    } else {
      setAlphaChannel.setMessageHandler(nil)
    }
    let setIconChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.tencent_map.MarkerApi.setIcon", binaryMessenger: binaryMessenger, codec: codec)
    if let api = api {
      setIconChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let idArg = args[0] as! String
        let iconArg = args[1] as! Bitmap
        do {
          try api.setIcon(id: idArg, icon: iconArg)
          reply(wrapResult(nil))
        } catch {
          reply(wrapError(error))
        }
      }
    } else {
      setIconChannel.setMessageHandler(nil)
    }
    let setDraggableChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.tencent_map.MarkerApi.setDraggable", binaryMessenger: binaryMessenger, codec: codec)
    if let api = api {
      setDraggableChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let idArg = args[0] as! String
        let draggableArg = args[1] as! Bool
        do {
          try api.setDraggable(id: idArg, draggable: draggableArg)
          reply(wrapResult(nil))
        } catch {
          reply(wrapError(error))
        }
      }
    } else {
      setDraggableChannel.setMessageHandler(nil)
    }
  }
}
private class TencentMapHandlerCodecReader: FlutterStandardReader {
  override func readValue(ofType type: UInt8) -> Any? {
    switch type {
      case 128:
        return CameraPosition.fromList(self.readValue() as! [Any?])
      case 129:
        return LatLng.fromList(self.readValue() as! [Any?])
      case 130:
        return Location.fromList(self.readValue() as! [Any?])
      case 131:
        return MapPoi.fromList(self.readValue() as! [Any?])
      default:
        return super.readValue(ofType: type)
    }
  }
}

private class TencentMapHandlerCodecWriter: FlutterStandardWriter {
  override func writeValue(_ value: Any) {
    if let value = value as? CameraPosition {
      super.writeByte(128)
      super.writeValue(value.toList())
    } else if let value = value as? LatLng {
      super.writeByte(129)
      super.writeValue(value.toList())
    } else if let value = value as? Location {
      super.writeByte(130)
      super.writeValue(value.toList())
    } else if let value = value as? MapPoi {
      super.writeByte(131)
      super.writeValue(value.toList())
    } else {
      super.writeValue(value)
    }
  }
}

private class TencentMapHandlerCodecReaderWriter: FlutterStandardReaderWriter {
  override func reader(with data: Data) -> FlutterStandardReader {
    return TencentMapHandlerCodecReader(data: data)
  }

  override func writer(with data: NSMutableData) -> FlutterStandardWriter {
    return TencentMapHandlerCodecWriter(data: data)
  }
}

class TencentMapHandlerCodec: FlutterStandardMessageCodec {
  static let shared = TencentMapHandlerCodec(readerWriter: TencentMapHandlerCodecReaderWriter())
}

/// Generated class from Pigeon that represents Flutter messages that can be called from Swift.
class TencentMapHandler {
  private let binaryMessenger: FlutterBinaryMessenger
  init(binaryMessenger: FlutterBinaryMessenger){
    self.binaryMessenger = binaryMessenger
  }
  var codec: FlutterStandardMessageCodec {
    return TencentMapHandlerCodec.shared
  }
  func onTap(latLng latLngArg: LatLng, completion: @escaping () -> Void) {
    let channel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.tencent_map.TencentMapHandler.onTap", binaryMessenger: binaryMessenger, codec: codec)
    channel.sendMessage([latLngArg] as [Any?]) { _ in
      completion()
    }
  }
  func onTapPoi(poi poiArg: MapPoi, completion: @escaping () -> Void) {
    let channel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.tencent_map.TencentMapHandler.onTapPoi", binaryMessenger: binaryMessenger, codec: codec)
    channel.sendMessage([poiArg] as [Any?]) { _ in
      completion()
    }
  }
  func onLongPress(latLng latLngArg: LatLng, completion: @escaping () -> Void) {
    let channel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.tencent_map.TencentMapHandler.onLongPress", binaryMessenger: binaryMessenger, codec: codec)
    channel.sendMessage([latLngArg] as [Any?]) { _ in
      completion()
    }
  }
  func onCameraMove(cameraPosition cameraPositionArg: CameraPosition, completion: @escaping () -> Void) {
    let channel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.tencent_map.TencentMapHandler.onCameraMove", binaryMessenger: binaryMessenger, codec: codec)
    channel.sendMessage([cameraPositionArg] as [Any?]) { _ in
      completion()
    }
  }
  func onCameraIdle(cameraPosition cameraPositionArg: CameraPosition, completion: @escaping () -> Void) {
    let channel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.tencent_map.TencentMapHandler.onCameraIdle", binaryMessenger: binaryMessenger, codec: codec)
    channel.sendMessage([cameraPositionArg] as [Any?]) { _ in
      completion()
    }
  }
  func onLocation(location locationArg: Location, completion: @escaping () -> Void) {
    let channel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.tencent_map.TencentMapHandler.onLocation", binaryMessenger: binaryMessenger, codec: codec)
    channel.sendMessage([locationArg] as [Any?]) { _ in
      completion()
    }
  }
  func onTapMarker(markerId markerIdArg: String, completion: @escaping () -> Void) {
    let channel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.tencent_map.TencentMapHandler.onTapMarker", binaryMessenger: binaryMessenger, codec: codec)
    channel.sendMessage([markerIdArg] as [Any?]) { _ in
      completion()
    }
  }
  func onMarkerDragStart(markerId markerIdArg: String, latLng latLngArg: LatLng, completion: @escaping () -> Void) {
    let channel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.tencent_map.TencentMapHandler.onMarkerDragStart", binaryMessenger: binaryMessenger, codec: codec)
    channel.sendMessage([markerIdArg, latLngArg] as [Any?]) { _ in
      completion()
    }
  }
  func onMarkerDrag(markerId markerIdArg: String, latLng latLngArg: LatLng, completion: @escaping () -> Void) {
    let channel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.tencent_map.TencentMapHandler.onMarkerDrag", binaryMessenger: binaryMessenger, codec: codec)
    channel.sendMessage([markerIdArg, latLngArg] as [Any?]) { _ in
      completion()
    }
  }
  func onMarkerDragEnd(markerId markerIdArg: String, latLng latLngArg: LatLng, completion: @escaping () -> Void) {
    let channel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.tencent_map.TencentMapHandler.onMarkerDragEnd", binaryMessenger: binaryMessenger, codec: codec)
    channel.sendMessage([markerIdArg, latLngArg] as [Any?]) { _ in
      completion()
    }
  }
}
