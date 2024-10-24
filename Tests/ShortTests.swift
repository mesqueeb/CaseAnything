// swift-format-ignore-file
import Testing

@testable import CaseAnything

@Test func camelCase____Short() async throws { #expect(   camelCase("$catDog") == "catDog") }
@Test func pascalCase___Short() async throws { #expect(  pascalCase("$catDog") == "CatDog") }
@Test func kebabCase____Short() async throws { #expect(   kebabCase("$catDog") == "cat-dog") }
@Test func snakeCase____Short() async throws { #expect(   snakeCase("$catDog") == "cat_dog") }
@Test func constantCase_Short() async throws { #expect(constantCase("$catDog") == "CAT_DOG") }
@Test func adaCase______Short() async throws { #expect(     adaCase("$catDog") == "Cat_Dog") }
@Test func cobolCase____Short() async throws { #expect(   cobolCase("$catDog") == "CAT-DOG") }
@Test func trainCase____Short() async throws { #expect(   trainCase("$catDog") == "Cat-Dog") }
@Test func dotNotation__Short() async throws { #expect( dotNotation("$catDog") == "cat.Dog") }
@Test func pathCase_____Short() async throws { #expect(    pathCase("$catDog") == "$cat/Dog") }
@Test func spaceCase____Short() async throws { #expect(   spaceCase("$catDog") == "$cat Dog") }
@Test func capitalCase__Short() async throws { #expect( capitalCase("$catDog") == "$Cat Dog") }
@Test func upperCase____Short() async throws { #expect(   upperCase("$catDog") == "$CAT DOG") }
@Test func lowerCase____Short() async throws { #expect(   lowerCase("$catDog") == "$cat dog") }

@Test func camelCase____Spaces() async throws { #expect(   camelCase("Cats? & Dogs!") == "catsDogs") }
@Test func pascalCase___Spaces() async throws { #expect(  pascalCase("Cats? & Dogs!") == "CatsDogs") }
@Test func kebabCase____Spaces() async throws { #expect(   kebabCase("Cats? & Dogs!") == "cats-dogs") }
@Test func snakeCase____Spaces() async throws { #expect(   snakeCase("Cats? & Dogs!") == "cats_dogs") }
@Test func constantCase_Spaces() async throws { #expect(constantCase("Cats? & Dogs!") == "CATS_DOGS") }
@Test func adaCase______Spaces() async throws { #expect(     adaCase("Cats? & Dogs!") == "Cats_Dogs") }
@Test func cobolCase____Spaces() async throws { #expect(   cobolCase("Cats? & Dogs!") == "CATS-DOGS") }
@Test func trainCase____Spaces() async throws { #expect(   trainCase("Cats? & Dogs!") == "Cats-Dogs") }
@Test func dotNotation__Spaces() async throws { #expect( dotNotation("Cats? & Dogs!") == "Cats.Dogs") }
@Test func pathCase_____Spaces() async throws { #expect(    pathCase("Cats? & Dogs!") == "Cats?/&/Dogs!") }
@Test func spaceCase____Spaces() async throws { #expect(   spaceCase("Cats? & Dogs!") == "Cats? & Dogs!") }
@Test func capitalCase__Spaces() async throws { #expect( capitalCase("Cats? & Dogs!") == "Cats? & Dogs!") }
@Test func upperCase____Spaces() async throws { #expect(   upperCase("Cats? & Dogs!") == "CATS? & DOGS!") }
@Test func lowerCase____Spaces() async throws { #expect(   lowerCase("Cats? & Dogs!") == "cats? & dogs!") }

@Test func camelCase____Spaces2() async throws { #expect(   camelCase("I'm O.K.!") == "imOk") }
@Test func pascalCase___Spaces2() async throws { #expect(  pascalCase("I'm O.K.!") == "ImOk") }
@Test func kebabCase____Spaces2() async throws { #expect(   kebabCase("I'm O.K.!") == "im-ok") }
@Test func snakeCase____Spaces2() async throws { #expect(   snakeCase("I'm O.K.!") == "im_ok") }
@Test func constantCase_Spaces2() async throws { #expect(constantCase("I'm O.K.!") == "IM_OK") }
@Test func adaCase______Spaces2() async throws { #expect(     adaCase("I'm O.K.!") == "Im_Ok") }
@Test func cobolCase____Spaces2() async throws { #expect(   cobolCase("I'm O.K.!") == "IM-OK") }
@Test func trainCase____Spaces2() async throws { #expect(   trainCase("I'm O.K.!") == "Im-Ok") }
@Test func dotNotation__Spaces2() async throws { #expect( dotNotation("I'm O.K.!") == "Im.OK") }
@Test func pathCase_____Spaces2() async throws { #expect(    pathCase("I'm O.K.!") == "I\'m/O.K.!") }
@Test func spaceCase____Spaces2() async throws { #expect(   spaceCase("I'm O.K.!") == "I\'m O.K.!") }
@Test func capitalCase__Spaces2() async throws { #expect( capitalCase("I'm O.K.!") == "I\'m O.k.!") }
@Test func upperCase____Spaces2() async throws { #expect(   upperCase("I'm O.K.!") == "I\'M O.K.!") }
@Test func lowerCase____Spaces2() async throws { #expect(   lowerCase("I'm O.K.!") == "i\'m o.k.!") }

@Test func camelCase____Keep() async throws { #expect(   camelCase("$cat-Dog!", keep: ["$"]) == "$catDog") }
@Test func pascalCase___Keep() async throws { #expect(  pascalCase("$cat-Dog!", keep: ["$"]) == "$CatDog") }
@Test func kebabCase____Keep() async throws { #expect(   kebabCase("$cat-Dog!", keep: ["$"]) == "$cat-dog") }
@Test func snakeCase____Keep() async throws { #expect(   snakeCase("$cat-Dog!", keep: ["$"]) == "$cat_dog") }
@Test func constantCase_Keep() async throws { #expect(constantCase("$cat-Dog!", keep: ["$"]) == "$CAT_DOG") }
@Test func pathCase_____Keep() async throws { #expect(    pathCase("$cat-Dog!", keep: ["$"]) == "$cat/Dog") }
@Test func spaceCase____Keep() async throws { #expect(   spaceCase("$cat-Dog!", keep: ["$"]) == "$cat Dog") }
@Test func capitalCase__Keep() async throws { #expect( capitalCase("$cat-Dog!", keep: ["$"]) == "$Cat Dog") }
@Test func upperCase____Keep() async throws { #expect(   upperCase("$cat-Dog!", keep: ["$"]) == "$CAT DOG") }
@Test func lowerCase____Keep() async throws { #expect(   lowerCase("$cat-Dog!", keep: ["$"]) == "$cat dog") }
@Test func adaCase______Keep() async throws { #expect(     adaCase("$cat-Dog!", keep: ["$"]) == "$Cat_Dog") }
@Test func cobolCase____Keep() async throws { #expect(   cobolCase("$cat-Dog!", keep: ["$"]) == "$CAT-DOG") }
@Test func trainCase____Keep() async throws { #expect(   trainCase("$cat-Dog!", keep: ["$"]) == "$Cat-Dog") }
@Test func dotNotation__Keep() async throws { #expect( dotNotation("$cat-Dog!", keep: ["$"]) == "$cat.Dog") }

@Test func camelCase____SpacesKeep() async throws { #expect(   camelCase("Cats? & Dogs!", keep: ["&", "!"]) == "cats&Dogs!") }
@Test func pascalCase___SpacesKeep() async throws { #expect(  pascalCase("Cats? & Dogs!", keep: ["&", "!"]) == "Cats&Dogs!") }
@Test func kebabCase____SpacesKeep() async throws { #expect(   kebabCase("Cats? & Dogs!", keep: ["&", "!"]) == "cats-&-dogs!") }
@Test func snakeCase____SpacesKeep() async throws { #expect(   snakeCase("Cats? & Dogs!", keep: ["&", "!"]) == "cats_&_dogs!") }
@Test func constantCase_SpacesKeep() async throws { #expect(constantCase("Cats? & Dogs!", keep: ["&", "!"]) == "CATS_&_DOGS!") }
@Test func pathCase_____SpacesKeep() async throws { #expect(    pathCase("Cats? & Dogs!", keep: ["&", "!"]) == "Cats/&/Dogs!") }
@Test func spaceCase____SpacesKeep() async throws { #expect(   spaceCase("Cats? & Dogs!", keep: ["&", "!"]) == "Cats & Dogs!") }
@Test func capitalCase__SpacesKeep() async throws { #expect( capitalCase("Cats? & Dogs!", keep: ["&", "!"]) == "Cats & Dogs!") }
@Test func upperCase____SpacesKeep() async throws { #expect(   upperCase("Cats? & Dogs!", keep: ["&", "!"]) == "CATS & DOGS!") }
@Test func lowerCase____SpacesKeep() async throws { #expect(   lowerCase("Cats? & Dogs!", keep: ["&", "!"]) == "cats & dogs!") }
@Test func adaCase______SpacesKeep() async throws { #expect(     adaCase("Cats? & Dogs!", keep: ["&", "!"]) == "Cats_&_Dogs!") }
@Test func cobolCase____SpacesKeep() async throws { #expect(   cobolCase("Cats? & Dogs!", keep: ["&", "!"]) == "CATS-&-DOGS!") }
@Test func trainCase____SpacesKeep() async throws { #expect(   trainCase("Cats? & Dogs!", keep: ["&", "!"]) == "Cats-&-Dogs!") }
@Test func dotNotation__SpacesKeep() async throws { #expect( dotNotation("Cats? & Dogs!", keep: ["&", "!"]) == "Cats.&.Dogs!") }

@Test func camelCase____SpacesKeep2() async throws { #expect(   camelCase("I'm O.K.!", keep: ["."]) == "imO.k.") }
@Test func pascalCase___SpacesKeep2() async throws { #expect(  pascalCase("I'm O.K.!", keep: ["."]) == "ImO.k.") }
@Test func kebabCase____SpacesKeep2() async throws { #expect(   kebabCase("I'm O.K.!", keep: ["."]) == "im-o.k.") }
@Test func snakeCase____SpacesKeep2() async throws { #expect(   snakeCase("I'm O.K.!", keep: ["."]) == "im_o.k.") }
@Test func constantCase_SpacesKeep2() async throws { #expect(constantCase("I'm O.K.!", keep: ["."]) == "IM_O.K.") }
@Test func pathCase_____SpacesKeep2() async throws { #expect(    pathCase("I'm O.K.!", keep: ["."]) == "Im/O.K.") }
@Test func spaceCase____SpacesKeep2() async throws { #expect(   spaceCase("I'm O.K.!", keep: ["."]) == "Im O.K.") }
@Test func capitalCase__SpacesKeep2() async throws { #expect( capitalCase("I'm O.K.!", keep: ["."]) == "Im O.k.") }
@Test func upperCase____SpacesKeep2() async throws { #expect(   upperCase("I'm O.K.!", keep: ["."]) == "IM O.K.") }
@Test func lowerCase____SpacesKeep2() async throws { #expect(   lowerCase("I'm O.K.!", keep: ["."]) == "im o.k.") }
@Test func adaCase______SpacesKeep2() async throws { #expect(     adaCase("I'm O.K.!", keep: ["."]) == "Im_O.k.") }
@Test func cobolCase____SpacesKeep2() async throws { #expect(   cobolCase("I'm O.K.!", keep: ["."]) == "IM-O.K.") }
@Test func trainCase____SpacesKeep2() async throws { #expect(   trainCase("I'm O.K.!", keep: ["."]) == "Im-O.k.") }
@Test func dotNotation__SpacesKeep2() async throws { #expect( dotNotation("I'm O.K.!", keep: ["."]) == "Im.O.K.") }

@Test func camelCase____Keepspecialcharacters() async throws { #expect(   camelCase("日本catベルギーdogうちゅう", keepSpecialCharacters: true) == "日本catベルギーdogうちゅう") }
@Test func pascalCase___Keepspecialcharacters() async throws { #expect(  pascalCase("日本catベルギーdogうちゅう", keepSpecialCharacters: true) == "日本CatベルギーDogうちゅう") }
@Test func kebabCase____Keepspecialcharacters() async throws { #expect(   kebabCase("日本catベルギーdogうちゅう", keepSpecialCharacters: true) == "日本catベルギーdogうちゅう") }
@Test func snakeCase____Keepspecialcharacters() async throws { #expect(   snakeCase("日本catベルギーdogうちゅう", keepSpecialCharacters: true) == "日本catベルギーdogうちゅう") }
@Test func constantCase_Keepspecialcharacters() async throws { #expect(constantCase("日本catベルギーdogうちゅう", keepSpecialCharacters: true) == "日本CATベルギーDOGうちゅう") }
@Test func adaCase______Keepspecialcharacters() async throws { #expect(     adaCase("日本catベルギーdogうちゅう", keepSpecialCharacters: true) == "日本CatベルギーDogうちゅう") }
@Test func cobolCase____Keepspecialcharacters() async throws { #expect(   cobolCase("日本catベルギーdogうちゅう", keepSpecialCharacters: true) == "日本CATベルギーDOGうちゅう") }
@Test func trainCase____Keepspecialcharacters() async throws { #expect(   trainCase("日本catベルギーdogうちゅう", keepSpecialCharacters: true) == "日本CatベルギーDogうちゅう") }
@Test func dotNotation__Keepspecialcharacters() async throws { #expect( dotNotation("日本catベルギーdogうちゅう", keepSpecialCharacters: true) == "日本catベルギーdogうちゅう") }
@Test func pathCase_____Keepspecialcharacters() async throws { #expect(    pathCase("日本catベルギーdogうちゅう", keepSpecialCharacters: true) == "日本cat/ベルギーdog/うちゅう") }
@Test func spaceCase____Keepspecialcharacters() async throws { #expect(   spaceCase("日本catベルギーdogうちゅう", keepSpecialCharacters: true) == "日本catベルギーdogうちゅう") }
@Test func capitalCase__Keepspecialcharacters() async throws { #expect( capitalCase("日本catベルギーdogうちゅう", keepSpecialCharacters: true) == "日本CatベルギーDogうちゅう") }
@Test func upperCase____Keepspecialcharacters() async throws { #expect(   upperCase("日本catベルギーdogうちゅう", keepSpecialCharacters: true) == "日本CATベルギーDOGうちゅう") }
@Test func lowerCase____Keepspecialcharacters() async throws { #expect(   lowerCase("日本catベルギーdogうちゅう", keepSpecialCharacters: true) == "日本catベルギーdogうちゅう") }


