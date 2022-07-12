//
//  NotesBigBase.swift
//  Chorder
//
//  Created by AppleWorm on 10.07.2022.
//

import Foundation

// Here will be add new chords

let ChordBySequenceOfNotes : [String : String] =  [

// MARK: - 5 - ✅
   // Letters  - ✅
   "AE" : "A5",
   "EA" : "A5",
   "F#B" : "B5",
   "BF#" : "B5",
   "GC" : "C5",
   "CG" : "C5",
   "AD" : "D5",
   "DA" : "D5",
   "EB" : "E5",
   "BE" : "E5",
   "CF" : "F5",
   "FC" : "F5",
   "GD" : "G5",
   "DG" : "G5",
   
   // Sharps - ✅
   "FA#" : "A#5",
   "A#F" : "A#5",
   "G#C#" : "C#5",
   "C#G#" : "C#5",
   "A#D#" : "D#5",
   "D#A#" : "D#5",
   "F#C#" : "F#5",
   "C#F#" : "F#5",
   "G#D#" : "G#5",
   "D#G#" : "G#5",

   
// MARK: - 6 - ✅
    // Letters - ✅
    "AEC#F#" : "A6",
    "EAC#F#" : "A6",
    "BF#D#G#" : "B6",
    "F#BD#G#" : "B6",
    "CGEA" : "C6",
    "GCEA" : "C6",
    "DAF#B" : "D6",
    "ADF#B" : "D6",
    "EBG#C#" : "E6",
    "BEG#C#" : "E6",
    "FCAD" : "F6",
    "CFAD" : "F6",
    "DGBE" : "G6",
    "GDBE" : "G6",

    
    // Sharps - ✅
    "A#FDG" : "A#6",
    "FA#DG" : "A#6",
    "C#G#FA#" : "C#6",
    "G#C#FA#" : "C#6",
    "D#A#GC" : "D#6",
    "A#D#GC" : "D#6",
    "F#C#A#D#" : "F#6",
    "C#F#A#D#" : "F#6",
    "D#G#CF" : "G#6",
    "G#D#CF" : "G#6",

    
    
    // Minors - ✅
    "AECF#": "Am6",
    "EACF#" : "Am6",
    "BF#DG#" : "Bm6",
    "F#BDG#" : "Bm6",
    "CGD#A" : "Cm6",
    "GCD#A" : "Cm6",
    "DAFB" : "Dm6",
    "ADFB" : "Dm6",
    "EBGC#" : "Em6",
    "BEGC#" : "Em6",
    "FCG#D" : "Fm6",
    "CFG#D" : "Fm6",
    "GDA#E" : "Gm6",
    "DGA#E" : "Gm6",
    

    
    // Sharp-Minors - ✅
    "A#FC#G" : "A#m6",
    "FA#C#G" : "A#m6",
    "C#G#EA#" : "C#m6",
    "G#C#EA#" : "C#m6",
    "D#A#F#C" : "D#m6",
    "A#D#F#C" : "D#m6",
    "F#C#AD#" : "F#m6",
    "C#F#AD#" : "F#m6",
    
    
// MARK: - 7 - ✅
    // Letters - ✅
    "AEGC#" : "A7",
    "EAGC#" : "A7",
    "F#BAD#" : "B7",
    "BF#AD#" : "B7",
    "CGA#E" : "C7",
    "GCA#E" : "C7",
    "DACF#" : "D7",
    "ADCF#" : "D7",
    "EBDG#" : "E7",
    "BEDG#" : "E7",
    "FCD#A" : "F7",
    "CFD#A" : "F7",
    "GDFB" : "G7",
    "DGFB" : "G7",
    
    // Sharps - ✅
    "FA#G#D" : "A#7",
    "A#FG#D" : "A#7",
    "C#G#BF" : "C#7",
    "G#C#BF" : "C#7",
    "D#A#C#G" : "D#7",
    "A#D#C#G" : "D#7",
    "F#C#EA#" : "F#7",
    "C#F#EA#" : "F#7",
    "D#G#F#C" : "G#7",
    "G#D#F#C" : "G#7",

    // Minors - ✅
    "AEGC" : "Am7",
    "EAGC" : "Am7",
    "BF#AD" : "Bm7",
    "F#BAD" : "Bm7",
    "CGA#D#" : "Cm7",
    "GCA#D#" : "Cm7",
    "DACF" : "Dm7",
    "ADCF" : "Dm7",
    "EBDG" : "Em7",
    "BEDG" : "Em7",
    "FCD#G#" : "Fm7",
    "CFD#G#" : "Fm7",
    "GDFA#" : "Gm7",
    "DGFA#" : "Gm7",

    
    //Sharp Minors - ✅
    "A#FG#C#" : "A#m7",
    "FA#G#C#" : "A#m7",
    "G#C#BE" : "C#m7",
    "C#G#BE" : "C#m7",
    "D#A#C#F#" : "D#m7",
    "A#D#C#F#" : "D#m7",
    "F#C#EA" : "F#m7",
    "C#F#EA" : "F#m7",
    "D#G#FC" : "G#m7",
    "G#D#FC" : "G#m7",
    

// MARK: - 8 - ✅
    // Letters - ✅
    "AEC#" : "A",
    "EAC#" : "A",
    "BF#D#" : "B",
    "F#BD#" : "B",
    "CGE" : "C",
    "GCE" : "C",
    "CEG" : "C",
    "ECG" : "C",
    "ADF#" : "D",
    "DAF#" : "D",
    "BEG#" : "E",
    "EBG#" : "E",
    "FCA" : "F",
    "CFA" : "F",
    "GDB" : "G",
    "DGB" : "G",
    
    // Sharps - ✅
    "A#FD" : "A#",
    "FA#D" : "A#",
    "C#G#F" : "C#",
    "G#C#F" : "C#",
    "D#A#G" : "D#",
    "A#D#G" : "D#",
    "F#C#A#" : "F#",
    "C#F#A#" : "F#",
    "D#G#C" : "G#",
    "G#D#C" : "G#",
    
    // Minors - ✅
    "AEC" : "Am",
    "EAC" : "Am",
    "F#BD" : "Bm",
    "BF#D" : "Bm",
    "GCD#" : "Cm",
    "CGD#" : "Cm",
    "ADF" : "Dm",
    "DAF" : "Dm",
    "EBG" : "Em",
    "BEG" : "Em",
    "CFG#" : "Fm",
    "FCG#" : "Fm",
    "GDA#" : "Gm",
    "DGA#" : "Gm",

    
    // Sharp-Minors - ✅
    "FA#C#" : "A#m",
    "A#FC#" : "A#m",
    "C#G#E" : "C#m",
    "G#C#E" : "C#m",
    "A#D#F#" : "D#m",
    "D#A#F#" : "D#m",
    "C#F#A" : "F#m",
    "F#C#A" : "F#m",
    "D#G#B" : "G#m",
    "G#D#B" : "G#m",
    
        
// MARK: - 9 - ✅
   // Letters - ✅
   "AEBC#G" : "A9",
   "EABC#G" : "A9",
   "BF#C#D#A" : "B9",
   "F#BC#D#A" : "B9",
   "CGDEA#" : "C9",
   "GCDEA#" : "C9",
   "DAEF#C" : "D9",
   "ADEF#C" : "D9",
   "EBF#G#D" : "E9",
   "BEF#G#D" : "E9",
   "FCGAD#" : "F9",
   "CFGAD#" : "F9",
   "GDABF" : "G9",
   "DGABF" : "G9",
   
   // Sharps - ✅
   "A#FCDG#" : "A#9",
   "FA#CDG#" : "A#9",
   "C#G#D#FB" : "C#9",
   "G#C#D#FB" : "C#9",
   "D#A#FGC#" : "D#9",
   "A#D#FGC#" : "D#9",
   "C#F#G#A#E" : "F#9",
   "F#C#G#A#E" : "F#9",
   "G#D#A#CF#" : "G#9",
   "D#G#A#CF#" : "G#9",
   
   // Minors - ✅
   "AEBCG" : "Am9",
   "EABCG" : "Am9",
   "BF#C#DA" : "Bm9",
   "F#BC#DA" : "Bm9",
   "CGDD#A#" : "Cm9",
   "GCDD#A#" : "Cm9",
   "DAEFC" : "Dm9",
   "ADEFC" : "Dm9",
   "EBF#GD" : "Em9",
   "BEF#GD" : "Em9",
   "FCGG#D#" : "Fm9",
   "CFGG#D#" : "Fm9",
   "GDAA#F" : "Gm9",
   "DGAA#F" : "Gm9",
   
   // Minor-Sharps - ✅
   "A#FCC#G#" : "A#m9",
   "FA#CC#G#" : "A#m9",
   "C#G#D#EB" : "C#m9",
   "G#C#D#EB" : "C#m9",
   "D#A#FF#C#" : "D#m9",
   "A#D#FF#C#" : "D#m9",
   "C#F#G#AE" : "F#m9",
   "F#C#G#AE" : "F#m9",
   "G#D#A#BF#" : "G#m9",
   "D#G#A#BF#" : "G#m9",
    
   
// MARK: - 11 - ✅
   // Letters - ✅
   "ADGC#E" : "A11",
   "DAGC#E" : "A11",
   "BEAD#F#" : "B11",
   "EBAD#F#" : "B11",
   "CFA#EG" : "C11",
   "FCA#EG" : "C11",
   "DGCF#A" : "D11",
   "GDCF#A" : "D11",
   "EADG#B" : "E11",
   "AEDG#B" : "E11",
   "FA#D#AC" : "F11",
   "A#FD#AC" : "F11",
   "GCFBD" : "G11",
   "CGFBD" : "G11",
   
   // Sharps - ✅
   "A#D#G#DF" : "A#11",
   "D#A#G#DF" : "A#11",
   "C#F#BFG#" : "C#11",
   "F#C#BFG#" : "C#11",
   "D#G#C#GA#" : "D#11",
   "G#D#C#GA#" : "D#11",
   "F#BEA#C#" : "F#11",
   "BF#EA#C#" : "F#11",
   "G#C#F#CD#" : "G#11",
   "C#G#F#CD#" : "G#11",
    
   // Minors - ✅
   "ADGCE" : "Am11",
   "DAGCE" : "Am11",
   "BEADF#" : "Bm11",
   "EBADF#" : "Bm11",
   "CFA#D#G" : "Cm11",
   "FCA#D#G" : "Cm11",
   "DGCFA" : "Dm11",
   "GDCFA" : "Dm11",
   "EADGB" : "Em11",
   "AEDGB" : "Em11",
   "FA#D#G#C" : "Fm11",
   "A#FD#G#C" : "Fm11",
   "GCFA#D" : "Gm11",
   "CGFA#D" : "Gm11",
   
   // Minor - Sharps - ✅
   "A#D#G#C#F" : "A#m11",
   "D#A#G#C#F" : "A#m11",
   "C#F#BEG#" : "C#m11",
   "F#C#BEG#" : "C#m11",
   "D#G#C#F#A#" : "D#m11",
   "G#D#C#F#A#" : "D#m11",
   "F#BEAC#" : "F#m11",
   "BF#EAC#" : "F#m11",
   "G#C#F#BD#" : "G#m11",
   "C#G#F#BD#" : "G#m11",

    
// MARK: - 13 - ✅
    // Letters - ✅
   "AGC#F#" : "A13",
   "GAC#F#" : "A13",
   "BAD#G#" : "B13",
   "ABD#G#" : "B13",
   "CA#EA" : "C13",
   "A#CEA" : "C13",
   "DCF#B" : "D13",
   "CDF#B" : "D13",
   "EDG#C#" : "E13",
   "DEG#C#" : "E13",
   "FD#AD" : "F13",
   "D#FAD" : "F13",
   "GFBE" : "G13",
   "FGBE" : "G13",
    
    // Sharps - ✅
   "A#G#DG" : "A#13",
   "G#A#DG" : "A#13",
   "C#BFA#" : "C#13",
   "BC#FA#" : "C#13",
   "D#C#GC" : "D#13",
   "C#D#GC" : "D#13",
   "F#EA#D#" : "F#13",
   "EF#A#D#" : "F#13",
   "G#F#CF" : "G#13",
   "F#G#CF" : "G#13",
    
    // Minors - ✅
   "AGCF#" : "Am13",
   "GACF#" : "Am13",
   "BADG#" : "Bm13",
   "ABDG#" : "Bm13",
   "CA#D#A" : "Cm13",
   "A#CD#A" : "Cm13",
   "DCFB" : "Dm13",
   "CDFB" : "Dm13",
   "EDGC#" : "Em13",
   "DEGC#" : "Em13",
   "FD#G#D" : "Fm13",
   "D#FG#D" : "Fm13",
   "GFA#E" : "Gm13",
   "FGA#E" : "Gm13",
   
   // Minor - Sharps - ✅
   "A#G#C#G" : "A#m13",
   "G#A#C#G" : "A#m13",
   "C#BEA#" : "C#m13",
   "BC#EA#" : "C#m13",
   "D#C#F#C" : "D#m13",
   "C#D#F#C" : "D#m13",
   "F#EAD#" : "F#m13",
   "EF#AD#" : "F#m13",
   "G#F#BF" : "G#m13",
   "F#G#BF" : "G#m13"
    
   
]
