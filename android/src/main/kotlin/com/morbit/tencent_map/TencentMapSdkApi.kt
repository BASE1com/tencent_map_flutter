package com.morbit.tencent_map

import com.tencent.map.geolocation.TencentLocationManager
import com.tencent.tencentmap.mapsdk.maps.TencentMapInitializer

class _TencentMapSdkApi : TencentMapSdkApi {
  override fun initSdk(iosApiKey: String?, agreePrivacy: Boolean) {
    TencentMapInitializer.setAgreePrivacy(agreePrivacy)
    TencentLocationManager.setUserAgreePrivacy(agreePrivacy)
  }
}
