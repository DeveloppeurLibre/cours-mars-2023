//
//  TestView.swift
//  MovieApp
//
//  Created by Quentin Cornu on 24/03/2023.
//

import SwiftUI

struct TestView: View {
    var body: some View {
        VStack(alignment: .trailing) {
            Text("jhzei")
                .background(.red)
                
            Text("jhzeidljhfvs")
                .background(.green)
            Text("lkjdshfvljshdfbvsjkdhbf")
                .background(.blue)
                .background(.yellow)
        }
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
