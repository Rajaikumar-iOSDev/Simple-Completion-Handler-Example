//: A UIKit based Playground for presenting user interface

import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    let label = UILabel()
    
    
    
    override func loadView() {
        setupLabel()
        
        method(arg: true, completion: { (success) -> Void in
            print("Second line of code executed")
            if success { // this will be equal to whatever value is set in this method call
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
    
    
    func method(arg: Bool, completion: (Bool) -> ()) {
        print("First line of code executed")
        // do stuff here to determine what you want to "send back".
        // we are just sending the Boolean value that was sent in "back"
        completion(arg)
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
