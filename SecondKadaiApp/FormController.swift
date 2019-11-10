import UIKit

class FormController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var txtInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //キーボードを閉じるためのデリゲート設定
        self.txtInput.delegate = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let resultController:ResultController = segue.destination as! ResultController
        //テキストが未入力（nil）のときの正しい処理方法？（未入力でも空文字が入っているのかエラーにはならない？）
        resultController.resultText = txtInput.text!
    }
    
//    Xcode(11.2)だとunwindがoverrideで動かない様子
//    @IBAction override func unwind(for unwindSegue: UIStoryboardSegue, towards subsequentVC: UIViewController) {
//
//    }
    
    //戻る機能
    @IBAction func unwindPrev(for unwindSegue: UIStoryboardSegue, towards subsequentVC: UIViewController) {
    }
    
    //text field以外をタップでキーボードを閉じる
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if (self.txtInput.isFirstResponder) {
            self.txtInput.resignFirstResponder()
        }
    }
    
    //キーボードのreturnでキーボードを閉じる
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

