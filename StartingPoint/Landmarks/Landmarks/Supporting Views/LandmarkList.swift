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
        LandmarkList()
    }
}
