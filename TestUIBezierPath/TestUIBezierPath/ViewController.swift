//
//  ViewController.swift
//  TestUIBezierPath
//
//  Created by iCodeWoods on 16/5/8.
//  Copyright © 2016年 iCodeWoods. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let myView = MyView.init(frame: CGRectZero)
    var timer: NSTimer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myView.frame = view.bounds
        view.addSubview(myView)
        
        // 每隔 0.1 秒执行一次
        timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("reDrawView"), userInfo: nil, repeats: true)
    }
    
    func reDrawView() {
        myView.setNeedsDisplay() // 重绘界面
        // 画完一圈后停止
        if myView.finishAngle > myView.beginAngle+M_PI*2 {
            timer.invalidate() // 停止计时器
        }
    }
}

    // 如果只是为了画多边形、矩形、扇形、弧线、圆、椭圆等，请把上面的方法注释掉，用下面这个方法
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        myView.frame = view.bounds
//        view.addSubview(myView)
//        myView.setNeedsDisplay()
//    }
}

