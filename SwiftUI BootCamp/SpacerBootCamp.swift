//
//  SpacerBootCamp.swift
//  SwiftUI BootCamp
//
//  Created by Prem Kumar Gundu on 6/17/26.
//

import SwiftUI

struct SpacerBootCamp: View{
    var body: some View{
        VStack(spacing: 50){
            HStack(spacing: 20){
                Spacer()
                    .frame(height: 20)
                    .background(Color.gray)
                Text("HIiii")
                    .padding()
                    .background{
                        Color.blue
                    }
                Spacer().frame(height: 20).background(Color.gray)
                Text("HIiii")
                    .padding()
                    .background{
                        Color.red
                    }
                Spacer()
                    .frame(height: 20)
                    .background(Color.gray)
            }
        
        
            Spacer()
                .frame(width: 20)
                .background(Color.gray)
            
            Text("HIiii")
                .padding()
                .background{
                    Color.blue
                }
            
            Spacer()
                .frame(width: 20)
                .background(Color.gray)
            
            Text("HIiii")
                .padding()
                .background{
                    Color.red
                }
            
            Spacer()
                .frame(width: 20)
                .background(Color.gray)
            
            HStack(spacing: 20){
                Spacer()
                    .frame(height: 20)
                    .background(Color.gray)
                
                Text("HIiii")
                    .padding()
                    .background{
                        Color.blue
                    }
                
                Spacer()
                    .frame(height: 20)
                    .background(Color.gray)
                
                Text("HIiii")
                    .padding()
                    .background{
                        Color.red
                    }
                
                Spacer()
                    .frame(height: 20)
                    .background(Color.gray)
            }
        }
        
    }
}

#Preview{
    SpacerBootCamp()
}
