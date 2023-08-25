import QMapKit
import Flutter

class _TencentMapApi: NSObject, TencentMapApi {
  let tencentMap: TencentMap
  let mapView: QMapView

  init(_ tencentMap: TencentMap) {
    self.tencentMap = tencentMap
    self.mapView = tencentMap.mapView
  }

  func setMapType(type: MapType) throws {
    mapView.mapType = [
      MapType.dark: QMapType.dark,
      MapType.normal: QMapType.standard,
      MapType.satellite: QMapType.satellite,
    ][type] ?? QMapType.standard
  }

  func setCompassEnabled(enabled: Bool) throws {
    mapView.showsCompass = enabled
  }

  func setScaleControlsEnabled(enabled: Bool) throws {
    mapView.showsScale = enabled
  }

  func setRotateGesturesEnabled(enabled: Bool) throws {
    mapView.isRotateEnabled = enabled
  }

  func setScrollGesturesEnabled(enabled: Bool) throws {
    mapView.isScrollEnabled = enabled
  }

  func setZoomGesturesEnabled(enabled: Bool) throws {
    mapView.isZoomEnabled = enabled
  }

  func setTiltGesturesEnabled(enabled: Bool) throws {
    mapView.isOverlookingEnabled = enabled
  }

  func setIndoorViewEnabled(enabled: Bool) throws {
    mapView.setIndoorEnabled(enabled)
  }

  func setTrafficEnabled(enabled: Bool) throws {
    mapView.showsTraffic = enabled
  }

  func setBuildingsEnabled(enabled: Bool) throws {
    mapView.showsBuildings = enabled
  }

  func setMyLocationButtonEnabled(enabled: Bool) throws {
    throw FlutterError(code: "505", message: "Not supported on iOS platform.", details: nil)
  }

  func setMyLocationEnabled(enabled: Bool) throws {
    mapView.showsUserLocation = enabled
  }

  func setMyLocation(location: Location) throws { }

  func setMyLocationStyle(style: MyLocationStyle) throws { }

  func moveCamera(position: CameraPosition, duration: Int64) throws {
    let animated = duration > 0
    if let it = position.target?.coordinate { mapView.setCenter(it, animated: animated) }
    if let it = position.zoom { mapView.setZoomLevel(CGFloat(it), animated: animated) }
    if let it = position.tilt { mapView.setOverlooking(CGFloat(it), animated: animated) }
    if let it = position.bearing { mapView.setRotation(CGFloat(it), animated: animated) }
  }

  func addMarker(options: MarkerOptions) throws -> String {
    var id = UUID()
    while(tencentMap.hasKeyInMarkers(key: id)) {
      id = UUID()
    }
    let annotation = options.annotation
    tencentMap.markers[id] = annotation
    mapView.addAnnotation(annotation)
    return id.uuidString
  }

  func addPolyline(options: PolylineOptions) throws -> String {
    return ""
  }

  func pause() throws { }

  func resume() throws { }

  func stop() throws { }

  func start() throws { }

  func destroy() throws { }
}
