# Puppy Paradise
This is an example app cloned from [PuppyParadise](https://github.com/alecdoconnor/PuppyParadise) based on article [Getting Started with Reusable Frameworks for iOS Development](https://medium.com/flawless-app-stories/getting-started-with-reusable-frameworks-for-ios-development-f00d74827d11) written by [Alec O'Connor](https://medium.com/@alecoconnor).

This app will reuse a framework created to send a modal status inside page. The framework is located [right here](https://github.com/gabrielhsp/modal-status-ios).

To consume the framework, we need to import the project file from xcode inside Embedded Binaries of the current project.

After import the project inside, we go to **Embedded Binaries** again and add our `.framework` file inside our project. This will create a reference of our framework inside our current project.

Then, we just need to go inside our `ViewController` and consume the framework. An example of Modal Status iOS framework use it's like this:

**ViewController.swift**

```swift
import UIKit

// Import the framework inside the ViewController
import GHModalStatus

class ViewController: UIViewController {
    // This is the action of our Save button inside our UI View Controller
    // When the user tap inside the button, we invoke our method that consumes our framework
    @IBAction func saveTapped(_ sender: Any) {
        presentModalStatusView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // This method creates an instance of GHModalStatus, our Modal Status iOS Framework
    func presentModalStatusView() {
        let modalView = GHModalStatusView(frame: self.view.bounds)
        let downloadImage = UIImage(named: "download") ?? UIImage()
     
        modalView.set(image: downloadImage)
        modalView.set(headline: "Testing")
        modalView.set(subheading: "A simple test with two lines")
        
        view.addSubview(modalView)
    }
}


```
