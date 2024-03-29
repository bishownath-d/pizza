//
//  MenuDetailView.swift
//  Pizza
//
//  Created by Steven Lipton on 9/2/19.
//  Copyright © 2019 Steven Lipton. All rights reserved.
//

import SwiftUI
///A `View`for entering in an order. Takes basic information about the order from `menuItem`
struct MenuDetailView: View {
    let sizes: [Size] = [.small, .medium, .large]
    @EnvironmentObject var settings:UserPreferences
    @ObservedObject var orderModel: OrderModel
    @State var isOrdered: Bool = false
    @State var quantity: Int = 1
    
    var menuItem:MenuItem
    var formattedPrice:String{
        String(format:"%3.2f",menuItem.price * Double(quantity) * settings.size.rawValue)
    }
    func addItem(){
        //        orderModel.add(menuID: menuItem.id)
        isOrdered = true
    }
    
    
    
    var body: some View {
        VStack {
            PageTitleView(title: menuItem.name)
            SelectedImageView(image: "\(menuItem.id)_250w")
                .padding(2)
                .layoutPriority(3)
            
//            ScrollView{
                Text(menuItem.description)
                    .lineLimit(5)
                    .padding()
                    .layoutPriority(3)
//            }
            
            Spacer()
            Picker(selection: $settings.size, label: Text("Pizza Size")) {
                ForEach(sizes, id: \.self){ size in
                    Text(size.formatted()).tag(size)
                }
            }.pickerStyle(.segmented)
            Stepper(value: $quantity, in: 1...10, label: {
                Text("Quantity: \(quantity)")
            })
            .padding()
            HStack{
                Text("Order:  \(formattedPrice)")
                    .font(.headline)
                Spacer()
                Text("Order total: " + orderModel.formattedTotal )
                    .font(.headline)
            }
            .padding()
            HStack{
                Spacer()
                Button(action: addItem) {
                    Text("Add to order")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding()
                        .background(Color("green2"))
                        .foregroundColor(Color.white)
                        .cornerRadius(5)
                }
                .sheet(isPresented: $isOrdered) {
                    ConfirmView(orderModel: orderModel, menuItem: menuItem.id, isPresented: $isOrdered,quantity: $quantity,size: $settings.size)
                }
                Spacer()
            }
            .padding(.top)
            Spacer()
        }
        
    }
}

struct MenuDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MenuDetailView(orderModel: OrderModel(), menuItem: testMenuItem)
            .environmentObject(UserPreferences())
    }
}
