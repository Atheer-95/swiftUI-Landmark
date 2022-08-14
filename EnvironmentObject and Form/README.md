# swiftUI-Landmark


# @EnvironmentObject

- create object that will be stored in the environment and can be accessed by all views.
- used if we have a data that will be shared across a many parts of the app, share data between views.
- the object type most be conformed to **ObservableObject Protocol.**

# **`@StateObject`**

is used to store new instances of reference type data that conforms to the **`ObservableObject`**
 protocol

### what is the difference between Form and List ?

**List:** A container that presents rows of data arranged in a single column, optionally providing the ability to select one or more members.

**Form:** A container for grouping controls used for data entry, such as in settings or inspectors.
