//
//  Button.swift
//  Music
//
//  Created by Administrator on 4/15/17.
//  Copyright © 2017 Auctor. All rights reserved.
//
import SpriteKit
import Foundation
class button{
    var bg = SKSpriteNode()
    var label = SKLabelNode()
    init(size: CGSize, pos: CGPoint){
        bg = SKSpriteNode(imageNamed: "bg2")
        bg.size = size
        bg.position = pos
        bg.zPosition = 3
        label.text = ""
        label.fontColor = UIColor.black
        label.fontSize = size.width * 1/5
        label.fontName = "Avenir Next Regular"
        label.zPosition = 4
        label.position = pos
    }
    init(size: CGSize, pos: CGPoint, text: String){
        bg = SKSpriteNode(imageNamed: text)
        bg.size = size
        bg.position = pos
        bg.zPosition = 3
        label.text = ""
        label.fontColor = UIColor.black
        label.fontSize = size.width * 1/6
        label.fontName = "Avenir Next Regular"
        label.zPosition = 4
        label.position = pos
        //label.numberOfLines = 0
        label.verticalAlignmentMode = SKLabelVerticalAlignmentMode.center
    }
    init(size: CGSize, pos: CGPoint, text: CGFloat){
        bg = SKSpriteNode(imageNamed: "bg4")
        bg.size = size
        bg.position = pos
        bg.zPosition = 3
        label.text = "21\n48"
        label.fontColor = UIColor.white
        label.fontSize = text
        label.fontName = "Courier-Bold"
        label.zPosition = 4
        label.position = pos
        //label.numberOfLines = 0
        label.verticalAlignmentMode = SKLabelVerticalAlignmentMode.center
    }
    func change(text: String){
        label.text = text
        bg.texture = SKTexture(imageNamed: "bg")
    }
    func clear(){
        bg.texture = SKTexture(imageNamed: "bg2")
        label.text = ""
    }
}
