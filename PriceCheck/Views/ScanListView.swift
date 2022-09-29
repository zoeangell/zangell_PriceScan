// Created for PriceCheck on 10/10/20 
// Using Swift 5.0 
// Running on macOS 11.0
// Qapla'


import SwiftUI

struct ScanListView: View {
    
  var body: some View {
    
    let locationScans = Bundle.main.decode([Location].self, from: "scan_api_data.json").sorted(by: { $0 < $1 })
  
    NavigationView {
      List {
        ForEach(locationScans) { location in
          Section(header: Text(location.name), content: {
            ForEach(location.scans.sorted(by: { $0 < $1 })) { scan in
              Text(scan.item)
            }
          })
        }
      }.navigationBarTitle("Scans")
    }
  }
}

struct ScanListView_Previews: PreviewProvider {
    static var previews: some View {
        ScanListView()
    }
}
