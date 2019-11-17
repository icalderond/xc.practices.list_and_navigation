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
        List(landmarkData/*,id: \.id /* Only can remove this if class contain Identifiable */ */) { landmark in
            LandmarkRow(landMark: landmark)
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
