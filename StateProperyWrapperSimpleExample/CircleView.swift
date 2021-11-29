//
//  ContentView.swift
//  StateProperyWrapperSimpleExample
//
//  Created by Logan Snopek on 2021-11-29.
//

import SwiftUI

struct CircleView: View {
    
    //MARK: Stord proprotys
    //@state is a proproty rapper radius is still a propoty The proproy raper tells swift UI we want changes to it
    @State var radius: Double = 10.0
    
    
    //MARK: Computed Prorotys
    var area: Double {
        return Double.pi * radius * radius
    }
    
    //user interface
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            
            Text("Radius")
                .bold()
            
            Slider(value: $radius,
                   in: 0.0...100.0,
                   label: {
                        Text("Radius")
            },
                   minimumValueLabel: {
                        Text("0")
            },
                   maximumValueLabel: {
                        Text("100")
            })
            //output
            Text("Area:")
                .bold()
            
            Text("\(area) square units")
            
            Spacer()
            
        }
        .padding()
        .navigationTitle("Circle")
       
            }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
        CircleView()
        }
    }
}
