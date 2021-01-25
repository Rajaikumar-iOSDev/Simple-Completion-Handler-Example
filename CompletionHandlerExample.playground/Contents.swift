//: A UIKit based Playground for presenting user interface

import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    let label = UILabel()
    
    
    
    override func loadView() {
        setupLabel()
        
        yourFunctionWith(arg: true, completion: { (success) -> Void in
            print("Second line of code executed")
            if success { // Use the value send from the other end
                label.text = "True"
            } else {
                label.text = "False"
            }
        })
        
    }
    
    func setupLabel(){
        
        let view = UIView()
        view.backgroundColor = .white
        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
        
        label.textColor = .black
        
        view.addSubview(label)
        self.view = view
    }
    
    
    func yourFunctionWith(arg: Bool, completion: (Bool) -> ()) {
        print("First line of code executed")
        // Perform the operations and get the  boolean result
        // Send the result to the other end
        completion(arg)
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
