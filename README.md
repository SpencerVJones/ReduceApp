# ReduceApp
Simple iOS application developed as part of an exercise to practice working with multiple view controllers, text fields, delegates, and segues in Swift. 

## The app consists of two view controllers:

### First View Controller:

- Includes six text fields where users can input text.
- Implements the UITextFieldDelegate protocol to manage keyboard navigation and dismissal.
- Provides a button to segue to the Second View Controller.
- Ensures that all text fields must be filled before allowing segue to the Second View Controller.

### Second View Controller:
- Displays the text entered in the text fields of the First View Controller using UILabels.
- Offers two buttons:
- Cancel: Returns to the First View Controller without any action.
- Reduce: Reduces the array of strings from the First View Controller into a single string using the reduce method, sends it back to the First View Controller, and dismisses itself.
- Utilizes segues and passing data between view controllers.

## Features:
- Seamless keyboard navigation between text fields.
- Validation to ensure all text fields are filled before proceeding.
- Data passing between view controllers using segues.
- Implementation of the reduce method to concatenate strings.
- Clean and user-friendly interface.

## Technologies Used:
- Swift
- UIKit framework
- Xcode IDE

## Getting Started:
- Clone the repository to your local machine.
- Open the project in Xcode.
- Build and run the app on the iOS Simulator or a physical device.

## Contributing:
- Contributions are welcome! If you find any bugs or have suggestions for improvement, please open an issue or submit a pull request.
