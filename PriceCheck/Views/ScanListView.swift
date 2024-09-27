// Created for PriceCheck on 10/10/20 
// Using Swift 5.0 
// Running on macOS 11.0
// Qapla'


import SwiftUI

struct ScanListView: View {
    var scan : PriceScan
    
  var body: some View {
      HStack{
          Text(scan.item)
          Spacer()
          let price_str: String = String(scan.price)
          Text("$\(price_str)")
              .bold()
              .frame(width: .infinity, alignment: .trailing)
      }
    }
  }


struct ScanListView_Previews: PreviewProvider {
    static var previews: some View {
        ScanView()
    }
}
