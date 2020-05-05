//
//  MIDIEngine.swift
//  LinnstrumentHelper
//
//  Created by Mark-James McDougall on 2020-04-26.
//  Copyright © 2020 Mark-James M. All rights reserved.
//

import Foundation

struct MIDIEngine {
    
     // Method to convert MIDI note numbers into music notes and print the result.
     func midiToNote(noteNumber: UInt8) -> String {
         let noteNames: [UInt8: String] = [0: "C-2", 1: "C#-2", 2: "D-2", 3: "D#-2", 4: "E-2", 5: "F-2", 6: "F#-2", 7: "G-2", 8: "G#-2", 9: "A-2", 10: "A#-2", 11: "B-2", 12: "C1", 13: "C#1", 14: "D1", 15: "D#1", 16: "E-1", 17: "F-1", 18: "F#-1", 19: "G-1", 20: "G#-1", 21: "A-1", 22: "A#-1", 23: "B-1", 24: "C0", 25: "C#-0", 26: "D-0", 27: "D#0", 28: "E0", 29: "F0", 30: "F#0", 31: "G0", 32: "G#0", 33: "A0", 34: "A#0", 35: "B0", 36: "C1", 37: "C#1", 38: "D1", 39: "D#1", 40: "E1", 41: "F1", 42: "F#1", 43: "G1", 44: "G#1", 45: "A1", 46: "A#1", 47: "B1", 48: "C2", 49: "C#2", 50: "D2", 51: "D#2", 52: "E2", 53: "F2", 54: "F#2", 55: "G2", 56: "G#2", 57: "A2", 58: "A#2", 59: "B2", 60: "C3", 61: "C#3", 62: "D3", 63: "D#3", 64: "E3", 65: "F3", 66: "F#3", 67: "G3", 68: "G#3", 69: "A3", 70: "A#3", 71: "B3", 72: "C4", 73: "C#4", 74: "D4", 75: "D#4", 76: "E4", 77: "F4", 78: "F#4", 79: "G4", 80: "G#4", 81: "A4", 82: "A#4", 83: "B4", 84: "C5", 85: "C#5", 86: "D5", 87: "D#5", 88: "E5", 89: "F5", 90: "F#5", 91: "G5", 92: "G#5", 93: "A5", 94: "A#5", 95: "B5", 96: "C6", 97: "C#6", 98: "D6", 99: "D#6", 100: "E6", 101: "F6", 102: "F#6", 103: "G6", 104: "G#6", 105: "A6", 106: "A#6", 107: "B6", 108: "C7", 109: "C#7", 110: "D7", 111: "D#7", 112: "E7", 113: "F7", 114: "F#7", 115: "G7", 116: "G#7", 117: "A7", 118: "A#7", 119: "B7", 120: "C8", 121: "C#8", 122: "D8", 123: "D#8", 124: "E8", 125: "F8", 126: "F#8", 127: "G8"]

         return noteNames[noteNumber] ?? "?"
     }

    //-----------------------------------------
    // LS 200 - Not yet finished
    //-----------------------------------------

     func midiToGrid(noteNumber: UInt8) -> Int {
     let grid: [UInt8: UInt8] = [ 30: 112, 31: 113, 32: 114, 33: 115, 34: 116, 35: 117, 36: 118, 37: 119, 38: 120, 39: 121, 40: 122, 41: 123, 42: 124, 43: 125, 44: 126, 45: 127, 46: 86, 47: 87, 48: 88, 49: 89, 50: 90, 51: 91, 52: 92, 53: 93, 54: 94, 55: 95, 56: 75, 57: 76, 58: 77, 59: 78, 60: 79, 61: 59, 62: 60, 63: 61, 64: 62, 65: 63, 66: 43, 67: 44, 68: 45, 69: 46, 70: 47, 71: 27, 72: 28, 73: 29, 74: 30, 75: 31, 76: 11, 77: 12, 78: 13, 79: 14, 80: 15, 190: 190 ]

         return Int(grid[noteNumber] ?? 0)
     }

    
    //-----------------------------------------
    // LS 128 - Works, but only on one octave
    //-----------------------------------------

