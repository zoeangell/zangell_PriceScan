//
//  ScanView.swift
//  PriceCheck
//
//  Created by Zoe Angell on 9/26/24.
//

import SwiftUI

struct ScanView: View {
    //    var scan: PriceScan
    var body: some View{
        let locationScans = Bundle.main.decode([Location].self, from: "scan_api_data.json").sorted(by: { $0 < $1 })
        VStack{
            Text("Scans")
                .bold()
                .font(.largeTitle)
                .frame(maxWidth: .infinity, alignment: .leading)
            
                .padding()
     
                List {
                    LocationView(locationScans: locationScans)
                }
        }
    }
          
        
}
    
    struct ScanView_Previews: PreviewProvider {
        static var previews: some View {
            ScanView()
        }
    }
    

