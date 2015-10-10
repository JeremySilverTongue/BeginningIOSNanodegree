//
//  ControlCenter.swift
//  Maze
//
//  Created by Jarrod Parkes on 8/14/15.
//  Copyright © 2015 Udacity, Inc. All rights reserved.
//

class ControlCenter {
    
    func moveSimpleRobot(robot: SimpleRobot) {
        
        robot.moveUp()
        robot.moveUp()
        robot.moveLeft()
        robot.moveLeft()
        robot.moveLeft()
        robot.moveDown()
        
    }
    
    func moveComplexRobot(robot: ComplexRobot) {

        robot.move(2)
        robot.rotateLeft()
        robot.move(3)
        robot.rotateLeft()
        robot.move(1)

    }
}