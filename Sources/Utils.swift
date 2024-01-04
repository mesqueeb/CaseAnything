import Foundation

// Latin-1 Supplement
// upper case ranges
// [À-ÖØ-ß]
// lower case ranges
// [à-öø-ÿ]

public func magicSplit() -> NSRegularExpression { return try! NSRegularExpression(pattern: "^[a-zà-öø-ÿ]+|[A-ZÀ-ÖØ-ß][a-zà-öø-ÿ]+|[a-zà-öø-ÿ]+|[0-9]+|[A-ZÀ-ÖØ-ß]+(?![a-zà-öø-ÿ])") }
public func spaceSplit() -> NSRegularExpression { return try! NSRegularExpression(pattern: "\\S+") }

/// A string.matchAll function that will return an array of _string parts_ and the indexes at which it split each part
public func getPartsAndIndexes(
    _ string: String,
    splitRegex: NSRegularExpression
) -> (parts: [String], prefixes: [String]) {
    var result = (parts: [String](), prefixes: [String]())
    let matches = splitRegex.matches(in: string, range: NSRange(string.startIndex..., in: string))

    var lastWordEndIndex = string.startIndex
    for match in matches {
        let wordRange = Range(match.range, in: string)!
        let word = String(string[wordRange])
        result.parts.append(word)

        let prefixRange = lastWordEndIndex ..< wordRange.lowerBound
        let prefix = string[prefixRange].trimmingCharacters(in: .whitespaces)
        result.prefixes.append(prefix)

        lastWordEndIndex = wordRange.upperBound
    }

    let tail = string[lastWordEndIndex...].trimmingCharacters(in: .whitespaces)
    if !tail.isEmpty {
        result.parts.append("")
        result.prefixes.append(tail)
    }

    return result
}

/// A function that splits a string on words and returns an array of words.
/// - It can prefix each word with a given character
/// - It can strip or keep special characters, this affects the logic for adding a prefix as well
public func splitAndPrefix(_ string: String, keepSpecialCharacters: Bool = false, prefix: String = "", keep: [String] = []) -> [String] {
    let keep = Set(keep)

    let normalString = string.trimmingCharacters(in: .whitespacesAndNewlines).precomposedStringWithCanonicalMapping
    let hasSpaces = normalString.contains(" ")
    let splitRegex = hasSpaces ? spaceSplit() : magicSplit()
    let partsAndIndexes = getPartsAndIndexes(normalString, splitRegex: splitRegex)

    return zip(partsAndIndexes.parts, partsAndIndexes.prefixes).enumerated().compactMap { index, element in
        var (part, foundPrefix) = element

        if !keepSpecialCharacters || !keep.isEmpty {
            let regexPattern = keep.isEmpty ? "[^a-zA-ZØßø0-9]" : "[^a-zA-ZØßø0-9\(keep.joined())]"
            if let regex = try? NSRegularExpression(pattern: regexPattern) {
                part = regex.stringByReplacingMatches(in: part, range: NSRange(0 ..< part.utf16.count), withTemplate: "")

                if keep.isEmpty { foundPrefix = "" }
            }
        }

        if !keep.isEmpty, !foundPrefix.isEmpty {
            let regexPattern = "[^\(keep.joined())]"
            if let regex = try? NSRegularExpression(pattern: regexPattern) {
                foundPrefix = regex.stringByReplacingMatches(in: foundPrefix, range: NSRange(0 ..< foundPrefix.utf16.count), withTemplate: "")
            }
        }

        // the first word doesn't need a prefix, so only return the found prefix
        if index == 0 {
            return foundPrefix + part
        }

        if foundPrefix.isEmpty, part.isEmpty {
            return ""
        }

        if !hasSpaces {
            return (foundPrefix.isEmpty ? prefix : foundPrefix) + part
        }

        // space based sentence was split on spaces, so only return found prefixes
        if !foundPrefix.isEmpty, prefix.rangeOfCharacter(from: .whitespaces) != nil {
            // in this case we have no more found prefix, it was trimmed, but we're looking to add a space
            // so let's return that space
            return " " + part
        }

        return (foundPrefix.isEmpty ? prefix : foundPrefix) + part
    }.filter { !$0.isEmpty }
}

/// Capitalises a single word
/// @returns the word with the first character in uppercase and the rest in lowercase
public func capitaliseWord(_ string: String) -> String {
    // Find the first alphabetic character in the string
    guard let regex = try? NSRegularExpression(pattern: "[A-ZÀ-ÖØ-ßa-zà-öø-ÿ]"),
          let match = regex.firstMatch(in: string, range: NSRange(string.startIndex..., in: string))
    else {
        return string
    }

    let firstLetterIndex = string.distance(from: string.startIndex, to: Range(match.range, in: string)!.lowerBound)
    let index = string.index(string.startIndex, offsetBy: firstLetterIndex)

    // Capitalize only the first letter and lower case the rest
    let firstPart = String(string[..<index])
    let secondPart = String(string[index]).uppercased()
    let thirdPart = String(string[string.index(after: index)...]).lowercased()

    return firstPart + secondPart + thirdPart
}

/// Grabs the first character of a String and returns it as String
public func firstCharacter(_ string: String) -> String {
    return String(string.first ?? Character(""))
}
