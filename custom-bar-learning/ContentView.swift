//
//  ContentView.swift
//  custom-bar-learning
//
//  Created by Динмуханбет Айжарыков on 09.08.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var seleceted = 0
    var body: some View {
        VStack {
            Spacer()
            ZStack {
                HStack {
                    Button (action: {
                        self.seleceted = 0
                        
                    }) {
                        Image(systemName: "list.bullet")
                    }.foregroundColor(self.seleceted == 0 ? .black : .gray)
                    
                    Spacer(minLength: 12)
                    
                    Button(action: {
                        self.seleceted = 1
                    }) {
                        Image(systemName: "magnifyingglass")
                    }.foregroundColor(self.seleceted == 1 ? .black : .gray)
                    
                    Spacer().frame(width: 120)
                    
                    Button(action: {
                        self.seleceted = 2
                    }) {
                        Image(systemName: "person")
                    }.foregroundColor(self.seleceted == 2 ? .black : .gray)
                    
                    Spacer(minLength: 12)
                    Button(action: {
                        self.seleceted = 3
                    }) {
                        Image(systemName: "filemenu.and.selection")
                    }.foregroundColor(self.seleceted == 3 ? .black : .gray)
                    
                }.padding().padding(.horizontal, 22).background(CurvedShape())
                Button(action: {
                    //
                }) {
                    Image(systemName: "heart").padding(18)
                }.background(Color.yellow).clipShape(Circle())
                    .offset(y: -32).shadow(radius: 5).foregroundColor(.black)
            }
           
        }.background(Color("AccentColor").edgesIgnoringSafeArea(.top))
    }
}

#Preview {
    ContentView()
}



struct CurvedShape: View {
    var body: some View {
        Path { path in
            path.move(to: CGPoint(x: 0, y: 0))
            path.addLine(to: CGPoint(x: UIScreen.main.bounds.width, y: 0))
            path.addLine(to: CGPoint(x: UIScreen.main.bounds.width, y: 55))
            
            path.addArc(center: CGPoint(x: UIScreen.main.bounds.width / 2, y: 55), radius: 30, startAngle: .zero, endAngle: .init(degrees: 180), clockwise: true)
            
            path.addLine(to: CGPoint(x: 0, y: 55))
        }.fill(Color.white).rotationEffect(.init(degrees: 180))
    }
}
