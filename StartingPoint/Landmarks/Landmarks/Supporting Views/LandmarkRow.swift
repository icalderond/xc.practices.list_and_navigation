//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Israel Calderon de la Cruz on 11/17/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import SwiftUI

struct LandmarkRow: View {
    var landMark:Landmark
    
    var body: some View {
        HStack{
            landMark.image
                .resizable()
                .frame(width:50,height:50)
            
            Text(landMark.name)
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        
        Group{
            LandmarkRow(landMark: landmarkData[0])
            LandmarkRow(landMark: landmarkData[1])
            LandmarkRow(landMark: landmarkData[2])
            LandmarkRow(landMark: landmarkData[3])
            LandmarkRow(landMark: landmarkData[4])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
