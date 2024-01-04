// swiftformat:disable all
import XCTest
@testable import CaseAnything

final class ShortTests: XCTestCase {
  func testCamelCase____Short() { XCTAssertEqual(   camelCase("$catDog"), "catDog") }
  func testPascalCase___Short() { XCTAssertEqual(  pascalCase("$catDog"), "CatDog") }
  func testKebabCase____Short() { XCTAssertEqual(   kebabCase("$catDog"), "cat-dog") }
  func testSnakeCase____Short() { XCTAssertEqual(   snakeCase("$catDog"), "cat_dog") }
  func testConstantCase_Short() { XCTAssertEqual(constantCase("$catDog"), "CAT_DOG") }
  func testAdaCase______Short() { XCTAssertEqual(     adaCase("$catDog"), "Cat_Dog") }
  func testCobolCase____Short() { XCTAssertEqual(   cobolCase("$catDog"), "CAT-DOG") }
  func testTrainCase____Short() { XCTAssertEqual(   trainCase("$catDog"), "Cat-Dog") }
  func testDotNotation__Short() { XCTAssertEqual( dotNotation("$catDog"), "cat.Dog") }
  func testPathCase_____Short() { XCTAssertEqual(    pathCase("$catDog"), "$cat/Dog") }
  func testSpaceCase____Short() { XCTAssertEqual(   spaceCase("$catDog"), "$cat Dog") }
  func testCapitalCase__Short() { XCTAssertEqual( capitalCase("$catDog"), "$Cat Dog") }
  func testUpperCase____Short() { XCTAssertEqual(   upperCase("$catDog"), "$CAT DOG") }
  func testLowerCase____Short() { XCTAssertEqual(   lowerCase("$catDog"), "$cat dog") }
 
  func testCamelCase____Spaces() { XCTAssertEqual(   camelCase("Cats? & Dogs!"), "catsDogs") }
  func testPascalCase___Spaces() { XCTAssertEqual(  pascalCase("Cats? & Dogs!"), "CatsDogs") }
  func testKebabCase____Spaces() { XCTAssertEqual(   kebabCase("Cats? & Dogs!"), "cats-dogs") }
  func testSnakeCase____Spaces() { XCTAssertEqual(   snakeCase("Cats? & Dogs!"), "cats_dogs") }
  func testConstantCase_Spaces() { XCTAssertEqual(constantCase("Cats? & Dogs!"), "CATS_DOGS") }
  func testAdaCase______Spaces() { XCTAssertEqual(     adaCase("Cats? & Dogs!"), "Cats_Dogs") }
  func testCobolCase____Spaces() { XCTAssertEqual(   cobolCase("Cats? & Dogs!"), "CATS-DOGS") }
  func testTrainCase____Spaces() { XCTAssertEqual(   trainCase("Cats? & Dogs!"), "Cats-Dogs") }
  func testDotNotation__Spaces() { XCTAssertEqual( dotNotation("Cats? & Dogs!"), "Cats.Dogs") }
  func testPathCase_____Spaces() { XCTAssertEqual(    pathCase("Cats? & Dogs!"), "Cats?/&/Dogs!") }
  func testSpaceCase____Spaces() { XCTAssertEqual(   spaceCase("Cats? & Dogs!"), "Cats? & Dogs!") }
  func testCapitalCase__Spaces() { XCTAssertEqual( capitalCase("Cats? & Dogs!"), "Cats? & Dogs!") }
  func testUpperCase____Spaces() { XCTAssertEqual(   upperCase("Cats? & Dogs!"), "CATS? & DOGS!") }
  func testLowerCase____Spaces() { XCTAssertEqual(   lowerCase("Cats? & Dogs!"), "cats? & dogs!") }

  func testCamelCase____Spaces2() { XCTAssertEqual(   camelCase("I'm O.K.!"), "imOk") }
  func testPascalCase___Spaces2() { XCTAssertEqual(  pascalCase("I'm O.K.!"), "ImOk") }
  func testKebabCase____Spaces2() { XCTAssertEqual(   kebabCase("I'm O.K.!"), "im-ok") }
  func testSnakeCase____Spaces2() { XCTAssertEqual(   snakeCase("I'm O.K.!"), "im_ok") }
  func testConstantCase_Spaces2() { XCTAssertEqual(constantCase("I'm O.K.!"), "IM_OK") }
  func testAdaCase______Spaces2() { XCTAssertEqual(     adaCase("I'm O.K.!"), "Im_Ok") }
  func testCobolCase____Spaces2() { XCTAssertEqual(   cobolCase("I'm O.K.!"), "IM-OK") }
  func testTrainCase____Spaces2() { XCTAssertEqual(   trainCase("I'm O.K.!"), "Im-Ok") }
  func testDotNotation__Spaces2() { XCTAssertEqual( dotNotation("I'm O.K.!"), "Im.OK") }
  func testPathCase_____Spaces2() { XCTAssertEqual(    pathCase("I'm O.K.!"), "I\'m/O.K.!") }
  func testSpaceCase____Spaces2() { XCTAssertEqual(   spaceCase("I'm O.K.!"), "I\'m O.K.!") }
  func testCapitalCase__Spaces2() { XCTAssertEqual( capitalCase("I'm O.K.!"), "I\'m O.k.!") }
  func testUpperCase____Spaces2() { XCTAssertEqual(   upperCase("I'm O.K.!"), "I\'M O.K.!") }
  func testLowerCase____Spaces2() { XCTAssertEqual(   lowerCase("I'm O.K.!"), "i\'m o.k.!") }

