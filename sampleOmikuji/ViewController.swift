//
//  ViewController.swift
//  sampleOmikuji
//
//  Created by Eriko Ichinohe on 2017/08/31.
//  Copyright © 2017年 Eriko Ichinohe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //占いの結果を配列で用意（メンバ変数）
    var omikuji = ["大吉","吉","中吉","小吉","末吉","凶","大凶"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    //占いボタンが押された時
    @IBAction func tapUranai(_ sender: UIButton) {
        
        //占いの結果をランダムに選ぶための数字を作成(0から6しか出てこない)
        let r = Int(arc4random()) % omikuji.count
        
        //部品となるアラートを作成
        let alert = UIAlertController(title: "今日の占い", message: omikuji[r], preferredStyle: .alert)
        
        //アラートにOKボタンを追加
        //handler:OKボタンが押されたときに行いたい処理を指定する場所
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: {action in print(self.omikuji[r])}))
        
        //アラートを表示する
        present(alert,animated: true,completion: nil)

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

