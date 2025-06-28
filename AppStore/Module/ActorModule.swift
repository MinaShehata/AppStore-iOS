//
//  ActorModule.swift
//  AppStore
//
//  Created by Mina Shehata on 22/06/25.
//

import Foundation

// class Is not thread save they are not sendable.
public class BankAccountClass {
    
    // MARK: Properities...
    private(set) var balance: Double = 0
    
    
    // MARK: Init
    public init(balance: Double) {
        self.balance = balance
    }
    
    // MARK: Methods
    public func deposit(amount: Double) {
        balance += amount
    }
    public func transfer(_ amount: Double, to otherAccount: BankAccountClass) {
        guard balance >= amount else {
            print("Insuffecient balance")
            return
        }
        
        balance = balance - amount
        otherAccount.deposit(amount: amount)
    }
    
    public func getBalance() -> Double {
        return balance
    }
    
}


public actor BankAccountActor {
    
    // MARK: Properities...
    private(set) var balance: Double
    
    
    // MARK: Init
    public init(balance: Double) {
        self.balance = balance
    }
    
    // MARK: Methods
    public func deposit(amount: Double) {
        balance += amount
    }
    public func transfer(_ amount: Double, to otherAccount: BankAccountActor) async {
        guard balance >= amount else {
            print("Insuffecient balance")
            return
        }
        
        balance = balance - amount
        await otherAccount.deposit(amount: amount)
    }
    
    public func getBalance() -> Double {
        return balance
    }
    
}
