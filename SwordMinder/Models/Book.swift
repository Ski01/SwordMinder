//
//  Book.swift
//  SwordMinder
//
//  Created by John Delano on 12/2/22.
//

import Foundation


/// Used  to represent a book of the Bible.
enum Book: String, Codable, Equatable, Identifiable, Comparable, CaseIterable {
    case genesis = "Genesis"
    case exodus = "Exodus"
    case leviticus = "Leviticus"
    case numbers = "Numbers"
    case deuteronomy = "Deuteronomy"
    case joshua = "Joshua"
    case judges = "Judges"
    case ruth = "Ruth"
    case firstSamuel = "1 Samuel"
    case secondSamuel = "2 Samuel"
    case firstKings = "1 Kings"
    case secondKings = "2 Kings"
    case firstChronicles = "1 Chronicles"
    case secondChronicles = "2 Chronicles"
    case ezra = "Ezra"
    case nehemiah = "Nehemiah"
    case esther = "Esther"
    case job = "Job"
    case psalms = "Psalms"
    case proverbs = "Proverbs"
    case ecclesiastes = "Ecclesiastes"
    case songOfSolomon = "Song of Solomon"
    case isaiah = "Isaiah"
    case jeremiah = "Jeremiah"
    case lamentations = "Lamentations"
    case ezekiel = "Ezekiel"
    case daniel = "Daniel"
    case hosea = "Hosea"
    case joel = "Joel"
    case amos = "Amos"
    case obadiah = "Obadiah"
    case jonah = "Jonah"
    case micah = "Micah"
    case nahum = "Nahum"
    case habakkuk = "Habakkuk"
    case zephaniah = "Zephaniah"
    case haggai = "Haggai"
    case zechariah = "Zechariah"
    case malachi = "Malachi"
    case matthew = "Matthew"
    case mark = "Mark"
    case luke = "Luke"
    case john = "John"
    case acts = "Acts"
    case romans = "Romans"
    case firstCorinthians = "1 Corinthians"
    case secondCorinthians = "2 Corinthians"
    case galatians = "Galatians"
    case ephesians = "Ephesians"
    case philippians = "Philippians"
    case colossians = "Colossians"
    case firstThessalonians = "1 Thessalonians"
    case secondThessalonians = "2 Thessalonians"
    case firstTimothy = "1 Timothy"
    case secondTimothy = "2 Timothy"
    case titus = "Titus"
    case philemon = "Philemon"
    case hebrews = "Hebrews"
    case james = "James"
    case firstPeter = "1 Peter"
    case secondPeter = "2 Peter"
    case firstJohn = "1 John"
    case secondJohn = "2 John"
    case thirdJohn = "3 John"
    case jude = "Jude"
    case revelation = "Revelation"
    

    var id: Self {
        return self
    }

    /// Retrieves the next Book of the Bible after this one; Returns nil if the current Book is Revelation
    var next: Book? {
        if let currentIndex = Book.allCases.firstIndex(of: self),
           currentIndex < Book.allCases.count - 1 {
            return Book.allCases[currentIndex + 1]
        }
        return nil
    }

    
    
    // MARK: - Comparable
    
    /// Determines if one book occurs before the other book in the Bible
    /// - Parameters:
    ///   - lhs: Left hand side
    ///   - rhs: Right hand side
    /// - Returns: true if the left hand side book occurs before the right hand side book; otherwise, returns false
    static func <(lhs: Book, rhs: Book) -> Bool {
        let lhsIndex = Book.allCases.firstIndex(of: lhs)!
        let rhsIndex = Book.allCases.firstIndex(of: rhs)!
        return lhsIndex < rhsIndex
    }
    
    /// Determines if one book occurs after the other book in the Bible
    /// - Parameters:
    ///   - lhs: Left hand side
    ///   - rhs: Right hand side
    /// - Returns: true if the left hand side book occurs after the right hand side book; otherwise, returns false
    static func >(lhs: Book, rhs: Book) -> Bool {
        let lhsIndex = Book.allCases.firstIndex(of: lhs)!
        let rhsIndex = Book.allCases.firstIndex(of: rhs)!
        return lhsIndex > rhsIndex
    }
        
}