  func testCamelCase____Keep() { XCTAssertEqual(   camelCase("$cat-Dog!", keep: ["$"]), "$catDog") }
  func testPascalCase___Keep() { XCTAssertEqual(  pascalCase("$cat-Dog!", keep: ["$"]), "$CatDog") }
  func testKebabCase____Keep() { XCTAssertEqual(   kebabCase("$cat-Dog!", keep: ["$"]), "$cat-dog") }
  func testSnakeCase____Keep() { XCTAssertEqual(   snakeCase("$cat-Dog!", keep: ["$"]), "$cat_dog") }
  func testConstantCase_Keep() { XCTAssertEqual(constantCase("$cat-Dog!", keep: ["$"]), "$CAT_DOG") }
  func testPathCase_____Keep() { XCTAssertEqual(    pathCase("$cat-Dog!", keep: ["$"]), "$cat/Dog") }
  func testSpaceCase____Keep() { XCTAssertEqual(   spaceCase("$cat-Dog!", keep: ["$"]), "$cat Dog") }
  func testCapitalCase__Keep() { XCTAssertEqual( capitalCase("$cat-Dog!", keep: ["$"]), "$Cat Dog") }
  func testUpperCase____Keep() { XCTAssertEqual(   upperCase("$cat-Dog!", keep: ["$"]), "$CAT DOG") }
  func testLowerCase____Keep() { XCTAssertEqual(   lowerCase("$cat-Dog!", keep: ["$"]), "$cat dog") }
  func testAdaCase______Keep() { XCTAssertEqual(     adaCase("$cat-Dog!", keep: ["$"]), "$Cat_Dog") }
  func testCobolCase____Keep() { XCTAssertEqual(   cobolCase("$cat-Dog!", keep: ["$"]), "$CAT-DOG") }
  func testTrainCase____Keep() { XCTAssertEqual(   trainCase("$cat-Dog!", keep: ["$"]), "$Cat-Dog") }
  func testDotNotation__Keep() { XCTAssertEqual( dotNotation("$cat-Dog!", keep: ["$"]), "$cat.Dog") }

  func testCamelCase____SpacesKeep() { XCTAssertEqual(   camelCase("Cats? & Dogs!", keep: ["&", "!"]), "cats&Dogs!") }
  func testPascalCase___SpacesKeep() { XCTAssertEqual(  pascalCase("Cats? & Dogs!", keep: ["&", "!"]), "Cats&Dogs!") }
  func testKebabCase____SpacesKeep() { XCTAssertEqual(   kebabCase("Cats? & Dogs!", keep: ["&", "!"]), "cats-&-dogs!") }
  func testSnakeCase____SpacesKeep() { XCTAssertEqual(   snakeCase("Cats? & Dogs!", keep: ["&", "!"]), "cats_&_dogs!") }
  func testConstantCase_SpacesKeep() { XCTAssertEqual(constantCase("Cats? & Dogs!", keep: ["&", "!"]), "CATS_&_DOGS!") }
  func testPathCase_____SpacesKeep() { XCTAssertEqual(    pathCase("Cats? & Dogs!", keep: ["&", "!"]), "Cats/&/Dogs!") }
  func testSpaceCase____SpacesKeep() { XCTAssertEqual(   spaceCase("Cats? & Dogs!", keep: ["&", "!"]), "Cats & Dogs!") }
  func testCapitalCase__SpacesKeep() { XCTAssertEqual( capitalCase("Cats? & Dogs!", keep: ["&", "!"]), "Cats & Dogs!") }
  func testUpperCase____SpacesKeep() { XCTAssertEqual(   upperCase("Cats? & Dogs!", keep: ["&", "!"]), "CATS & DOGS!") }
  func testLowerCase____SpacesKeep() { XCTAssertEqual(   lowerCase("Cats? & Dogs!", keep: ["&", "!"]), "cats & dogs!") }
  func testAdaCase______SpacesKeep() { XCTAssertEqual(     adaCase("Cats? & Dogs!", keep: ["&", "!"]), "Cats_&_Dogs!") }
  func testCobolCase____SpacesKeep() { XCTAssertEqual(   cobolCase("Cats? & Dogs!", keep: ["&", "!"]), "CATS-&-DOGS!") }
  func testTrainCase____SpacesKeep() { XCTAssertEqual(   trainCase("Cats? & Dogs!", keep: ["&", "!"]), "Cats-&-Dogs!") }
  func testDotNotation__SpacesKeep() { XCTAssertEqual( dotNotation("Cats? & Dogs!", keep: ["&", "!"]), "Cats.&.Dogs!") }

