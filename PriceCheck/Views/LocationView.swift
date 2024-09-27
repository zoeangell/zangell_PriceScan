//
//  LocationView.swift
//  PriceCheck
//
//  Created by Zoe Angell on 9/26/24.
//

//import Foundation
import SwiftUI

struct LocationView: View {
    var locationScans: [Location]
    var body: some View{
        ForEach(locationScans) { location in
            Section(header:
                        Text(location.name).bold()
                .foregroundColor(.black)
                    , content: {
                ForEach(location.scans.sorted(by: { $0 < $1 })) { scan in
                    ScanListView(scan: scan)
                    
                }
            })
        }
    }
}

struct LocationView_Previews: PreviewProvider {
    static var previews: some View {
        ScanView()
    }
}

