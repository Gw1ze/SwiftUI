//
//  ContentView.swift
//  DesignedMenu
//
//  Created by Федот Михайлов on 12.02.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State var index: Int = 0
    @State var show = true
    var body: some View {
        ZStack{
            HStack{
                VStack(alignment: .leading, spacing: 12){
                    Image("IMG_0529")
                        .resizable()
                        .frame(width: 150, height: 150)
                        .clipShape(Circle())
                    Text("Fedot")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.top, 10)
                    Text("Mikhailov")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    Button(action: {
                        self.index = 0
                        withAnimation{
                            self.show.toggle()
                        }
                    }){
                        HStack(spacing: 25){
                            Image(systemName: "pencil")
                                .foregroundColor(self.index == 0 ? Color.init(#colorLiteral(red: 0.9822551608, green: 0.5389614701, blue: 0.4562954307, alpha: 1)) : Color.white)
                            Text("Drawing")
                                .foregroundColor(self.index == 0 ? Color.init(#colorLiteral(red: 0.9822551608, green: 0.5389614701, blue: 0.4562954307, alpha: 1)) : Color.white)
                        }.padding(.vertical, 10)
                        .padding(.horizontal)
                        .background(self.index == 0 ? Color.init(#colorLiteral(red: 0.9822551608, green: 0.5389614701, blue: 0.4562954307, alpha: 1)).opacity(0.2): Color.clear)
                        .cornerRadius(10)
                    }.padding(.top, 25)
                    Button(action: {
                        self.index = 1
                        withAnimation{
                            self.show.toggle()
                        }
                    }){
                        HStack(spacing: 25){
                            Image(systemName: "person")
                                .foregroundColor(self.index == 1 ? Color.init(#colorLiteral(red: 0.9822551608, green: 0.5389614701, blue: 0.4562954307, alpha: 1)) : Color.white)
                            Text("Personal")
                                .foregroundColor(self.index == 1 ? Color.init(#colorLiteral(red: 0.9822551608, green: 0.5389614701, blue: 0.4562954307, alpha: 1)) : Color.white)
                        }.padding(.vertical, 10)
                        .padding(.horizontal)
                        .background(self.index == 1 ? Color.init(#colorLiteral(red: 0.9822551608, green: 0.5389614701, blue: 0.4562954307, alpha: 1)).opacity(0.2): Color.clear)
                        .cornerRadius(10)
                    }
                    Button(action: {
                        self.index = 2
                        withAnimation{
                            self.show.toggle()
                        }
                    }){
                        HStack(spacing: 25){
                            Image(systemName: "heart")
                                .foregroundColor(self.index == 2 ? Color.init(#colorLiteral(red: 0.9822551608, green: 0.5389614701, blue: 0.4562954307, alpha: 1)) : Color.white)
                            Text("Favourite")
                                .foregroundColor(self.index == 2 ? Color.init(#colorLiteral(red: 0.9822551608, green: 0.5389614701, blue: 0.4562954307, alpha: 1)) : Color.white)
                        }.padding(.vertical, 10)
                        .padding(.horizontal)
                        .background(self.index == 2 ? Color.init(#colorLiteral(red: 0.9822551608, green: 0.5389614701, blue: 0.4562954307, alpha: 1)).opacity(0.2): Color.clear)
                        .cornerRadius(10)
                    }
                    
                    Button(action: {
                        self.index = 3
                        withAnimation{
                            self.show.toggle()
                        }
                    }){
                        HStack(spacing: 25){
                            Image(systemName: "cart")
                                .foregroundColor(self.index == 3 ? Color.init(#colorLiteral(red: 0.9822551608, green: 0.5389614701, blue: 0.4562954307, alpha: 1)) : Color.white)
                            Text("Cart")
                                .foregroundColor(self.index == 3 ? Color.init(#colorLiteral(red: 0.9822551608, green: 0.5389614701, blue: 0.4562954307, alpha: 1)) : Color.white)
                        }.padding(.vertical, 10)
                        .padding(.horizontal)
                        .background(self.index == 3 ? Color.init(#colorLiteral(red: 0.9822551608, green: 0.5389614701, blue: 0.4562954307, alpha: 1)).opacity(0.2): Color.clear)
                        .cornerRadius(10)
                    }
                    
                    Divider()
                        .frame(width: 150, height: 1)
                        .background(Color.white)
                        .padding(.vertical, 30)
                    
                    Button(action:{
                        
                    }){
                        HStack{
                            Image(systemName: "clear")
                                .foregroundColor(.white)
                            Text("Out")
                                .foregroundColor(.white)
                        }.padding(.vertical, 10)
                        .padding(.horizontal)
                    }
                    Spacer(minLength: 0)
                }.padding(.top, 25)
                .padding(.horizontal, 20)
                Spacer(minLength: 0)
            }.padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.bottom)
            VStack(spacing: 0){
                HStack(spacing: 15){
                    Button(action:{
                        withAnimation{
                            self.show.toggle()
                        }
                    }){
                        Image(systemName:self.show ? "xmark.seal" : "line.horizontal.3")
                            .resizable()
                            .frame(width: self.show ? 18: 22, height: 18)
                            .foregroundColor(Color.black.opacity(0.4))
                    }
                    Text(self.index == 0 ? "Drawing": (self.index == 1 ? "Personal": (self.index == 2 ? "Favourite": "Cart")))
                        .font(.title)
                        .foregroundColor(Color.black.opacity(0.6))
                    Spacer(minLength: 0)
                }
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                .padding()
                GeometryReader { _ in
                    VStack{
                        Spacer()
                        HStack{
                            Spacer()
                        if self.index == 0{
                            Pensil()
                        }
                        else if self.index == 1{
                            Personal()
                        }
                        else if self.index == 2{
                            Favourite()
                        } else{
                            Cart()
                        }
                            Spacer()
                        }
                        Spacer()
                    }
                }
            }.background(Color.white)
            .cornerRadius(self.show ? 30: 0)
            .scaleEffect(self.show ? 0.9 : 1)
            .offset(x: self.show ? UIScreen.main.bounds.width / 2 - 45: 0, y: self.show ? 15: 0)
            .rotationEffect(.init(degrees: self.show ? 2: 0))
            .onTapGesture{
                withAnimation{
                    show.toggle()}
            }
        }.background(Color.init(#colorLiteral(red: 0.1237548068, green: 0.0992366448, blue: 0.1947145462, alpha: 1))).edgesIgnoringSafeArea(.all)
         .edgesIgnoringSafeArea(.all)
    }
}

struct Pensil: View{
    var body: some View{
        VStack{
            Text("Drawing")
        }
    }
}
struct Cart: View{
    var body: some View{
        VStack{
            Text("Cart")
        }
    }
}
struct Personal: View{
    var body: some View{
        VStack{
            Text("Personal")
        }
    }
}
struct Favourite: View{
    var body: some View{
        VStack{
            Text("Favourite")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
