//
//  ContentView.swift
//  Ch13
//
//  Created by NAZISH ZOHAIB on 30/03/2021.
//

import SwiftUI


struct ContentView: View {
    
    // Properties
    var array :[String] = ["apple","cherry","star"]
    @State var credits: Int = 1000
    @State var imageOne = "apple"
    @State var imageTwo = "apple"
    @State var imageThree = "apple"

    var body: some View {
        
        VStack{
            Spacer()
            Text("SwiftUI Slots!")
                .font(.largeTitle)
                .fontWeight(.medium)
            Spacer()
            
            HStack{
                
                Text("Credits :")
                Text(String(credits))
                }
            Spacer()
            HStack{
                 

                Image(imageOne).resizable().aspectRatio(contentMode: .fit)
                Image(imageTwo).resizable().aspectRatio(contentMode: .fit)
                Image(imageThree).resizable().aspectRatio(contentMode: .fit)
                
            }
            Spacer()
            Button("Spin") {
                // Get random elements from array.randomElement() and set to images state properties
               
                imageOne = array.randomElement()!
            
                imageTwo = array.randomElement()!
              
                imageThree = array.randomElement()!

                
                if (imageOne == imageTwo) && (imageOne == imageThree) && (imageTwo == imageThree){
                    credits += 30
                }else{
                    credits -= 5
                }
            }
            .padding(/*@START_MENU_TOKEN@*/.horizontal/*@END_MENU_TOKEN@*/)
            .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
            
            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.red/*@END_MENU_TOKEN@*/)
            .cornerRadius(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
