//
//  ContentView.swift
//  StateProperyWrapperSimpleExample
//
//  Created by Logan Snopek on 2021-11-29.
//

import SwiftUI

struct CircleView: View {
    
    //MARK: Stord proprotys
    let radius: Double = 10.0
    
    
    //MARK: Computed Prorotys
    var area: Double {
        return Double.pi * radius * radius
    }
    
    //user interface
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            
            Text("Radius:")
                .bold()
            
            TextField("Radius",
                      text: .constant(""),
                      prompt: Text("e.g.:24.5"))
            
            //output
            Text("Area:")
                .bold()
            
            Text("24.5 square units")
            
            Spacer()
            
        }
        .padding()
        .navigationTitle("Circle")
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        CircleView()
    }
}
