//
//  MyView.swift
//  TestUIBezierPath
//
//  Created by iCodeWoods on 16/5/8.
//  Copyright © 2016年 iCodeWoods. All rights reserved.
//

import Foundation
import UIKit

class MyView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.grayColor()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
//    // 五边形
//    override func drawRect(rect: CGRect) {
//        let color = UIColor.redColor()
//        color.set() // 设置线条颜色
//        
//        let aPath = UIBezierPath()
//    
//        aPath.lineWidth = 5.0 // 线条宽度
//        aPath.lineCapStyle = CGLineCap.Round // 线条拐角
//        aPath.lineJoinStyle = CGLineJoin.Round // 终点处理
//        
//        // Set the starting point of the shape.
//        aPath.moveToPoint(CGPointMake(100, 10))
//        
//        // Draw the lines
//        aPath.addLineToPoint(CGPointMake(200, 50))
//        aPath.addLineToPoint(CGPointMake(160, 150))
//        aPath.addLineToPoint(CGPointMake(40, 140))
//        aPath.addLineToPoint(CGPointMake(10, 60))
//        aPath.closePath() // 最后一条线通过调用closePath方法得到
//        
////        aPath.stroke() // Draws line 根据坐标点连线，不填充
//        aPath.fill() // Draws line 根据坐标点连线，填充
//    }
    
    
    
//    // 矩形
//    override func drawRect(rect: CGRect) {
//        let color = UIColor.redColor()
//        color.set() // 设置线条颜色
//        
//        let aPath = UIBezierPath.init(rect: CGRectMake(40, 40, 100, 50)) // 长方形
////        let aPath = UIBezierPath.init(rect: CGRectMake(40, 40, 100, 100)) // 正方形
//
//        aPath.lineWidth = 5.0 // 线条宽度
//        aPath.lineCapStyle = CGLineCap.Round // 线条拐角
//        aPath.lineJoinStyle = CGLineJoin.Round // 终点处理
//        
//        aPath.stroke() // Draws line 根据坐标点连线，不填充
////        aPath.fill() // Draws line 根据坐标点连线，填充
//    }
    
    
    
//    // 圆、椭圆
//    override func drawRect(rect: CGRect) {
//        let color = UIColor.redColor()
//        color.set() // 设置线条颜色
//        
//        // 根据传人的矩形画出内切圆／椭圆
////        let aPath = UIBezierPath.init(ovalInRect: CGRectMake(40, 40, 100, 100)) // 如果传入的是正方形，画出的就是内切圆
//        let aPath = UIBezierPath.init(ovalInRect: CGRectMake(40, 40, 100, 160)) // 如果传入的是长方形，画出的就是内切椭圆
//        
//        aPath.lineWidth = 5.0 // 线条宽度
//        
////        aPath.stroke() // Draws line 根据坐标点连线，不填充
//        aPath.fill() // Draws line 根据坐标点连线，填充
//    }
    
    
    
////     弧线
//    override func drawRect(rect: CGRect) {
//        let color = UIColor.redColor()
//        color.set() // 设置线条颜色
//        
//        let aPath = UIBezierPath.init(arcCenter: CGPointMake(150, 150), radius: 75, startAngle: 0, endAngle: (CGFloat)(90*M_PI/180), clockwise: true)
//        
//        aPath.lineWidth = 5.0 // 线条宽度
//        
////        aPath.stroke() // Draws line 根据坐标点连线，不填充
//        aPath.fill() // Draws line 根据坐标点连线，填充
//    }
    
    
    
//    // 扇形
//    override func drawRect(rect: CGRect) {
//        let color = UIColor.redColor()
//        color.set() // 设置线条颜色
//        
//        let aPath = UIBezierPath.init(arcCenter: CGPointMake(150, 150), radius: 75, startAngle: 0, endAngle: (CGFloat)(90*M_PI/180), clockwise: true)
//        aPath.addLineToPoint(CGPointMake(150, 150))
//        aPath.closePath()
//        aPath.lineWidth = 5.0 // 线条宽度
//        
//        //        aPath.stroke() // Draws line 根据坐标点连线，不填充
//        aPath.fill() // Draws line 根据坐标点连线，填充
//    }
    
    
    
    // 实现 App 下载时的效果
    var beginAngle = M_PI*3/2 // 起点
    var finishAngle = M_PI*3/2+M_PI*2/20 // 终点
    
    override func drawRect(rect: CGRect) {
        let color = UIColor.whiteColor()
        color.set() // 设置线条颜色
        
        let aPath = UIBezierPath.init(arcCenter: CGPointMake(150, 150), radius: 75, startAngle: (CGFloat)(beginAngle), endAngle: (CGFloat)(finishAngle), clockwise: true)
        aPath.addLineToPoint(CGPointMake(150, 150))
        aPath.closePath()
        aPath.lineWidth = 5.0 // 线条宽度
        aPath.fill() // Draws line 根据坐标点连线，填充
        
        finishAngle += M_PI/20 // 更新终点
    }
}


