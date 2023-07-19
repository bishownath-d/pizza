//
//  ConfirmView.swift
//  PizzaPizza
//
//  Created by Bishownath Dhakal on 2023-05-23.
//

import SwiftUI

struct ConfirmView: View {
    @ObservedObject var orderModel: OrderModel
    var menuItem: Int
    @Binding var isPresented: Bool
    @Binding var quantity: Int
    @Binding var size: Size
    @State var comments: String = ""
    //name is the computed variable
    var name: String{
        orderModel.menu(menuItem)?.name ?? ""
    }
    
    func addItem() {
        orderModel.add(menuID: menuItem,size: size,quantity: quantity, comments: comments)
        isPresented = false
    }
    var body: some View {
        VStack {
            Image("\(menuItem)_250w")
                .resizable()
                .frame(width: 350, height: 350)
                .cornerRadius(10)
                .shadow(color: Color.black, radius: 10,x: 0,y:10)
                .onTapGesture(count: 2){
                    isPresented = false
                }
            Text("You have confirmed \(quantity) \(size.formatted()) \(orderModel.menu(menuItem).name) pizza")
                .padding(.top,20)
                .font(Font.headline)
            //                .fontDesign(Font.Design.serif)
            TextField("Add your comments here...", text: $comments)
                .padding(30)
                .background(Color("green2"))
                .foregroundColor(Color.white)
                .padding([.leading,.trailing],20)
                .padding(30)
            Spacer()
            Button("Confirm") {
                addItem()
            }
            .padding(20)
            .background(Color("green2"))
            .foregroundColor(Color("green1"))
            .cornerRadius(10)
            
        }
    }
}

struct ConfirmView_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmView(orderModel: OrderModel(),menuItem: 0,isPresented: .constant(true),quantity: .constant(1),size: .constant(.small))
    }
}
