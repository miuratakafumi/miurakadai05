//
//  ViewController.swift
//  miurakadai05
//
//  Created by 三浦貴文 on 2023/05/15.
//

import UIKit

class ViewController: UIViewController {

    // テキストフィールドを配置
    @IBOutlet weak private var textField1: UITextField!
    @IBOutlet weak private var textField2: UITextField!
 
    // 計算結果を表示するラベルを配置
    @IBOutlet weak private var divisionLabel: UILabel!
    
    // 計算ボタンを配置＆タップ時の処理
    @IBAction  private func calculationButton(_ sender: Any) {
        
        // テキストフィールド１が空文字の場合のエラーメッセージ
        guard let text1 = textField1.text, !text1.isEmpty, let signedNumber1 = Float(text1) else {
            showAlertWith(message: "割られる数を入力して下さい。")
            return
        }
        
        // テキストフィールド２が空文字の場合のエラーメッセージ
        guard let text2 = textField2.text, !text2.isEmpty else {
            showAlertWith(message: "割る数を入力して下さい。")
            return
        }
        
        // テキストフィールド２が「０」の場合のエラーメッセージ
        guard let signedNumber2 = Float(text2), signedNumber2 != 0 else {
            showAlertWith(message: "割る数には0を入力しないでください。")
            return
        }
        
        // 割り算を実行
        let divisionNumber = signedNumber1 / signedNumber2
        
        // 割り算の計算結果を表示
        divisionLabel.text = String(divisionNumber)
        }
    
    // エラーメッセージメソッド
        private func showAlertWith(message: String) {
            let alert = UIAlertController(title: "課題５", message: message, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
        }
    }

