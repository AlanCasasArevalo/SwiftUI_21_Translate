
import SwiftUI

struct ContentView: View {
    
    @State private var alert = false
    @State private var date = Date()
    @State private var image = NSLocalizedString("content_view_image", comment: "Main image app")

    var body: some View {
        VStack {
            Image(self.image)

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
            Form{
                DatePicker(selection: self.$date, displayedComponents: .date) {
                    Text("content_view_date_picker")
                }
                Text("\(self.date)")
            }
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
