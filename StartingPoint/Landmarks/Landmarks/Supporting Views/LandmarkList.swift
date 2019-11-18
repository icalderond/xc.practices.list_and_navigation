//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Israel Calderon de la Cruz on 11/17/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView{
            List(landmarkData/*,id: \.id /* Only can remove this if class contain Identifiable */ */) { landmark in
                NavigationLink(destination:LandmarkDetail(landmark: landmark)){
                    LandmarkRow(landMark: landmark)
                }
            }
            .navigationBarTitle(Text("Landmarks"))
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        
        ForEach(["iPhone SE","iPhone XS Max"],id: \.self){ deviceName in
            /* When the elements of your data are simple value types — like the strings you’re using here — you can use \.self as key path to the identifier. */
            
            LandmarkList()
                //.previewDevice(PreviewDevice(rawValue: "iPhone SE"))
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
