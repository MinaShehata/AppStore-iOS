//
//  ContentView.swift
//  AppStore-iOS
//
//  Created by Mina Shehata on 30/05/25.
//

import SwiftUI
import AppStore

struct ContentView: View {
    
    let account1 = BankAccount(balance: 100)
    let account2 = BankAccount(balance: 50)
    
    var body: some View {
        NavigationStack {
            Button {
                Task {
                    account1.transfer(30, to: account2)
                    print("Task 1 - account 1 \(account1.getBalance()), account 2 \(account2.getBalance())")
                }
                //
                Task {
                    account1.transfer(50, to: account2)
                    print("Task 2 - account 1 \(account1.getBalance()), account 2 \(account2.getBalance())")
                }
            } label: {
                Text("⊕")
                    .font(.title)
            }

        }
    }
}

#Preview {
    ContentView()
}
