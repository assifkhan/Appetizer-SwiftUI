
# SwiftUI List and Detail Screen Example

This is a SwiftUI application that demonstrates how to build a simple list and detail screen interface using the SwiftUI framework. The app displays a list of items, and when the user taps on an item, it navigates to a detailed view to show more information about that item.

## Features

- Display a list of items with SwiftUI's `List` and `ForEach` views.
- Implement navigation to a detail screen when tapping on a list item using `NavigationLink`.
- Show item details in the detail screen, including an image, name, price, carbs, calories, protein, and description.
- Asynchronously load images from the provided imageURL using `URLSession` and `async/await`.
- Properly handle potential errors during image loading.
- Use SwiftUI's `NavigationView` to create a navigation hierarchy.

## Technologies Used

- SwiftUI: SwiftUI is Apple's modern UI framework that allows developers to build user interfaces declaratively using Swift code.
- Swift: The primary programming language used to build the application.
- URLSession: The foundation framework used to handle network requests and fetch image data from the provided URLs.

## Getting Started

To run the app locally on your machine, follow these steps:

1. Clone the repository to your local machine using Git.
2. Open the project in Xcode.
3. Build and run the app on the iOS simulator or a physical device.
   
# Screenshots
<table>
    <th>Dark Mode</th>
    <th>Light Mode</th>
  </thead>
  <tbody>
    <tr>
      <td>
        <img src="https://github.com/assifkhan/Appetizer-SwiftUI/assets/61091124/44681029-f820-4c0d-b3d5-de01f602a9bf">
      </td>
      <td>
        <img src="https://github.com/assifkhan/Appetizer-SwiftUI/assets/61091124/4ca197d6-6993-4def-984c-5e73d81ed7f2">
      </td>
    </tr>
  </tbody>
     <tr>
      <td>
        <img src="https://github.com/assifkhan/Appetizer-SwiftUI/assets/61091124/b32f0791-6e1f-42a1-be93-ecd11cb3a630">
      </td>
      <td>
        <img src="https://github.com/assifkhan/Appetizer-SwiftUI/assets/61091124/f18589da-81da-4cd8-a46a-9a33dbf9d6c5">
      </td>
    </tr>
</table>

## Contributions

Contributions are welcome! If you find any issues or have suggestions for improvements, feel free to open an issue or submit a pull request.
