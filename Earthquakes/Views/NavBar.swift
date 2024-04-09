import SwiftUI

struct NavigationBarView: View {
    @State private var selection = 0

    var body: some View {
        VStack {
            Picker(selection: $selection, label: Text("Tab")) {
                Text("Earthquakes").tag(0)
                Text("Stations").tag(1)
            }
            .pickerStyle(SegmentedPickerStyle())

            if selection == 0 {
                Quakes()
            } else {
                ContentView()
            }
        }
    }
}

struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
    }
}