     func midiToSmallGrid(noteNumber: UInt8) -> Int {
         let smallGrid: [UInt8: UInt8] = [ 30: 112, 31: 113, 32: 114, 33: 115, 34: 116, 35: 117, 36: 118, 37: 119, 38: 120, 39: 121, 40: 122, 41: 123, 42: 124, 43: 125, 44: 126, 45: 127, 46: 86, 47: 87, 48: 88, 49: 89, 50: 90, 51: 91, 52: 92, 53: 93, 54: 94, 55: 95, 56: 75, 57: 76, 58: 77, 59: 78, 60: 79, 61: 59, 62: 60, 63: 61, 64: 62, 65: 63, 66: 43, 67: 44, 68: 45, 69: 46, 70: 47, 71: 27, 72: 28, 73: 29, 74: 30, 75: 31, 76: 11, 77: 12, 78: 13, 79: 14, 80: 15, 190: 190 ]

         return Int(smallGrid[noteNumber] ?? 0)
    }
    
    // Displays all the notes for the .overlayPreferenceValues
    func mapSmallGridNotes(note: UInt8?) -> [Int] {
        
        if note == 30 {
            return [112]
        }
        if note == 31 {
            return [113]
        }
        if note == 32 {
                return [114]
        }
        if note == 33 {
                return [115]
        }
        if note == 34 {
                return [116]
        }
        if note == 35 {
                return [117, 96]
        }
        if note == 36 {
                return [118, 97]
        }
        if note == 37 {
            return [119, 98]
        }
        if note == 38 {
            return [120, 99]
        }
        if note == 39 {
            return [121, 100]
        }
        if note == 40 {
            return [122, 101, 80]
        }
        if note == 41 {
            return [123, 102, 81]
        }
        if note == 42 {
            return [124, 103, 82]
        }
        if note == 43 {
            return [125, 104, 83]
        }
        if note == 44 {
            return [126, 105, 84]
        }
        if note == 45 {
            return [127, 106, 85, 64]
        }
        if note == 46 {
            return [86, 65, 107]
        }
        if note == 47 {
            return [87, 108, 66]
        }
        if note == 48 {
            return [88, 67]
        }
        if note == 49 {
            return [89, 68]
        }
        if note == 50 {
            return [90, 69, 48]
        }
        if note == 51 {
            return [91, 70, 49]
        }
        if note == 52 {
            return [92, 71, 50]
        }
        if note == 53 {
            return [93, 72, 51]
        }
        if note == 54 {
            return [94, 73, 52]
        }
        if note == 55 {
            return [95, 74, 53, 32]
        }
        if note == 56 {
        return [75, 54, 33]
        }
        if note == 57 {
            return [76, 55, 34]
        }
        if note == 58 {
            return [77, 56, 35]
        }
        if note == 59 {
            return [78, 57]
        }
        if note == 60 {
            return [79, 58, 37, 16]
        }
        if note == 61 {
            return [59, 38, 17]
        }
        if note == 62 {
            return [60, 39, 18]
        }
        if note == 63 {
            return [61, 40, 19]
        }
        if note == 64 {
            return [62, 41, 20]
        }
        if note == 65 {
            return [63, 42, 21, 0]
        }
        if note == 66 {
            return [43, 22, 1]
        }
        if note == 67 {
            return [44, 23, 2]
        }
        if note == 68 {
            return [45, 24, 3]
        }
        if note == 69 {
            return [46, 25, 4]
        }
        if note == 70 {
            return [47, 26, 5]
        }
        if note == 71 {
            return [27, 6]
        }
        if note == 72 {
            return [28, 7]
        }
        if note == 73 {
            return [29, 8]
        }
        if note == 74 {
            return [30, 9]
        }
        if note == 75 {
            return [10]
        }
        if note == 76 {
            return [11]
        }
        if note == 77 {
            return [12]
        }
        if note == 78 {
            return [13]
        }
        if note == 79 {
            return [14]
        }
        if note == 80 {
            return [15]
        }
        
        else {
            return []
        }
    }
    
}
