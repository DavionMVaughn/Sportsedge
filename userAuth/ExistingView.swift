import SwiftUI

struct ExistingView: View {
    @State private var showingPaymentAlert = false
    @State private var paymentSuccessful = false

    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.red, .orange, .yellow]),
                           startPoint: .topLeading,
                           endPoint: .bottomLeading)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Button(action: {
                    // Simulate payment process
                    paymentSuccessful = Bool.random()
                    showingPaymentAlert = true
                }) {
                    Text("Pay with Apple Pay")
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.black)
                        .cornerRadius(10)
                }
            }
        }
        .alert(isPresented: $showingPaymentAlert) {
            Alert(
                title: Text(paymentSuccessful ? "Payment Successful" : "Payment Failed"),
                message: Text(paymentSuccessful ? "Your transaction was successful" : "Your transaction could not be completed"),
                dismissButton: .default(Text("OK"))
            )
        }
    }
}

struct ExistingView_Previews: PreviewProvider {
    static var previews: some View {
        ExistingView()
    }
}
