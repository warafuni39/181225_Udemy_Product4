import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    button.backgroundColor = UIColor(red:91/255, green:190/255, blue:239/255, alpha:1.0)
    button.layer.cornerRadius = 10.0
        
    }


}

