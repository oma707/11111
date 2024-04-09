import SwiftUI
import MapKit

struct MapView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 43.2567, longitude: 76.9286),
        span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
    )

    var body: some View {
        VStack {
            Map(coordinateRegion: $region)
                .edgesIgnoringSafeArea(.all)
                .padding()
            
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }) {
                Text("Back")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            .padding()
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
