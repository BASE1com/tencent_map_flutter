package com.morbit.tencent_map

import com.tencent.tencentmap.mapsdk.maps.CameraUpdateFactory
import com.tencent.tencentmap.mapsdk.maps.TencentMap.*

class _TencentMapApi(private val tencentMap: TencentMap) : TencentMapApi {
  private val mapView = tencentMap.view

  override fun setMapType(type: MapType) {
    mapView.map.mapType = when (type) {
      MapType.NORMAL -> MAP_TYPE_NORMAL
      MapType.SATELLITE -> MAP_TYPE_SATELLITE
      MapType.DARK -> MAP_TYPE_DARK
    }
  }

  override fun pause() {
    mapView.onPause()
  }

  override fun resume() {
    mapView.onResume()
  }

  override fun stop() {
    mapView.onStop()
  }

  override fun start() {
    mapView.onStart()
  }

  override fun destroy() {
    mapView.onDestroy()
  }

  override fun setCompassEnabled(enabled: Boolean) {
    mapView.map.uiSettings.isCompassEnabled = enabled
  }

  override fun setRotateGesturesEnabled(enabled: Boolean) {
    mapView.map.uiSettings.isRotateGesturesEnabled = enabled
  }

  override fun setScrollGesturesEnabled(enabled: Boolean) {
    mapView.map.uiSettings.isScrollGesturesEnabled = enabled
  }

  override fun setZoomGesturesEnabled(enabled: Boolean) {
    mapView.map.uiSettings.isZoomGesturesEnabled = enabled
  }

  override fun setSkewGesturesEnabled(enabled: Boolean) {
    mapView.map.uiSettings.isTiltGesturesEnabled = enabled
  }

  override fun setIndoorViewEnabled(enabled: Boolean) {
    mapView.map.setIndoorEnabled(enabled)
  }

  override fun setIndoorPickerEnabled(enabled: Boolean) {
    mapView.map.uiSettings.isIndoorLevelPickerEnabled = enabled
  }

  override fun setTrafficEnabled(enabled: Boolean) {
    mapView.map.isTrafficEnabled = enabled
  }

  override fun setBuildingsEnabled(enabled: Boolean) {
    mapView.map.showBuilding(enabled)
  }

  override fun setScaleControlsEnabled(enabled: Boolean) {
    mapView.map.uiSettings.isScaleViewEnabled = enabled
  }

  override fun setMyLocationButtonEnabled(enabled: Boolean) {
    mapView.map.uiSettings.isMyLocationButtonEnabled = enabled
  }

  override fun setMyLocationEnabled(enabled: Boolean) {
    mapView.map.isMyLocationEnabled = enabled
  }

  override fun setUserLocationType(type: UserLocationType) {
    mapView.map.setMyLocationStyle(type.toMyLocationStyle())
  }

  override fun getUserLocation(): Location {
    return mapView.map.myLocation.toLocation()
  }

  override fun moveCamera(position: CameraPosition, duration: Long) {
    val cameraPosition = position.toCameraPosition(mapView.map.cameraPosition)
    val cameraUpdate = CameraUpdateFactory.newCameraPosition(cameraPosition)
    if (duration > 0) {
      mapView.map.stopAnimation()
      mapView.map.animateCamera(cameraUpdate, duration, null)
    } else {
      mapView.map.moveCamera(cameraUpdate)
    }
  }

  override fun addMarker(options: MarkerOptions): String {
    val marker = mapView.map.addMarker(options.toMarkerOptions(tencentMap.binding))
    tencentMap.markers[marker.id] = marker
    return marker.id
  }

  override fun addPolyline(options: PolylineOptions): String {
    TODO("Not yet implemented")
  }
}
