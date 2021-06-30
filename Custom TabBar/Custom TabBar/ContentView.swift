//
//  ContentView.swift
//  Custom TabBar
//
//  Created by rutik maraskolhe on 30/06/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var index = 0
    var body: some View {
       
        VStack {
            
            ZStack{
                
                // changeing views depends upon index..
                if self.index == 0 {
                    
                    //view-1
                    Color.red.edgesIgnoringSafeArea(.top)
                }
                else if self.index == 1 {
                    
                    //view-2
                    
                    Color.blue.edgesIgnoringSafeArea(.top)
                }
                else if self.index == 2 {
                    
                    //view-3
                    Color.green.edgesIgnoringSafeArea(.top)
                }
                else {
                    //view-4
                    Color.yellow.edgesIgnoringSafeArea(.top)
                }
            }
            
            
            //tab bar..

                
            TabBar(index: $index)
       
            
        }
        .animation(.spring())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct TabBar: View{
    
    @Binding var index: Int
    
    var body: some View{
        HStack(spacing:15){
            
            HStack{
                Image(systemName: "house.fill").resizable().frame(width: 35, height: 30)
                Text(self.index == 0 ? "Home" : "").fontWeight(.light).font(.system(size:14))
                
            }
            .padding(15)
            .background(self.index == 0 ? Color.red.opacity(0.5): Color.clear)
            .clipShape(Capsule())
            .onTapGesture {
                self.index = 0
            }
            
            
            
            HStack{
                Image(systemName: "person.fill").resizable().frame(width: 30, height: 30)
                Text(self.index == 1 ? "Personal" : "").fontWeight(.light).font(.system(size:14))
            }
            .padding(15)
            .background(self.index == 1 ? Color.blue.opacity(0.5): Color.clear)
            .clipShape(Capsule())
            .onTapGesture {
                self.index = 1
            }
            
            HStack{
                Image(systemName: "bell.fill").resizable().frame(width: 30, height: 32)
                Text(self.index == 2 ? "Notifications" : "").fontWeight(.light).font(.system(size:14))
            }
            .padding(15)
            .background(self.index == 2 ? Color.green.opacity(0.5): Color.clear)
            .clipShape(Capsule())
            .onTapGesture {
                self.index = 2
            }
            
            HStack{
                Image(systemName: "tv.fill").resizable().frame(width: 35, height: 30)
                Text(self.index == 3 ? "Watch" : "").fontWeight(.light).font(.system(size:14))
            }
            .padding(15)
            .background(self.index == 3 ? Color.yellow.opacity(0.5): Color.clear)
            .clipShape(Capsule())
            .onTapGesture {
                self.index = 3
            }
            
        }
        .padding(.top, 8)
        .frame(width: UIScreen.main.bounds.width)
        .background(Color.white)
        .animation(.default)
    }
    
}
