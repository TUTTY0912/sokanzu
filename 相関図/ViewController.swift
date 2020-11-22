//
//  ViewController.swift
//  相関図
//
//  Created by 土屋絢大 on 2020/11/08.
//  Copyright © 2020 Kenta Tsuchiya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var scrollView: UIScrollView!
    
    @IBOutlet var addForm: UIView!
    var add: Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.makeScreen()
    }

    @IBAction func hiddencommand(_ sender: Any) {
        if add == 0{
            add = add + 1
            addForm.isHidden = false
            
        }else if add == 1{
            add = add - 1
            addForm.isHidden = true
        }
    }
    
    func makeScreen (){
        let screenWidth = Int( UIScreen.main.bounds.size.width)
        //スクリーンの高さ
        let screenHeight = Int(UIScreen.main.bounds.size.height)
        //UIScrollViewのインスタンス作成
        scrollView = UIScrollView()
        //scrollViewの大きさを設定
        scrollView.frame = self.view.frame
        //スクロール領域の設定
        scrollView.contentSize = CGSize(width:screenWidth * 5, height:screenHeight * 5)
        //scrollViewをviewのSubViewとして追加
        self.view.addSubview(scrollView)
        
        self.makeCard()
    }
    
    func makeCard(){
        let view = CardView()
        view.frame = CGRect(x: 300, y: 400, width: 190, height: 80)
        self.scrollView.addSubview(view)
        
    }
}


