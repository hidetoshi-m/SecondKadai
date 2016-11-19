//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by 村 英敏 on 2016/11/16.
//  Copyright © 2016年 hidetoshi-m. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nametext: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // segueから遷移先のResultViewControllerを取得する
        let resultViewController:ResultViewController = segue.destination as! ResultViewController
        // 遷移先のResultViewControllerで宣言しているx, yに値を代入して渡す
        resultViewController.x = nametext.text!
    }
    
    
    //遷移先から戻る時に呼ばれるメソッド
    @IBAction func unwind(segue: UIStoryboardSegue) {
    }
}