  func testCamelCase____SpacesKeep2() { XCTAssertEqual(   camelCase("I'm O.K.!", keep: ["."]), "imO.k.") }
  func testPascalCase___SpacesKeep2() { XCTAssertEqual(  pascalCase("I'm O.K.!", keep: ["."]), "ImO.k.") }
  func testKebabCase____SpacesKeep2() { XCTAssertEqual(   kebabCase("I'm O.K.!", keep: ["."]), "im-o.k.") }
  func testSnakeCase____SpacesKeep2() { XCTAssertEqual(   snakeCase("I'm O.K.!", keep: ["."]), "im_o.k.") }
  func testConstantCase_SpacesKeep2() { XCTAssertEqual(constantCase("I'm O.K.!", keep: ["."]), "IM_O.K.") }
  func testPathCase_____SpacesKeep2() { XCTAssertEqual(    pathCase("I'm O.K.!", keep: ["."]), "Im/O.K.") }
  func testSpaceCase____SpacesKeep2() { XCTAssertEqual(   spaceCase("I'm O.K.!", keep: ["."]), "Im O.K.") }
  func testCapitalCase__SpacesKeep2() { XCTAssertEqual( capitalCase("I'm O.K.!", keep: ["."]), "Im O.k.") }
  func testUpperCase____SpacesKeep2() { XCTAssertEqual(   upperCase("I'm O.K.!", keep: ["."]), "IM O.K.") }
  func testLowerCase____SpacesKeep2() { XCTAssertEqual(   lowerCase("I'm O.K.!", keep: ["."]), "im o.k.") }
  func testAdaCase______SpacesKeep2() { XCTAssertEqual(     adaCase("I'm O.K.!", keep: ["."]), "Im_O.k.") }
  func testCobolCase____SpacesKeep2() { XCTAssertEqual(   cobolCase("I'm O.K.!", keep: ["."]), "IM-O.K.") }
  func testTrainCase____SpacesKeep2() { XCTAssertEqual(   trainCase("I'm O.K.!", keep: ["."]), "Im-O.k.") }
  func testDotNotation__SpacesKeep2() { XCTAssertEqual( dotNotation("I'm O.K.!", keep: ["."]), "Im.O.K.") }

  func testCamelCase____Keepspecialcharacters() { XCTAssertEqual(   camelCase("日本catベルギーdogうちゅう", keepSpecialCharacters: true), "日本catベルギーdogうちゅう") }
  func testPascalCase___Keepspecialcharacters() { XCTAssertEqual(  pascalCase("日本catベルギーdogうちゅう", keepSpecialCharacters: true), "日本CatベルギーDogうちゅう") }
  func testKebabCase____Keepspecialcharacters() { XCTAssertEqual(   kebabCase("日本catベルギーdogうちゅう", keepSpecialCharacters: true), "日本catベルギーdogうちゅう") }
  func testSnakeCase____Keepspecialcharacters() { XCTAssertEqual(   snakeCase("日本catベルギーdogうちゅう", keepSpecialCharacters: true), "日本catベルギーdogうちゅう") }
  func testConstantCase_Keepspecialcharacters() { XCTAssertEqual(constantCase("日本catベルギーdogうちゅう", keepSpecialCharacters: true), "日本CATベルギーDOGうちゅう") }
  func testAdaCase______Keepspecialcharacters() { XCTAssertEqual(     adaCase("日本catベルギーdogうちゅう", keepSpecialCharacters: true), "日本CatベルギーDogうちゅう") }
  func testCobolCase____Keepspecialcharacters() { XCTAssertEqual(   cobolCase("日本catベルギーdogうちゅう", keepSpecialCharacters: true), "日本CATベルギーDOGうちゅう") }
  func testTrainCase____Keepspecialcharacters() { XCTAssertEqual(   trainCase("日本catベルギーdogうちゅう", keepSpecialCharacters: true), "日本CatベルギーDogうちゅう") }
  func testDotNotation__Keepspecialcharacters() { XCTAssertEqual( dotNotation("日本catベルギーdogうちゅう", keepSpecialCharacters: true), "日本catベルギーdogうちゅう") }
  func testPathCase_____Keepspecialcharacters() { XCTAssertEqual(    pathCase("日本catベルギーdogうちゅう", keepSpecialCharacters: true), "日本cat/ベルギーdog/うちゅう") }
  func testSpaceCase____Keepspecialcharacters() { XCTAssertEqual(   spaceCase("日本catベルギーdogうちゅう", keepSpecialCharacters: true), "日本catベルギーdogうちゅう") }
  func testCapitalCase__Keepspecialcharacters() { XCTAssertEqual( capitalCase("日本catベルギーdogうちゅう", keepSpecialCharacters: true), "日本CatベルギーDogうちゅう") }
  func testUpperCase____Keepspecialcharacters() { XCTAssertEqual(   upperCase("日本catベルギーdogうちゅう", keepSpecialCharacters: true), "日本CATベルギーDOGうちゅう") }
  func testLowerCase____Keepspecialcharacters() { XCTAssertEqual(   lowerCase("日本catベルギーdogうちゅう", keepSpecialCharacters: true), "日本catベルギーdogうちゅう") }
}


