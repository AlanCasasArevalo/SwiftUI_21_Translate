
import SwiftUI

struct ContentView: View {
    
    @State private var alert = false
    
    var body: some View {
        VStack {
            Text("title")
                .font(.system(.largeTitle, design: .rounded))
            
            Button(action: {
                self.alert.toggle()
            }) {
                Text("content_view_button")
            }
            .alert(isPresented: self.$alert) { () -> Alert in
                Alert(title: Text("content_view_alert_title"), message: Text("content_view_alert_message"), dismissButton:
                    .default(Text("content_view_alert_dismiss_button"))
                )
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
