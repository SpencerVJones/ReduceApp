# ReduceApp
Simple iOS application developed as part of an exercise to practice working with multiple view controllers, text fields, delegates, and segues in Swift. 

## Features:
- Seamless keyboard navigation between text fields.
- Validation to ensure all text fields are filled before proceeding.
- Data passing between view controllers using segues.
- Implementation of the reduce method to concatenate strings.
- Clean and user-friendly interface.

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


## Usage
1. Clone the repository to your local machine.
2. Launch the app on an iOS device or simulator.
3. Input data into the six text fields on the main screen.
4. Tap the "Done" button to proceed.
5. View the entered data in the SecondViewController.
6. Tap the "Reduce" button to combine the data into a single string.
7. View the combined string back in the ViewController.


## Technologies Used:
- **Swift**: Primary programming language for iOS app development.
- **UIKit**: Framework for building user interfaces in iOS apps.
- **Xcode**: Integrated development environment (IDE) used for iOS app development.


## Contributing
Contributions are welcome! 

### You can contribute by:
-  Reporting bugs
-  Suggesting new features
-  Submitting pull requests to improve the codebase
