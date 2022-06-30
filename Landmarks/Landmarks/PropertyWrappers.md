#  Property Wrappers

###  @State 
lets us manipulate small amounts of value type data locally to a view. This owns its data.


## ObservableObject protocol

###  @ObservedObject 
refers to an instance of an external class that conforms to the **ObservableObject** protocol. This does not own its data.

### @Published 
is attached to properties inside an **ObservableObject**, and tells SwiftUI that it should refresh any views that use this property when it is changed. This owns its data.
    

## @Environment
 lets us read data from the system, such as color scheme, accessibility options, and trait collections, but you can add your own keys here if you want. This does not own its data

## @EnvironmentObject 
reads a shared object that we placed into the environment. This does not own its data


## @AppStorage 
reads and writes values from UserDefaults.



reference : 
https://developer.apple.com/documentation/swiftui/environmentvalues
https://www.hackingwithswift.com/quick-start/swiftui/all-swiftui-property-wrappers-explained-and-compared

