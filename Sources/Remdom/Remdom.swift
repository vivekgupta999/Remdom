import SwiftUI
 
@available(iOS 15.0, macOS 11.0, *)
public struct Remdom: View {
    
    public init(){}
    
    @ObservedObject var random = RandomVM()
    
    public var body: some View {
        VStack{
            TextField("Enter Number", value: $random.number, formatter: NumberFormatter())
                .padding()
                .textFieldStyle(.roundedBorder)

            Button {
                random.generateRandomNumber(num: random.number)
            } label: {
                Text("Send")
                    .padding(10)
                    .foregroundColor(.white)
                    .background(.red)
                    .cornerRadius(10)
            }
        }
 
    }
}
