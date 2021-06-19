//
//  CatalogHome.swift
//  LearnSwiftUI
//
//  Created by Hosamane, Vinay K N on 12/06/21.
//

import SwiftUI

struct Model: Identifiable {
    var id: UUID
    let isFavorite: Bool
    let title: String
    let subTitle: String
    let lastUpdated: String
}

struct CatalogHome: View {
    @State var firstButtonSelected = false
    @State var secondButtonSelected = false
    @State var thirdButtonSelected = false
    @State var fourthButtonSelected = false
    @State var fifthButtonSelected = false
    
    var navigationBarColor = #colorLiteral(red: 0.2642571628, green: 0.3704794049, blue: 0.4591893554, alpha: 1)
    
    let models = [Model(id: UUID(), isFavorite: true, title: "Bike sales analysis & Marketing report", subTitle: "Total spent on sponsorship divided", lastUpdated: "Updated 3 months ago")]
    
    var body: some View {
        VStack {
            HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/) {
                Spacer()

                Text("Catalog")
                    .font(.title2)
                    .frame(width: 100, height: 30, alignment: .trailing)
                    .foregroundColor(.white)
                    .padding([.top, .leading], 30)
                
                Spacer()
                
                Button(action: {}, label: {
                    Image(systemName: "bell")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .foregroundColor(.white)
                })
                .padding([.top, .trailing], 30)
            }
            .frame(width: UIScreen.main.bounds.width, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .background(Color(navigationBarColor))
            .ignoresSafeArea()
            
            Spacer()
            
            List {
                Section(header: Text("Published 04")) {
                    ForEach(models) { (model) in
                        ListCell(model: model)
                        ListCell(model: model)
                        ListCell(model: model)
                        ListCell(model: model)
                    }
                }
            }
            .padding([.top], -5)
            .padding([.bottom], -20)
            
            ZStack {
                Divider()
                    .frame(width: UIScreen.main.bounds.width, height: 0.5)
                    .background(Color.black)
                    .offset(x: 0.0, y: -38.0)
                    .opacity(0.3)
                
                HStack() {
                    Button(action: {
                        // action
                        firstButtonSelected.toggle()
                        secondButtonSelected = false
                        thirdButtonSelected = false
                        fourthButtonSelected = false
                        fifthButtonSelected = false
                    }, label: {
                        VStack() {
                            Image(systemName: firstButtonSelected ? "house.fill" : "house")
                                .resizable()
                                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                .frame(width: 25, height: 25)
                            Text("Home")
                                .font(.caption)
                        }
                        .foregroundColor(.black)
                    })
                    .padding([.top], -5)
                    
                    Spacer()
                    
                    Button(action: {
                        // action
                        secondButtonSelected.toggle()
                        firstButtonSelected = false
                        thirdButtonSelected = false
                        fourthButtonSelected = false
                        fifthButtonSelected = false
                    }, label: {
                        VStack() {
                            Image(systemName: secondButtonSelected ? "largecircle.fill.circle" : "smallcircle.fill.circle")
                                .resizable()
                                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                .frame(width: 25, height: 25)
                            Text("Catalog")
                                .font(.caption)
                        }
                        .foregroundColor(.black)
                    })
                    .padding([.top], -5)
                    
                    Spacer()
                    
                    Button(action: {
                        // action
                        thirdButtonSelected.toggle()
                        
                        secondButtonSelected = false
                        firstButtonSelected = false
                        fourthButtonSelected = false
                        fifthButtonSelected = false
                    }, label: {
                        VStack() {
                            Image(systemName: thirdButtonSelected ? "folder.fill" : "folder")
                                .resizable()
                                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                .frame(width: 25, height: 25)
                            Text("Files")
                                .font(.caption)
                        }
                        .foregroundColor(.black)
                    })
                    .padding([.top], -5)
                    
                    Spacer()
                    
                    Button(action: {
                        // action
                        fifthButtonSelected.toggle()
                        
                        fourthButtonSelected = false
                        
                        secondButtonSelected = false
                        firstButtonSelected = false
                        thirdButtonSelected = false
                    }, label: {
                        VStack() {
                            Image(systemName: fifthButtonSelected ? "paperplane.fill" : "paperplane")
                                .resizable()
                                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                .frame(width: 25, height: 25)
                            Text("Notifications")
                                .font(.caption)
                        }
                        .foregroundColor(.black)
                    })
                    .padding([.top], -5)
                }
                .padding()
                .padding([.leading], 20)
                .background(Color.white)
            }
            .ignoresSafeArea()
            .padding([.bottom], /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
        }
        .ignoresSafeArea()
        .background(Color(#colorLiteral(red: 0.9372643828, green: 0.9370688796, blue: 0.9586587548, alpha: 1)))
       
    }
}

struct ListCell: View {
    var model: Model
   
    var body: some View {
        HStack(alignment: .top, spacing: 20) {
            HStack(alignment: .top) {
                Image(systemName: "star.fill")
                    .resizable()
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    .frame(width: 12, height: 12)
                
                Image(systemName: "book")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .aspectRatio(contentMode: .fill)
            }
           
            
            VStack(alignment: .leading, spacing: 10) {
                Text(model.title)
                    .fontWeight(.heavy)
                
                Text(model.subTitle)
                    .lineLimit(1)
                
                Text(model.lastUpdated)
                    .font(.footnote)
                    .foregroundColor(.gray)
                
            }
        }
        .padding([.top, .bottom], 10)
            .frame(maxWidth: .infinity)
    }

}

struct CatalogHome_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CatalogHome()
            CatalogHome()
        }
    }
}
