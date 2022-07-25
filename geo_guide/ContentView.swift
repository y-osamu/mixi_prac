//
//  ContentView.swift
//  o
//
//  Created by osamu on 24.07.22.
//

import SwiftUI
import MapKit

struct ContentView: View {
    @ObservedObject  var manager = LocationManger()
    
    // ユーザートラッキングモードを追従モードにするための変数を定義
    @State  var trackingMode = MapUserTrackingMode.follow
    
    var body: some View {
        
        Map(coordinateRegion: $manager.region,
            showsUserLocation: true, // マップ上にユーザーの場所を表示するオプションをBool値で指定
            userTrackingMode: $trackingMode) // マップがユーザーの位置情報更新にどのように応答するかを決定
            .edgesIgnoringSafeArea(.bottom)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
