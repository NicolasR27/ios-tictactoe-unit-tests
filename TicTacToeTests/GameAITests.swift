//
//  GameAITests.swift
//  TicTacToeTests
//
//  Created by Nicolas Rios on 3/27/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import XCTest
@testable import TicTacToe

class GameAITests: XCTestCase {
    
    func testWinCheckingVertical(){
        var board = GameBoard()
        /*
         x o-
         x o-
         x --
         */
        
        try! board.place(mark: .x, on: (0,0))
        try! board.place(mark: .o, on: (1,0))
        try! board.place(mark: .x, on: (0,1))
        try! board.place(mark: .o, on: (1,1))
        try! board.place(mark: .x, on: (0,2))
        XCTAssertTrue(game(board: board, isWonBy: .x))
        XCTAssertFalse(game(board: board, isWonBy: .o))
        
        
    }

   func testWinCheckingVertical2() {
       var board = GameBoard()
       /*
        x o -
        x o -
        - o -
        */
       try! board.place(mark: .o, on: (1, 0))
       try! board.place(mark: .x, on: (0, 0))
       try! board.place(mark: .o, on: (1, 1))
       try! board.place(mark: .x, on: (0, 1))
       try! board.place(mark: .o, on: (1, 2))
       XCTAssertTrue(game(board: board, isWonBy: .o))
       XCTAssertFalse(game(board: board, isWonBy: .x))
   }
    
    

    func testWinCheckingVertical3(){
        /*
        -xo
       - x o
        --0
        */
        
        var board = GameBoard()
        try! board.place(mark: .x, on: (1,0))
        try! board.place(mark: .o, on: (2,0))
        try! board.place(mark: .x, on: (1,1))
        try! board.place(mark: .o, on: (2,1))
        try! board.place(mark: .o, on: (2,2))
        XCTAssertTrue(game(board: board, isWonBy: .o))
        XCTAssertFalse(game(board: board, isWonBy: .x))
        
    }
    
    func testWinCheckingHorizontal1() {
        /*
               xxx-
               - o-
               --0
               */
        var board = GameBoard()
        try! board.place(mark: .x, on: (0,0))
        try! board.place(mark: .x, on: (1,0))
        try! board.place(mark: .x, on: (2,0))
        try! board.place(mark: .o, on: (1,1))
        try! board.place(mark: .o, on: (2,2))
        XCTAssertTrue(game(board: board, isWonBy: .x))
        XCTAssertFalse(game(board: board, isWonBy: .o))
    }
    
    func testWinCheckingDiagonal1(){
        var board = GameBoard()
        
        /*
        xxx-
        - o-
        --0
        */
       
              try! board.place(mark: .x, on: (0,0))
              try! board.place(mark: .x, on: (1,1))
              try! board.place(mark: .x, on: (2,2))
              try! board.place(mark: .o, on: (0,2))
              try! board.place(mark: .o, on: (1,2))
              XCTAssertTrue(game(board: board, isWonBy: .x))
              XCTAssertFalse(game(board: board, isWonBy: .o))
    }
    
    
}



