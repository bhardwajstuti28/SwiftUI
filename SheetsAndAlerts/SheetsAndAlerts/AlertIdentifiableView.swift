//
//  AlertIdentifiableView.swift
//  SheetsAndAlerts
//
//  Created by Stuti Bhardwaj on 30/01/26.
//

import SwiftUI

struct Product: Identifiable {
    let id = UUID()
    let name: String
    let price: Double
}

struct AlertIdentifiableView: View {

    @State private var selectedProduct: Product?
    @State private var showAlert = false

    let products = [
        Product(name: "Macbook air pro", price: 1899),
        Product(name: "iPhone", price: 2000),
        Product(name: "iPad", price: 1200),
        Product(name: "Apple Watch", price: 500)
    ]

    var body: some View {
        NavigationStack {
            List(products) { product in
                Button {
                    selectedProduct = product
                } label: {
                    HStack {
                        Text(product.name)
                        Spacer()
                        Text("$\(Int(product.price))")
                            .foregroundColor(.gray)
                    }
                }
            }
            .navigationTitle("Product List")
            
        }
        .alert(
            "Product selected",isPresented: $showAlert,presenting: selectedProduct){
                product in
                Button("OK",role : .cancel){}
            }
        message : { product in
            Text("You selected \(product.name).\nPrice:$\(Int(product.price))")
        }
    }
}

#Preview {
    AlertIdentifiableView()
}
