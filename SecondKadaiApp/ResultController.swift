import UIKit

class ResultController: UIViewController {
    
    @IBOutlet var lblResult: UILabel!
    var resultText:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblResult.text = "こんにちは、\(resultText)さん"
    }

}
