//
//  BookingView.swift
//  BookingHelper
//
//  Created by dyhidrogen monoxide on 2023/2/8.
//

import SwiftUI

struct BookingView: View {
    //MARK: Stored Proerties
    @State var customerNumber = 2
    
    @State var nineHPMotor = 2
    
    //MARK: Computed Properties
    var body: some View {
        VStack(spacing:20){
            
           
            Group{
                
                HStack{
                    
                    Text("Date Selection")
                        .font(.headline)
                    
                    Spacer()
                }
                
                DatePicker("Date",
                           selection: .constant(Date()),
                           displayedComponents: .date)
            }
            
            
            Group{
                
                HStack {
                    Text("Number of Customers")
                        .font(.headline)
                    
                    Spacer()
                }
           
                Stepper("\(customerNumber)",
                        value: $customerNumber,
                        in: 1...10)
            }
      
            
            VStack(spacing: 10){
                HStack{
                    Text("Optional Services")
                        .font(.headline)
                    
                    Spacer()
                }
                
                
                VStack {
                    HStack{
                        Text("Boat Charter")
                            .font(.subheadline)
                        
                        Text("9 HP Motors")
                                .font(.subheadline)
                        Spacer()
                    }
                
                
                    
                Stepper("\(nineHPMotor)",
                        value: $nineHPMotor,
                        in: 1...3)
                }
                
            }
            
           
            
            
            
        }
        .padding(.all, 20.0)
    }
}

struct BookingView_Previews: PreviewProvider {
    static var previews: some View {
        BookingView()
    }
}
