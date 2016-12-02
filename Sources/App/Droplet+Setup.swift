//
//  HelloWorld.swift
//  UnitTestTutorial
//
//  Created by Ahmed Khalaf on 23/11/16.
//
//

//import Foundation
import Vapor

public class HelloWorld { }

func load(_ drop: Droplet) throws {
    drop.get { _ in return "Hello there, World!" }
}
