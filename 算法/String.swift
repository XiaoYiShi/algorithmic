//
//  String.swift
//  algorithmic
//
//  Created by YiCZB on 2019/12/18.
//  Copyright © 2019 FeatherBrowser. All rights reserved.
//

import UIKit


    func change(_ text : String) -> String
    {
        //把符号拼接成串
        func itemStr(in str:String, for count:Int) -> String {
            var itemArr = [String]()
            for _ in 0..<count {
                itemArr.append(str)
            }
            return itemArr.joined(separator: "")
        }
        
        if text.contains("[") {
            //有需要处理的字段，就开始处理
            if text.components(separatedBy: "[").count > 2 {
                
                var text = text
                
                //需要先剥离出最外层的括号内数据
                //每一层级都可能会有多个同级括号。所以需要while
                var isNext = true
                while isNext {
                    var isInlay = false//是否嵌套
                    var starIndex = 0//开始下标
                    var endIndex = 0//结束下标
                    var retain = 0//还原标记
                    
                    for item in text {
                        let str = String(item)
                        print(str)
                    }
                    
                    //截取成2[a]格式的字符串
                    let nextStr = ""
                    //替换
                    text = text.replacingOccurrences(of: nextStr, with: change(nextStr))
                    
                    //判断是否还有括号
                    isNext = text.components(separatedBy: "[").count > 2
                }
                
            } else {
                let text1 = text.replacingOccurrences(of: "]", with: "")
                let numAndStr = text1.components(separatedBy: "[")
                return itemStr(in: numAndStr[1], for: Int(numAndStr[0]) ?? 0)
            }
        } else {
            //没有需要处理的，就不处理
            return text
        }
        
        return text
        
        ///===============================================
        
        
//        var resultArr = [String]()//接收结果
//        let itemArr = text.components(separatedBy: "]")//基本分段
//        for item in itemArr {
//            var numAndStr = item.components(separatedBy: "[")
//
//            while numAndStr.count > 0 {
//
//                if numAndStr.count == 1 {
//                    resultArr.append(numAndStr[0])
//                    numAndStr.removeLast()
//                } else {
//                    let str1 = numAndStr.last!
//                    numAndStr.removeLast()
//                    let str2 = numAndStr.last!
//                    numAndStr.removeLast()
//
//                    let numStr = str2.trimmingCharacters(in: CharacterSet.decimalDigits.inverted)
//
//                    let str = itemStr(in:str1, for:Int(numStr.replacingOccurrences(of: " ", with: "")) ?? 0)
//                    numAndStr.append(str2.replacingOccurrences(of: numStr, with: str))
//                }
//            }
//        }
//
//        return resultArr.joined(separator: "")
    }



