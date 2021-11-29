//
//  RectangleView.swift
//  StateProperyWrapperSimpleExample
//
//  Created by Logan Snopek on 2021-11-29.
//

import SwiftUI

struct RectangleView: View {
    
    //MARK: Stored propotys
    @State var length: Double = 10
    @State var with: Double = 10
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
        
        Text("Length")
            .bold()
        
        Slider(value: $length,
               in: 0.0...100.0,
               label: {
                    Text("Opacity")
        },
               minimumValueLabel: {
                    Text("0")
        },
               maximumValueLabel: {
                    Text("100")
        })
            
            
            Text("With")
                .bold()
            
            Slider(value: $with,
                   in: 0.0...100.0,
                   label: {
                        Text("Opacity")
            },
                   minimumValueLabel: {
                        Text("0")
            },
                   maximumValueLabel: {
                        Text("100")
            })
            
            
            
            
        }
    }
}

struct RectangleView_Previews: PreviewProvider {
    static var previews: some View {
        RectangleView()
    }
}
