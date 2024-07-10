# CaseAnything 🐫

[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fmesqueeb%2FCaseAnything%2Fbadge%3Ftype%3Dswift-versions)](https://swiftpackageindex.com/mesqueeb/CaseAnything)
[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fmesqueeb%2FCaseAnything%2Fbadge%3Ftype%3Dplatforms)](https://swiftpackageindex.com/mesqueeb/CaseAnything)

```
.package(url: "https://github.com/mesqueeb/CaseAnything", from: "0.1.5")
```

14 case changing functions: camelCase, kebab-case, PascalCase **and more**...<br />
A simple integration with nano package size. (SMALL footprint!)

## Motivation

I created this package because the other package that change cases do not cover all the 14 possibilities mine does.

<table>
  <tr>
    <td>
      <p>Some features I focused on:</p>
      <li>small footprint</li>
      <li>awesome code popup documentation</li>
      <li>complete coverage with unit testing</li>
      <li>0 dependencies</li>
    </td>
    <td>
      <p>CaseAnything is used in...</p>
      <li>Famous Mac app <a href="https://pilotmoon.com/popclip">Popclip 💊</a></li>
      <li><a href="https://github.com/apideck-libraries/portman">Lottie-player ∫</a></li>
      <li>OpenAPI CLI <a href="https://github.com/apideck-libraries/portman">Portman 👨🏽‍🚀</a></li>
      <li>and <a href="https://github.com/mesqueeb/case-anything/network/dependents">100s more</a>...</li>
    </td>
  </tr>
</table>

## Usage

```swift
import CaseAnything
```

CaseAnything has different behaviour if the string you pass has spaces or not.

- Without spaces it will split and format on every "part" it can detect
- With spaces it will split and format on every "word" based on those spaces

### Strings without spaces

| Name                              | Input example                                            | Output example |
| --------------------------------- | -------------------------------------------------------- | -------------- |
| 🐪 camelCase                      | `camelCase("$catDog")`                                   | `catDog`       |
| 🐫 PascalCase<br />UpperCamelCase | `pascalCase("$catDog")`<br />`upperCamelCase("$catDog")` | `CatDog`       |
| 🥙 kebab-case                     | `kebabCase("$catDog")`                                   | `cat-dog`      |
| 🐍 snake_case                     | `snakeCase("$catDog")`                                   | `cat_dog`      |
| 📣 CONSTANT_CASE                  | `constantCase("$catDog")`                                | `CAT_DOG`      |
| 🚂 Train-Case                     | `trainCase("$catDog")`                                   | `Cat-Dog`      |
| 🕊 Ada_Case                        | `adaCase("$catDog")`                                     | `Cat_Dog`      |
| 👔 COBOL-CASE                     | `cobolCase("$catDog")`                                   | `CAT-DOG`      |
| 📍 Dot.notation                   | `dotNotation("$catDog")`                                 | `cat.Dog`      |
| 📂 Path/case                      | `pathCase("$catDog")`                                    | `$cat/Dog`     |
| 🛰 Space case                      | `spaceCase("$catDog")`                                   | `$cat Dog`     |
| 🏛 Capital Case                    | `capitalCase("$catDog")`                                 | `$Cat Dog`     |
| 🔡 lower case                     | `lowerCase("$catDog")`                                   | `$cat dog`     |
| 🔠 UPPER CASE                     | `upperCase("$catDog")`                                   | `$CAT DOG`     |

#### Special Characters

You can see that most functions by default remove special characters, and some functions keep special characters.

<table>
  <tr>
    <th>functions that <i>remove</i> special characters*</th>
    <th>functions that <i>keep</i> special characters*</th>
  </tr>
  <tr>
    <td>
      <li>camelCase</li>
      <li>pascalCase</li>
      <li>kebabCase</li>
      <li>snakeCase</li>
      <li>constantCase</li>
      <li>trainCase</li>
      <li>adaCase</li>
      <li>cobolCase</li>
      <li>dotNotation</li>
    </td>
    <td>
      <li>pathCase</li>
      <li>spaceCase</li>
      <li>capitalCase</li>
      <li>lowerCase</li>
      <li>upperCase</li>
    </td>
  </tr>
</table>

\*You can control wether or not to _keep or remove_ special characters like so:

```swift
// default:
camelCase("$catDog") == "catDog"
// force keeping special characters:
camelCase("$catDog", keepSpecialCharacters: true) == "$catDog"

// default:
pathCase("$catDog") == "$cat/Dog"
// force removing special characters:
pathCase("$catDog", keepSpecialCharacters: false) == "cat/Dog"
```

#### Case Changing

These cases _**do not change the casing**_ of the words:

- dotNotation
- pathCase
- spaceCase

```swift
// default:
dotNotation("$catDog") == "cat.Dog"
// force lower case:
dotNotation("$catDog").toLowerCase() == "cat.dog"
```

### Strings with spaces

As soon as there is a space in the target string, it will regard the input as a _sentence_ and only split each part at the spaces.

| Name                              | Input example                                                | Output example |
| --------------------------------- | ------------------------------------------------------------ | -------------- |
| 🐪 camelCase                      | `camelCase("I'm O.K.!")`                                     | `imOk`         |
| 🐫 PascalCase<br />UpperCamelCase | `pascalCase("I'm O.K.!")`<br />`upperCamelCase("I'm O.K.!")` | `ImOk`         |
| 🥙 kebab-case                     | `kebabCase("I'm O.K.!")`                                     | `im-ok`        |
| 🐍 snake_case                     | `snakeCase("I'm O.K.!")`                                     | `im_ok`        |
| 📣 CONSTANT_CASE                  | `constantCase("I'm O.K.!")`                                  | `IM_OK`        |
| 🚂 Train-Case                     | `trainCase("I'm O.K.!")`                                     | `Im-Ok`        |
| 🕊 Ada_Case                        | `adaCase("I'm O.K.!")`                                       | `Im_Ok`        |
| 👔 COBOL-CASE                     | `cobolCase("I'm O.K.!")`                                     | `IM-OK`        |
| 📍 Dot.notation                   | `dotNotation("I'm O.K.!")`                                   | `Im.OK`        |
| 📂 Path/case                      | `pathCase("I'm O.K.!")`                                      | `I'm/O.K.!`    |
| 🛰 Space case                      | `spaceCase("I'm O.K.!")`                                     | `I'm O.K.!`    |
| 🏛 Capital Case                    | `capitalCase("I'm O.K.!")`                                   | `I'm O.k.!`    |
| 🔡 lower case                     | `lowerCase("I'm O.K.!")`                                     | `i'm o.k.!`    |
| 🔠 UPPER CASE                     | `upperCase("I'm O.K.!")`                                     | `I'M O.K.!`    |

Also note, that multiple sequential spaces are treated as one space.

### Keep only certain special characters

Instead of removing all special characters, you can opt to keep some special characters.

In the example below we see:

- input: `$cat-dog`
- desired output: `$CatDog`

```swift
pascalCase("$cat-dog", keepSpecialCharacters: false)
// CatDog   → not what we want

pascalCase("$cat-dog", keepSpecialCharacters: true)
// $Cat-Dog → not what we want

pascalCase("$cat-dog", keep: ["$"])
// $CatDog  → desired output
```

### Convert special characters into alphabet

I have extended regular alphabet with the most common _Latin-1 Supplement_ special characters.

The coolest thing about this library is that it will **"convert" special characters into regular alphabet** for the cases used as variable names! 😎

<!-- prettier-ignore-start -->
```swift
// CONVERTS special characters:
camelCase("Çâfé Ågård")    == "cafeAgard"
pascalCase("Çâfé Ågård")   == "CafeAgard"
kebabCase("Çâfé Ågård")    == "cafe-agard"
snakeCase("Çâfé Ågård")    == "cafe_agard"
constantCase("Çâfé Ågård") == "CAFE_AGARD"
trainCase("Çâfé Ågård")    == "Cafe-Agard"
adaCase("Çâfé Ågård")      == "Cafe_Agard"
cobolCase("Çâfé Ågård")    == "CAFE-AGARD"
dotNotation("Çâfé Ågård")  == "Cafe.Agard"

// DOES NOT convert special characters:
spaceCase("Çâfé Ågård")    == "Çâfé Ågård"
pathCase("Çâfé Ågård")     == "Çâfé/Ågård"
lowerCase("Çâfé Ågård")    == "çâfé ågård"
upperCase("Çâfé Ågård")    == "ÇÂFÉ ÅGÅRD"
capitalCase("Çâfé Ågård")  == "Çâfé Ågård"
```
<!-- prettier-ignore-end -->

## Code Docs

I have made sure there is great documentation available on hover!

![docs preview](.media/docsCaseAnything.png?raw=true)

## Keyboard shortcuts

With [Better Touch Tool](https://folivora.ai) you can set up keyboard shortcuts to convert selected text with JavaScript. This repo provides an easy to install preset that has shortcuts for pascal, kebab and camel case! (thanks to [@AndrewKoch](https://github.com/AndrewKoch)) It even supports multi-cursors in VSCode!

Here is an example triggering keyboard shortcuts to convert the selected text to PascalCase; kebab-case; camelCase:

![keyboard shortcuts example](.media/case-anything%20VSCode.gif?raw=true)

You can download the BTT preset from the source code: [CaseAnything.bttpreset](CaseAnything.bttpreset).

## Source code

What keeps my package small, is that literally just uses a regex to separate "words".

```swift
// the source code is similar to:
public func splitOnSpecialChars(string: String) -> [String] {
  let splitRegex = try! NSRegularExpression(pattern: "^[a-z]+|[A-Z][a-z]+|[a-z]+|[0-9]+|[A-Z]+(?![a-z])")
  return splitRegex.matches(in: string, range: NSRange(string.startIndex..., in: string))
}
```

The actual regex used is a little bit more comprehensive and can be found [here](https://github.com/mesqueeb/CaseAnything/blob/main/Sources/Utils.swift#L9).
