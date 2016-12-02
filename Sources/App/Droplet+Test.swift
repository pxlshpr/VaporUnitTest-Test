//
//  Droplet+Test.swift
//  UnitTestTutorial
//
//  Created by Ahmed Khalaf on 23/11/16.
//
//
@testable import Vapor

func makeTestDroplet() throws -> Droplet {
    let drop = Droplet(arguments: ["dummy/path/", "prepare"])
    try load(drop)
    try drop.runCommands()
    return drop
}
