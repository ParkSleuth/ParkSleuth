//
//  ContentView.swift
//  ParkSleuth
//
//  Created by Adam Joshua Mohammad on 5/8/21.
//

import UIKit

struct ContentView: View {
    var body: some View {
        VStack {
            GoogleMapsView()
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)
        }
    }
}
