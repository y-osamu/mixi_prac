//
//  recent_latlon.swift
//  o
//
//  Created by osamu on 24.07.22.
//
import CoreLocation
import MapKit

class LocationManger : NSObject, ObservableObject, CLLocationManagerDelegate{    
    let manager = CLLocationManager()
    
    @Published var region = MKCoordinateRegion()
    
    override init(){
        super.init() // スーパークラスのイニシャライザを実行
        manager.delegate = self // 自信をデリゲートプロパティに設定
        manager.requestWhenInUseAuthorization() //利用許可
        manager.desiredAccuracy = kCLLocationAccuracyBest // 最高精度の位置情報
        manager.distanceFilter = 3.0 //更新距離()
        manager.startUpdatingLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        locations.last.map{
            let center = CLLocationCoordinate2D(
                latitude: $0.coordinate.latitude,
                longitude: $0.coordinate.longitude)
            
            // 地図を表示するための領域を再構築
                region = MKCoordinateRegion(
                    center: center,
                    latitudinalMeters: 1000.0,
                    longitudinalMeters: 1000.0
            )
        }
        
    }
    
}
