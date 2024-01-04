// swiftformat:disable all
import XCTest
@testable import CaseAnything

final class ComprehensiveTests: XCTestCase {
// a bunch of different combinations

func testCamelCase() {
  XCTAssertEqual(camelCase("ponytaVaporeonPOLIWRATH_ButterfreeA"), "ponytaVaporeonPoliwrathButterfreeA")
  XCTAssertEqual(camelCase("PonytaVaporeonPOLIWRATH_ButterfreeA"), "ponytaVaporeonPoliwrathButterfreeA")
  XCTAssertEqual(camelCase("ponyta-vaporeon-POLIWRATH-ButterfreeA"), "ponytaVaporeonPoliwrathButterfreeA")
  XCTAssertEqual(camelCase("Ponyta~vaporeon~POLIWRATH/ButterfreeA"), "ponytaVaporeonPoliwrathButterfreeA")
  XCTAssertEqual(camelCase("ponyta_vaporeon_POLIWRATH_ButterfreeA"), "ponytaVaporeonPoliwrathButterfreeA")
  XCTAssertEqual(camelCase("ponyta_Vaporeon_POLIWRATH_ButterfreeA"), "ponytaVaporeonPoliwrathButterfreeA")
  XCTAssertEqual(camelCase("ponyta.Vaporeon.POLIWRATH.ButterfreeA"), "ponytaVaporeonPoliwrathButterfreeA")
}
func testPascalCase() {
  XCTAssertEqual(pascalCase("ponytaVaporeonPOLIWRATH_ButterfreeA"), "PonytaVaporeonPoliwrathButterfreeA")
  XCTAssertEqual(pascalCase("PonytaVaporeonPOLIWRATH_ButterfreeA"), "PonytaVaporeonPoliwrathButterfreeA")
  XCTAssertEqual(pascalCase("ponyta-vaporeon-POLIWRATH-ButterfreeA"), "PonytaVaporeonPoliwrathButterfreeA")
  XCTAssertEqual(pascalCase("Ponyta~vaporeon~POLIWRATH/ButterfreeA"), "PonytaVaporeonPoliwrathButterfreeA")
  XCTAssertEqual(pascalCase("ponyta_vaporeon_POLIWRATH_ButterfreeA"), "PonytaVaporeonPoliwrathButterfreeA")
  XCTAssertEqual(pascalCase("ponyta_Vaporeon_POLIWRATH_ButterfreeA"), "PonytaVaporeonPoliwrathButterfreeA")
  XCTAssertEqual(pascalCase("ponyta.Vaporeon.POLIWRATH.ButterfreeA"), "PonytaVaporeonPoliwrathButterfreeA")
}
func testKebabCase() {
  XCTAssertEqual(kebabCase("ponytaVaporeonPOLIWRATH_ButterfreeA"), "ponyta-vaporeon-poliwrath-butterfree-a")
  XCTAssertEqual(kebabCase("PonytaVaporeonPOLIWRATH_ButterfreeA"), "ponyta-vaporeon-poliwrath-butterfree-a")
  XCTAssertEqual(kebabCase("ponyta-vaporeon-POLIWRATH-ButterfreeA"), "ponyta-vaporeon-poliwrath-butterfree-a")
  XCTAssertEqual(kebabCase("Ponyta~vaporeon~POLIWRATH/ButterfreeA"), "ponyta-vaporeon-poliwrath-butterfree-a")
  XCTAssertEqual(kebabCase("ponyta_vaporeon_POLIWRATH_ButterfreeA"), "ponyta-vaporeon-poliwrath-butterfree-a")
  XCTAssertEqual(kebabCase("ponyta_Vaporeon_POLIWRATH_ButterfreeA"), "ponyta-vaporeon-poliwrath-butterfree-a")
  XCTAssertEqual(kebabCase("ponyta.Vaporeon.POLIWRATH.ButterfreeA"), "ponyta-vaporeon-poliwrath-butterfree-a")
}
func testSnakeCase() {
  XCTAssertEqual(snakeCase("ponytaVaporeonPOLIWRATH_ButterfreeA"), "ponyta_vaporeon_poliwrath_butterfree_a")
  XCTAssertEqual(snakeCase("PonytaVaporeonPOLIWRATH_ButterfreeA"), "ponyta_vaporeon_poliwrath_butterfree_a")
  XCTAssertEqual(snakeCase("ponyta-vaporeon-POLIWRATH-ButterfreeA"), "ponyta_vaporeon_poliwrath_butterfree_a")
  XCTAssertEqual(snakeCase("Ponyta~vaporeon~POLIWRATH/ButterfreeA"), "ponyta_vaporeon_poliwrath_butterfree_a")
  XCTAssertEqual(snakeCase("ponyta_vaporeon_POLIWRATH_ButterfreeA"), "ponyta_vaporeon_poliwrath_butterfree_a")
  XCTAssertEqual(snakeCase("ponyta_Vaporeon_POLIWRATH_ButterfreeA"), "ponyta_vaporeon_poliwrath_butterfree_a")
  XCTAssertEqual(snakeCase("ponyta.Vaporeon.POLIWRATH.ButterfreeA"), "ponyta_vaporeon_poliwrath_butterfree_a")
}
func testConstantCase() {
  XCTAssertEqual(constantCase("ponytaVaporeonPOLIWRATH_ButterfreeA"), "PONYTA_VAPOREON_POLIWRATH_BUTTERFREE_A")
  XCTAssertEqual(constantCase("PonytaVaporeonPOLIWRATH_ButterfreeA"), "PONYTA_VAPOREON_POLIWRATH_BUTTERFREE_A")
  XCTAssertEqual(constantCase("ponyta-vaporeon-POLIWRATH-ButterfreeA"), "PONYTA_VAPOREON_POLIWRATH_BUTTERFREE_A")
  XCTAssertEqual(constantCase("Ponyta~vaporeon~POLIWRATH/ButterfreeA"), "PONYTA_VAPOREON_POLIWRATH_BUTTERFREE_A")
  XCTAssertEqual(constantCase("ponyta_vaporeon_POLIWRATH_ButterfreeA"), "PONYTA_VAPOREON_POLIWRATH_BUTTERFREE_A")
  XCTAssertEqual(constantCase("ponyta_Vaporeon_POLIWRATH_ButterfreeA"), "PONYTA_VAPOREON_POLIWRATH_BUTTERFREE_A")
  XCTAssertEqual(constantCase("ponyta.Vaporeon.POLIWRATH.ButterfreeA"), "PONYTA_VAPOREON_POLIWRATH_BUTTERFREE_A")
}
func testDotNotation() {
  XCTAssertEqual(dotNotation("ponytaVaporeonPOLIWRATH_ButterfreeA"), "ponyta.Vaporeon.POLIWRATH.Butterfree.A")
  XCTAssertEqual(dotNotation("PonytaVaporeonPOLIWRATH_ButterfreeA"), "Ponyta.Vaporeon.POLIWRATH.Butterfree.A")
  XCTAssertEqual(dotNotation("ponyta-vaporeon-POLIWRATH-ButterfreeA"), "ponyta.vaporeon.POLIWRATH.Butterfree.A")
  XCTAssertEqual(dotNotation("Ponyta~vaporeon~POLIWRATH/ButterfreeA"), "Ponyta.vaporeon.POLIWRATH.Butterfree.A")
  XCTAssertEqual(dotNotation("ponyta_vaporeon_POLIWRATH_ButterfreeA"), "ponyta.vaporeon.POLIWRATH.Butterfree.A")
  XCTAssertEqual(dotNotation("ponyta_Vaporeon_POLIWRATH_ButterfreeA"), "ponyta.Vaporeon.POLIWRATH.Butterfree.A")
  XCTAssertEqual(dotNotation("ponyta.Vaporeon.POLIWRATH.ButterfreeA"), "ponyta.Vaporeon.POLIWRATH.Butterfree.A")
}
func testAdaCase() {
  XCTAssertEqual(adaCase("ponytaVaporeonPOLIWRATH_ButterfreeA"), "Ponyta_Vaporeon_Poliwrath_Butterfree_A")
  XCTAssertEqual(adaCase("PonytaVaporeonPOLIWRATH_ButterfreeA"), "Ponyta_Vaporeon_Poliwrath_Butterfree_A")
  XCTAssertEqual(adaCase("ponyta-vaporeon-POLIWRATH-ButterfreeA"), "Ponyta_Vaporeon_Poliwrath_Butterfree_A")
  XCTAssertEqual(adaCase("Ponyta~vaporeon~POLIWRATH/ButterfreeA"), "Ponyta_Vaporeon_Poliwrath_Butterfree_A")
  XCTAssertEqual(adaCase("ponyta_vaporeon_POLIWRATH_ButterfreeA"), "Ponyta_Vaporeon_Poliwrath_Butterfree_A")
  XCTAssertEqual(adaCase("ponyta_Vaporeon_POLIWRATH_ButterfreeA"), "Ponyta_Vaporeon_Poliwrath_Butterfree_A")
  XCTAssertEqual(adaCase("ponyta.Vaporeon.POLIWRATH.ButterfreeA"), "Ponyta_Vaporeon_Poliwrath_Butterfree_A")
}
func testCobolCase() {
  XCTAssertEqual(cobolCase("ponytaVaporeonPOLIWRATH_ButterfreeA"), "PONYTA-VAPOREON-POLIWRATH-BUTTERFREE-A")
  XCTAssertEqual(cobolCase("PonytaVaporeonPOLIWRATH_ButterfreeA"), "PONYTA-VAPOREON-POLIWRATH-BUTTERFREE-A")
  XCTAssertEqual(cobolCase("ponyta-vaporeon-POLIWRATH-ButterfreeA"), "PONYTA-VAPOREON-POLIWRATH-BUTTERFREE-A")
  XCTAssertEqual(cobolCase("Ponyta~vaporeon~POLIWRATH/ButterfreeA"), "PONYTA-VAPOREON-POLIWRATH-BUTTERFREE-A")
  XCTAssertEqual(cobolCase("ponyta_vaporeon_POLIWRATH_ButterfreeA"), "PONYTA-VAPOREON-POLIWRATH-BUTTERFREE-A")
  XCTAssertEqual(cobolCase("ponyta_Vaporeon_POLIWRATH_ButterfreeA"), "PONYTA-VAPOREON-POLIWRATH-BUTTERFREE-A")
  XCTAssertEqual(cobolCase("ponyta.Vaporeon.POLIWRATH.ButterfreeA"), "PONYTA-VAPOREON-POLIWRATH-BUTTERFREE-A")
}
func testTrainCase() {
  XCTAssertEqual(trainCase("ponytaVaporeonPOLIWRATH_ButterfreeA"), "Ponyta-Vaporeon-Poliwrath-Butterfree-A")
  XCTAssertEqual(trainCase("PonytaVaporeonPOLIWRATH_ButterfreeA"), "Ponyta-Vaporeon-Poliwrath-Butterfree-A")
  XCTAssertEqual(trainCase("ponyta-vaporeon-POLIWRATH-ButterfreeA"), "Ponyta-Vaporeon-Poliwrath-Butterfree-A")
  XCTAssertEqual(trainCase("Ponyta~vaporeon~POLIWRATH/ButterfreeA"), "Ponyta-Vaporeon-Poliwrath-Butterfree-A")
  XCTAssertEqual(trainCase("ponyta_vaporeon_POLIWRATH_ButterfreeA"), "Ponyta-Vaporeon-Poliwrath-Butterfree-A")
  XCTAssertEqual(trainCase("ponyta_Vaporeon_POLIWRATH_ButterfreeA"), "Ponyta-Vaporeon-Poliwrath-Butterfree-A")
  XCTAssertEqual(trainCase("ponyta.Vaporeon.POLIWRATH.ButterfreeA"), "Ponyta-Vaporeon-Poliwrath-Butterfree-A")
}
func testLowerCase() {
  XCTAssertEqual(lowerCase("ponytaVaporeonPOLIWRATH_ButterfreeA"), "ponyta vaporeon poliwrath_butterfree a")
  XCTAssertEqual(lowerCase("PonytaVaporeonPOLIWRATH_ButterfreeA"), "ponyta vaporeon poliwrath_butterfree a")
  XCTAssertEqual(lowerCase("ponyta-vaporeon-POLIWRATH-ButterfreeA"), "ponyta-vaporeon-poliwrath-butterfree a")
  XCTAssertEqual(lowerCase("Ponyta~vaporeon~POLIWRATH/ButterfreeA"), "ponyta~vaporeon~poliwrath/butterfree a")
  XCTAssertEqual(lowerCase("ponyta_vaporeon_POLIWRATH_ButterfreeA"), "ponyta_vaporeon_poliwrath_butterfree a")
  XCTAssertEqual(lowerCase("ponyta_Vaporeon_POLIWRATH_ButterfreeA"), "ponyta_vaporeon_poliwrath_butterfree a")
  XCTAssertEqual(lowerCase("ponyta.Vaporeon.POLIWRATH.ButterfreeA"), "ponyta.vaporeon.poliwrath.butterfree a")
}
func testUpperCase() {
  XCTAssertEqual(upperCase("ponytaVaporeonPOLIWRATH_ButterfreeA"), "PONYTA VAPOREON POLIWRATH_BUTTERFREE A")
  XCTAssertEqual(upperCase("PonytaVaporeonPOLIWRATH_ButterfreeA"), "PONYTA VAPOREON POLIWRATH_BUTTERFREE A")
  XCTAssertEqual(upperCase("ponyta-vaporeon-POLIWRATH-ButterfreeA"), "PONYTA-VAPOREON-POLIWRATH-BUTTERFREE A")
  XCTAssertEqual(upperCase("Ponyta~vaporeon~POLIWRATH/ButterfreeA"), "PONYTA~VAPOREON~POLIWRATH/BUTTERFREE A")
  XCTAssertEqual(upperCase("ponyta_vaporeon_POLIWRATH_ButterfreeA"), "PONYTA_VAPOREON_POLIWRATH_BUTTERFREE A")
  XCTAssertEqual(upperCase("ponyta_Vaporeon_POLIWRATH_ButterfreeA"), "PONYTA_VAPOREON_POLIWRATH_BUTTERFREE A")
  XCTAssertEqual(upperCase("ponyta.Vaporeon.POLIWRATH.ButterfreeA"), "PONYTA.VAPOREON.POLIWRATH.BUTTERFREE A")
}
func testCapitalCase() {
  XCTAssertEqual(capitalCase("ponytaVaporeonPOLIWRATH_ButterfreeA"), "Ponyta Vaporeon Poliwrath_Butterfree A")
  XCTAssertEqual(capitalCase("PonytaVaporeonPOLIWRATH_ButterfreeA"), "Ponyta Vaporeon Poliwrath_Butterfree A")
  XCTAssertEqual(capitalCase("ponyta-vaporeon-POLIWRATH-ButterfreeA"), "Ponyta-Vaporeon-Poliwrath-Butterfree A")
  XCTAssertEqual(capitalCase("Ponyta~vaporeon~POLIWRATH/ButterfreeA"), "Ponyta~Vaporeon~Poliwrath/Butterfree A")
  XCTAssertEqual(capitalCase("ponyta_vaporeon_POLIWRATH_ButterfreeA"), "Ponyta_Vaporeon_Poliwrath_Butterfree A")
  XCTAssertEqual(capitalCase("ponyta_Vaporeon_POLIWRATH_ButterfreeA"), "Ponyta_Vaporeon_Poliwrath_Butterfree A")
  XCTAssertEqual(capitalCase("ponyta.Vaporeon.POLIWRATH.ButterfreeA"), "Ponyta.Vaporeon.Poliwrath.Butterfree A")
}
func testSpaceCase() {
  XCTAssertEqual(spaceCase("ponytaVaporeonPOLIWRATH_ButterfreeA"), "ponyta Vaporeon POLIWRATH_Butterfree A")
  XCTAssertEqual(spaceCase("PonytaVaporeonPOLIWRATH_ButterfreeA"), "Ponyta Vaporeon POLIWRATH_Butterfree A")
  XCTAssertEqual(spaceCase("ponyta-vaporeon-POLIWRATH-ButterfreeA"), "ponyta-vaporeon-POLIWRATH-Butterfree A")
  XCTAssertEqual(spaceCase("Ponyta~vaporeon~POLIWRATH/ButterfreeA"), "Ponyta~vaporeon~POLIWRATH/Butterfree A")
  XCTAssertEqual(spaceCase("ponyta_vaporeon_POLIWRATH_ButterfreeA"), "ponyta_vaporeon_POLIWRATH_Butterfree A")
  XCTAssertEqual(spaceCase("ponyta_Vaporeon_POLIWRATH_ButterfreeA"), "ponyta_Vaporeon_POLIWRATH_Butterfree A")
  XCTAssertEqual(spaceCase("ponyta.Vaporeon.POLIWRATH.ButterfreeA"), "ponyta.Vaporeon.POLIWRATH.Butterfree A")
}

func testPathCase() {
  XCTAssertEqual(pathCase("ponytaVaporeonPOLIWRATH_ButterfreeA"), "ponyta/Vaporeon/POLIWRATH/_Butterfree/A")
  XCTAssertEqual(pathCase("PonytaVaporeonPOLIWRATH_ButterfreeA"), "Ponyta/Vaporeon/POLIWRATH/_Butterfree/A")
  XCTAssertEqual(pathCase("ponyta-vaporeon-POLIWRATH-ButterfreeA"), "ponyta/-vaporeon/-POLIWRATH/-Butterfree/A")
  XCTAssertEqual(pathCase("Ponyta~vaporeon~POLIWRATH/ButterfreeA"), "Ponyta/~vaporeon/~POLIWRATH/Butterfree/A")
  XCTAssertEqual(pathCase("ponyta_vaporeon_POLIWRATH_ButterfreeA"), "ponyta/_vaporeon/_POLIWRATH/_Butterfree/A")
  XCTAssertEqual(pathCase("ponyta_Vaporeon_POLIWRATH_ButterfreeA"), "ponyta/_Vaporeon/_POLIWRATH/_Butterfree/A")
  XCTAssertEqual(pathCase("ponyta.Vaporeon.POLIWRATH.ButterfreeA"), "ponyta/.Vaporeon/.POLIWRATH/.Butterfree/A")
}
func testLowerCase_stripSpecialCharacters() {
  XCTAssertEqual(lowerCase("ponytaVaporeonPOLIWRATH_ButterfreeA", keepSpecialCharacters: false), "ponyta vaporeon poliwrath butterfree a") // prettier-ignore
  XCTAssertEqual(lowerCase("PonytaVaporeonPOLIWRATH_ButterfreeA", keepSpecialCharacters: false), "ponyta vaporeon poliwrath butterfree a") // prettier-ignore
  XCTAssertEqual(lowerCase("ponyta-vaporeon-POLIWRATH-ButterfreeA", keepSpecialCharacters: false), "ponyta vaporeon poliwrath butterfree a") // prettier-ignore
  XCTAssertEqual(lowerCase("Ponyta~vaporeon~POLIWRATH/ButterfreeA", keepSpecialCharacters: false), "ponyta vaporeon poliwrath butterfree a") // prettier-ignore
  XCTAssertEqual(lowerCase("ponyta_vaporeon_POLIWRATH_ButterfreeA", keepSpecialCharacters: false), "ponyta vaporeon poliwrath butterfree a") // prettier-ignore
  XCTAssertEqual(lowerCase("ponyta_Vaporeon_POLIWRATH_ButterfreeA", keepSpecialCharacters: false), "ponyta vaporeon poliwrath butterfree a") // prettier-ignore
  XCTAssertEqual(lowerCase("ponyta.Vaporeon.POLIWRATH.ButterfreeA", keepSpecialCharacters: false), "ponyta vaporeon poliwrath butterfree a") // prettier-ignore
}
func testUpperCase_stripSpecialCharacters() {
  XCTAssertEqual(upperCase("ponytaVaporeonPOLIWRATH_ButterfreeA", keepSpecialCharacters: false), "PONYTA VAPOREON POLIWRATH BUTTERFREE A") // prettier-ignore
  XCTAssertEqual(upperCase("PonytaVaporeonPOLIWRATH_ButterfreeA", keepSpecialCharacters: false), "PONYTA VAPOREON POLIWRATH BUTTERFREE A") // prettier-ignore
  XCTAssertEqual(upperCase("ponyta-vaporeon-POLIWRATH-ButterfreeA", keepSpecialCharacters: false), "PONYTA VAPOREON POLIWRATH BUTTERFREE A") // prettier-ignore
  XCTAssertEqual(upperCase("Ponyta~vaporeon~POLIWRATH/ButterfreeA", keepSpecialCharacters: false), "PONYTA VAPOREON POLIWRATH BUTTERFREE A") // prettier-ignore
  XCTAssertEqual(upperCase("ponyta_vaporeon_POLIWRATH_ButterfreeA", keepSpecialCharacters: false), "PONYTA VAPOREON POLIWRATH BUTTERFREE A") // prettier-ignore
  XCTAssertEqual(upperCase("ponyta_Vaporeon_POLIWRATH_ButterfreeA", keepSpecialCharacters: false), "PONYTA VAPOREON POLIWRATH BUTTERFREE A") // prettier-ignore
  XCTAssertEqual(upperCase("ponyta.Vaporeon.POLIWRATH.ButterfreeA", keepSpecialCharacters: false), "PONYTA VAPOREON POLIWRATH BUTTERFREE A") // prettier-ignore
}
func testCapitalCase_stripSpecialCharacters() {
  XCTAssertEqual(capitalCase("ponytaVaporeonPOLIWRATH_ButterfreeA", keepSpecialCharacters: false), "Ponyta Vaporeon Poliwrath Butterfree A") // prettier-ignore
  XCTAssertEqual(capitalCase("PonytaVaporeonPOLIWRATH_ButterfreeA", keepSpecialCharacters: false), "Ponyta Vaporeon Poliwrath Butterfree A") // prettier-ignore
  XCTAssertEqual(capitalCase("ponyta-vaporeon-POLIWRATH-ButterfreeA", keepSpecialCharacters: false), "Ponyta Vaporeon Poliwrath Butterfree A") // prettier-ignore
  XCTAssertEqual(capitalCase("Ponyta~vaporeon~POLIWRATH/ButterfreeA", keepSpecialCharacters: false), "Ponyta Vaporeon Poliwrath Butterfree A") // prettier-ignore
  XCTAssertEqual(capitalCase("ponyta_vaporeon_POLIWRATH_ButterfreeA", keepSpecialCharacters: false), "Ponyta Vaporeon Poliwrath Butterfree A") // prettier-ignore
  XCTAssertEqual(capitalCase("ponyta_Vaporeon_POLIWRATH_ButterfreeA", keepSpecialCharacters: false), "Ponyta Vaporeon Poliwrath Butterfree A") // prettier-ignore
  XCTAssertEqual(capitalCase("ponyta.Vaporeon.POLIWRATH.ButterfreeA", keepSpecialCharacters: false), "Ponyta Vaporeon Poliwrath Butterfree A") // prettier-ignore
}
func testSpaceCase_stripSpecialCharacters() {
  XCTAssertEqual(spaceCase("ponytaVaporeonPOLIWRATH_ButterfreeA", keepSpecialCharacters: false), "ponyta Vaporeon POLIWRATH Butterfree A") // prettier-ignore
  XCTAssertEqual(spaceCase("PonytaVaporeonPOLIWRATH_ButterfreeA", keepSpecialCharacters: false), "Ponyta Vaporeon POLIWRATH Butterfree A") // prettier-ignore
  XCTAssertEqual(spaceCase("ponyta-vaporeon-POLIWRATH-ButterfreeA", keepSpecialCharacters: false), "ponyta vaporeon POLIWRATH Butterfree A") // prettier-ignore
  XCTAssertEqual(spaceCase("Ponyta~vaporeon~POLIWRATH/ButterfreeA", keepSpecialCharacters: false), "Ponyta vaporeon POLIWRATH Butterfree A") // prettier-ignore
  XCTAssertEqual(spaceCase("ponyta_vaporeon_POLIWRATH_ButterfreeA", keepSpecialCharacters: false), "ponyta vaporeon POLIWRATH Butterfree A") // prettier-ignore
  XCTAssertEqual(spaceCase("ponyta_Vaporeon_POLIWRATH_ButterfreeA", keepSpecialCharacters: false), "ponyta Vaporeon POLIWRATH Butterfree A") // prettier-ignore
  XCTAssertEqual(spaceCase("ponyta.Vaporeon.POLIWRATH.ButterfreeA", keepSpecialCharacters: false), "ponyta Vaporeon POLIWRATH Butterfree A") // prettier-ignore
}

func testPathCase_stripSpecialCharacters() {
  XCTAssertEqual(pathCase("ponytaVaporeonPOLIWRATH_ButterfreeA", keepSpecialCharacters: false), "ponyta/Vaporeon/POLIWRATH/Butterfree/A") // prettier-ignore
  XCTAssertEqual(pathCase("PonytaVaporeonPOLIWRATH_ButterfreeA", keepSpecialCharacters: false), "Ponyta/Vaporeon/POLIWRATH/Butterfree/A") // prettier-ignore
  XCTAssertEqual(pathCase("ponyta-vaporeon-POLIWRATH-ButterfreeA", keepSpecialCharacters: false), "ponyta/vaporeon/POLIWRATH/Butterfree/A") // prettier-ignore
  XCTAssertEqual(pathCase("Ponyta~vaporeon~POLIWRATH/ButterfreeA", keepSpecialCharacters: false), "Ponyta/vaporeon/POLIWRATH/Butterfree/A") // prettier-ignore
  XCTAssertEqual(pathCase("ponyta_vaporeon_POLIWRATH_ButterfreeA", keepSpecialCharacters: false), "ponyta/vaporeon/POLIWRATH/Butterfree/A") // prettier-ignore
  XCTAssertEqual(pathCase("ponyta_Vaporeon_POLIWRATH_ButterfreeA", keepSpecialCharacters: false), "ponyta/Vaporeon/POLIWRATH/Butterfree/A") // prettier-ignore
  XCTAssertEqual(pathCase("ponyta.Vaporeon.POLIWRATH.ButterfreeA", keepSpecialCharacters: false), "ponyta/Vaporeon/POLIWRATH/Butterfree/A") // prettier-ignore
}

// single capital
func testCamelCase____QTableA() { XCTAssertEqual(    camelCase("QTableA"), "qTableA") }
func testPascalCase___QTableA() { XCTAssertEqual(   pascalCase("QTableA"), "QTableA") }
func testKebabCase____QTableA() { XCTAssertEqual(    kebabCase("QTableA"), "q-table-a") }
func testSnakeCase____QTableA() { XCTAssertEqual(    snakeCase("QTableA"), "q_table_a") }
func testConstantCase_QTableA() { XCTAssertEqual( constantCase("QTableA"), "Q_TABLE_A") }
func testDotNotation__QTableA() { XCTAssertEqual(  dotNotation("QTableA"), "Q.Table.A") }
func testAdaCase______QTableA() { XCTAssertEqual(      adaCase("QTableA"), "Q_Table_A") }
func testCobolCase____QTableA() { XCTAssertEqual(    cobolCase("QTableA"), "Q-TABLE-A") }
func testTrainCase____QTableA() { XCTAssertEqual(    trainCase("QTableA"), "Q-Table-A") }
func testSpaceCase____QTableA() { XCTAssertEqual(    spaceCase("QTableA"), "Q Table A") }
func testPathCase_____QTableA() { XCTAssertEqual(     pathCase("QTableA"), "Q/Table/A") }
func testLowerCase____QTableA() { XCTAssertEqual(    lowerCase("QTableA"), "q table a") }
func testUpperCase____QTableA() { XCTAssertEqual(    upperCase("QTableA"), "Q TABLE A") }
func testCapitalCase__QTableA() { XCTAssertEqual(  capitalCase("QTableA"), "Q Table A") }

// spaces & special characters
func testCamelCase____ImAMIB101Ok() { XCTAssertEqual(    camelCase("I'm a M.I.B. 101 OK?"), "imAMib101Ok") }
func testPascalCase___ImAMIB101Ok() { XCTAssertEqual(   pascalCase("I'm a M.I.B. 101 OK?"), "ImAMib101Ok") }
func testKebabCase____ImAMIB101Ok() { XCTAssertEqual(    kebabCase("I'm a M.I.B. 101 OK?"), "im-a-mib-101-ok") }
func testSnakeCase____ImAMIB101Ok() { XCTAssertEqual(    snakeCase("I'm a M.I.B. 101 OK?"), "im_a_mib_101_ok") }
func testConstantCase_ImAMIB101Ok() { XCTAssertEqual( constantCase("I'm a M.I.B. 101 OK?"), "IM_A_MIB_101_OK") }
func testDotNotation__ImAMIB101Ok() { XCTAssertEqual(  dotNotation("I'm a M.I.B. 101 OK?"), "Im.a.MIB.101.OK") }
func testAdaCase______ImAMIB101Ok() { XCTAssertEqual(      adaCase("I'm a M.I.B. 101 OK?"), "Im_A_Mib_101_Ok") }
func testCobolCase____ImAMIB101Ok() { XCTAssertEqual(    cobolCase("I'm a M.I.B. 101 OK?"), "IM-A-MIB-101-OK") }
func testTrainCase____ImAMIB101Ok() { XCTAssertEqual(    trainCase("I'm a M.I.B. 101 OK?"), "Im-A-Mib-101-Ok") }
func testSpaceCase____ImAMIB101Ok() { XCTAssertEqual(    spaceCase("I'm a M.I.B. 101 OK?"), "I'm a M.I.B. 101 OK?") }
func testPathCase_____ImAMIB101Ok() { XCTAssertEqual(     pathCase("I'm a M.I.B. 101 OK?"), "I'm/a/M.I.B./101/OK?") }
func testLowerCase____ImAMIB101Ok() { XCTAssertEqual(    lowerCase("I'm a M.I.B. 101 OK?"), "i'm a m.i.b. 101 ok?") }
func testUpperCase____ImAMIB101Ok() { XCTAssertEqual(    upperCase("I'm a M.I.B. 101 OK?"), "I'M A M.I.B. 101 OK?") }
func testCapitalCase__ImAMIB101Ok() { XCTAssertEqual(  capitalCase("I'm a M.I.B. 101 OK?"), "I'm A M.i.b. 101 Ok?") }

// spaces & special characters
func testCamelCase____listenIMOK() { XCTAssertEqual(    camelCase("listen I'm O.K.!"), "listenImOk") }
func testPascalCase___listenIMOK() { XCTAssertEqual(   pascalCase("listen I'm O.K.!"), "ListenImOk") }
func testKebabCase____listenIMOK() { XCTAssertEqual(    kebabCase("listen I'm O.K.!"), "listen-im-ok") }
func testSnakeCase____listenIMOK() { XCTAssertEqual(    snakeCase("listen I'm O.K.!"), "listen_im_ok") }
func testConstantCase_listenIMOK() { XCTAssertEqual( constantCase("listen I'm O.K.!"), "LISTEN_IM_OK") }
func testDotNotation__listenIMOK() { XCTAssertEqual(  dotNotation("listen I'm O.K.!"), "listen.Im.OK") }
func testAdaCase______listenIMOK() { XCTAssertEqual(      adaCase("listen I'm O.K.!"), "Listen_Im_Ok") }
func testCobolCase____listenIMOK() { XCTAssertEqual(    cobolCase("listen I'm O.K.!"), "LISTEN-IM-OK") }
func testTrainCase____listenIMOK() { XCTAssertEqual(    trainCase("listen I'm O.K.!"), "Listen-Im-Ok") }
func testSpaceCase____listenIMOK() { XCTAssertEqual(    spaceCase("listen I'm O.K.!"), "listen I'm O.K.!") }
func testPathCase_____listenIMOK() { XCTAssertEqual(     pathCase("listen I'm O.K.!"), "listen/I'm/O.K.!") }
func testLowerCase____listenIMOK() { XCTAssertEqual(    lowerCase("listen I'm O.K.!"), "listen i'm o.k.!") }
func testUpperCase____listenIMOK() { XCTAssertEqual(    upperCase("listen I'm O.K.!"), "LISTEN I'M O.K.!") }
func testCapitalCase__listenIMOK() { XCTAssertEqual(  capitalCase("listen I'm O.K.!"), "Listen I'm O.k.!") }

// double spacing
func testCamelCase____doubleRainbow() { XCTAssertEqual(    camelCase("Double  Rainbow"), "doubleRainbow") }
func testPascalCase___doubleRainbow() { XCTAssertEqual(   pascalCase("Double  Rainbow"), "DoubleRainbow") }
func testKebabCase____doubleRainbow() { XCTAssertEqual(    kebabCase("Double  Rainbow"), "double-rainbow") }
func testSnakeCase____doubleRainbow() { XCTAssertEqual(    snakeCase("Double  Rainbow"), "double_rainbow") }
func testConstantCase_doubleRainbow() { XCTAssertEqual( constantCase("Double  Rainbow"), "DOUBLE_RAINBOW") }
func testDotNotation__doubleRainbow() { XCTAssertEqual(  dotNotation("Double  Rainbow"), "Double.Rainbow") }
func testAdaCase______doubleRainbow() { XCTAssertEqual(      adaCase("Double  Rainbow"), "Double_Rainbow") }
func testCobolCase____doubleRainbow() { XCTAssertEqual(    cobolCase("Double  Rainbow"), "DOUBLE-RAINBOW") }
func testTrainCase____doubleRainbow() { XCTAssertEqual(    trainCase("Double  Rainbow"), "Double-Rainbow") }
func testSpaceCase____doubleRainbow() { XCTAssertEqual(    spaceCase("Double  Rainbow"), "Double Rainbow") }
func testPathCase_____doubleRainbow() { XCTAssertEqual(     pathCase("Double  Rainbow"), "Double/Rainbow") }
func testLowerCase____doubleRainbow() { XCTAssertEqual(    lowerCase("Double  Rainbow"), "double rainbow") }
func testUpperCase____doubleRainbow() { XCTAssertEqual(    upperCase("Double  Rainbow"), "DOUBLE RAINBOW") }
func testCapitalCase__doubleRainbow() { XCTAssertEqual(  capitalCase("Double  Rainbow"), "Double Rainbow") }

/// Default normalization in Swift (NFC)
func n (_ str: String) -> String { str.precomposedStringWithCanonicalMapping }

// special characters with Canonical Composition:
let specialCharsNFCSpaces = "Ågård î garçons Çafé château voilà ñoël été l'aïeul Ågård ÀÖØß àöøÿ".precomposedStringWithCanonicalMapping // NFC normalization

func testCamelCase____specialCharsNfcSpaces() { XCTAssertEqual(n(    camelCase(specialCharsNFCSpaces)), n("agardIGarconsCafeChateauVoilaNoelEteLaieulAgardAoøßAoøy")) }
func testPascalCase___specialCharsNfcSpaces() { XCTAssertEqual(n(   pascalCase(specialCharsNFCSpaces)), n("AgardIGarconsCafeChateauVoilaNoelEteLaieulAgardAoøßAoøy")) }
func testKebabCase____specialCharsNfcSpaces() { XCTAssertEqual(n(    kebabCase(specialCharsNFCSpaces)), n("agard-i-garcons-cafe-chateau-voila-noel-ete-laieul-agard-aoøß-aoøy")) }
func testSnakeCase____specialCharsNfcSpaces() { XCTAssertEqual(n(    snakeCase(specialCharsNFCSpaces)), n("agard_i_garcons_cafe_chateau_voila_noel_ete_laieul_agard_aoøß_aoøy")) }
func testConstantCase_specialCharsNfcSpaces() { XCTAssertEqual(n( constantCase(specialCharsNFCSpaces)), n("AGARD_I_GARCONS_CAFE_CHATEAU_VOILA_NOEL_ETE_LAIEUL_AGARD_AOØSS_AOØY")) }
func testDotNotation__specialCharsNfcSpaces() { XCTAssertEqual(n(  dotNotation(specialCharsNFCSpaces)), n("Agard.i.garcons.Cafe.chateau.voila.noel.ete.laieul.Agard.AOØß.aoøy")) }
func testAdaCase______specialCharsNfcSpaces() { XCTAssertEqual(n(      adaCase(specialCharsNFCSpaces)), n("Agard_I_Garcons_Cafe_Chateau_Voila_Noel_Ete_Laieul_Agard_Aoøß_Aoøy")) }
func testCobolCase____specialCharsNfcSpaces() { XCTAssertEqual(n(    cobolCase(specialCharsNFCSpaces)), n("AGARD-I-GARCONS-CAFE-CHATEAU-VOILA-NOEL-ETE-LAIEUL-AGARD-AOØSS-AOØY")) }
func testTrainCase____specialCharsNfcSpaces() { XCTAssertEqual(n(    trainCase(specialCharsNFCSpaces)), n("Agard-I-Garcons-Cafe-Chateau-Voila-Noel-Ete-Laieul-Agard-Aoøß-Aoøy")) }
func testSpaceCase____specialCharsNfcSpaces() { XCTAssertEqual(n(    spaceCase(specialCharsNFCSpaces)), n("Ågård î garçons Çafé château voilà ñoël été l'aïeul Ågård ÀÖØß àöøÿ")) }
func testPathCase_____specialCharsNfcSpaces() { XCTAssertEqual(n(     pathCase(specialCharsNFCSpaces)), n("Ågård/î/garçons/Çafé/château/voilà/ñoël/été/l'aïeul/Ågård/ÀÖØß/àöøÿ")) }
func testLowerCase____specialCharsNfcSpaces() { XCTAssertEqual(n(    lowerCase(specialCharsNFCSpaces)), n("ågård î garçons çafé château voilà ñoël été l'aïeul ågård àöøß àöøÿ")) }
func testUpperCase____specialCharsNfcSpaces() { XCTAssertEqual(n(    upperCase(specialCharsNFCSpaces)), n("ÅGÅRD Î GARÇONS ÇAFÉ CHÂTEAU VOILÀ ÑOËL ÉTÉ L'AÏEUL ÅGÅRD ÀÖØSS ÀÖØŸ")) }
func testCapitalCase__specialCharsNfcSpaces() { XCTAssertEqual(n(  capitalCase(specialCharsNFCSpaces)), n("Ågård Î Garçons Çafé Château Voilà Ñoël Été L'aïeul Ågård Àöøß Àöøÿ")) }

// special characters with Canonical Decomposition:
let specialCharsNFDSpaces = "Ågård î garçons Çafé château voilà ñoël été l'aïeul Ågård ÀÖØß àöøÿ".decomposedStringWithCanonicalMapping // NFD normalization

func testCamelCase____specialCharsNfdSpaces() { XCTAssertEqual(n(    camelCase(specialCharsNFDSpaces)), n("agardIGarconsCafeChateauVoilaNoelEteLaieulAgardAoøßAoøy")) }
func testPascalCase___specialCharsNfdSpaces() { XCTAssertEqual(n(   pascalCase(specialCharsNFDSpaces)), n("AgardIGarconsCafeChateauVoilaNoelEteLaieulAgardAoøßAoøy")) }
func testKebabCase____specialCharsNfdSpaces() { XCTAssertEqual(n(    kebabCase(specialCharsNFDSpaces)), n("agard-i-garcons-cafe-chateau-voila-noel-ete-laieul-agard-aoøß-aoøy")) }
func testSnakeCase____specialCharsNfdSpaces() { XCTAssertEqual(n(    snakeCase(specialCharsNFDSpaces)), n("agard_i_garcons_cafe_chateau_voila_noel_ete_laieul_agard_aoøß_aoøy")) }
func testConstantCase_specialCharsNfdSpaces() { XCTAssertEqual(n( constantCase(specialCharsNFDSpaces)), n("AGARD_I_GARCONS_CAFE_CHATEAU_VOILA_NOEL_ETE_LAIEUL_AGARD_AOØSS_AOØY")) }
func testDotNotation__specialCharsNfdSpaces() { XCTAssertEqual(n(  dotNotation(specialCharsNFDSpaces)), n("Agard.i.garcons.Cafe.chateau.voila.noel.ete.laieul.Agard.AOØß.aoøy")) }
func testAdaCase______specialCharsNfdSpaces() { XCTAssertEqual(n(      adaCase(specialCharsNFDSpaces)), n("Agard_I_Garcons_Cafe_Chateau_Voila_Noel_Ete_Laieul_Agard_Aoøß_Aoøy")) }
func testCobolCase____specialCharsNfdSpaces() { XCTAssertEqual(n(    cobolCase(specialCharsNFDSpaces)), n("AGARD-I-GARCONS-CAFE-CHATEAU-VOILA-NOEL-ETE-LAIEUL-AGARD-AOØSS-AOØY")) }
func testTrainCase____specialCharsNfdSpaces() { XCTAssertEqual(n(    trainCase(specialCharsNFDSpaces)), n("Agard-I-Garcons-Cafe-Chateau-Voila-Noel-Ete-Laieul-Agard-Aoøß-Aoøy")) }
func testSpaceCase____specialCharsNfdSpaces() { XCTAssertEqual(n(    spaceCase(specialCharsNFDSpaces)), n("Ågård î garçons Çafé château voilà ñoël été l'aïeul Ågård ÀÖØß àöøÿ")) }
func testPathCase_____specialCharsNfdSpaces() { XCTAssertEqual(n(     pathCase(specialCharsNFDSpaces)), n("Ågård/î/garçons/Çafé/château/voilà/ñoël/été/l'aïeul/Ågård/ÀÖØß/àöøÿ")) }
func testLowerCase____specialCharsNfdSpaces() { XCTAssertEqual(n(    lowerCase(specialCharsNFDSpaces)), n("ågård î garçons çafé château voilà ñoël été l'aïeul ågård àöøß àöøÿ")) }
func testUpperCase____specialCharsNfdSpaces() { XCTAssertEqual(n(    upperCase(specialCharsNFDSpaces)), n("ÅGÅRD Î GARÇONS ÇAFÉ CHÂTEAU VOILÀ ÑOËL ÉTÉ L'AÏEUL ÅGÅRD ÀÖØSS ÀÖØŸ")) }
func testCapitalCase__specialCharsNfdSpaces() { XCTAssertEqual(n(  capitalCase(specialCharsNFDSpaces)), n("Ågård Î Garçons Çafé Château Voilà Ñoël Été L'aïeul Ågård Àöøß Àöøÿ")) }

// special characters with Canonical Composition without spaces:
let specialCharsNFC = "Ågård_î_garçons_Çafé_château_voilà_ñoël_été_laïeul_Ågård_ÀÖØß_àöøÿ".precomposedStringWithCanonicalMapping // NFC normalization
func testCamelCase____specialCharsNfc() { XCTAssertEqual(n(    camelCase(specialCharsNFC)), n("agardIGarconsCafeChateauVoilaNoelEteLaieulAgardAoøßAoøy")) }
func testPascalCase___specialCharsNfc() { XCTAssertEqual(n(   pascalCase(specialCharsNFC)), n("AgardIGarconsCafeChateauVoilaNoelEteLaieulAgardAoøßAoøy")) }
func testKebabCase____specialCharsNfc() { XCTAssertEqual(n(    kebabCase(specialCharsNFC)), n("agard-i-garcons-cafe-chateau-voila-noel-ete-laieul-agard-aoøß-aoøy")) }
func testSnakeCase____specialCharsNfc() { XCTAssertEqual(n(    snakeCase(specialCharsNFC)), n("agard_i_garcons_cafe_chateau_voila_noel_ete_laieul_agard_aoøß_aoøy")) }
func testConstantCase_specialCharsNfc() { XCTAssertEqual(n( constantCase(specialCharsNFC)), n("AGARD_I_GARCONS_CAFE_CHATEAU_VOILA_NOEL_ETE_LAIEUL_AGARD_AOØSS_AOØY")) }
func testDotNotation__specialCharsNfc() { XCTAssertEqual(n(  dotNotation(specialCharsNFC)), n("Agard.i.garcons.Cafe.chateau.voila.noel.ete.laieul.Agard.AOØß.aoøy")) }
func testAdaCase______specialCharsNfc() { XCTAssertEqual(n(      adaCase(specialCharsNFC)), n("Agard_I_Garcons_Cafe_Chateau_Voila_Noel_Ete_Laieul_Agard_Aoøß_Aoøy")) }
func testCobolCase____specialCharsNfc() { XCTAssertEqual(n(    cobolCase(specialCharsNFC)), n("AGARD-I-GARCONS-CAFE-CHATEAU-VOILA-NOEL-ETE-LAIEUL-AGARD-AOØSS-AOØY")) }
func testTrainCase____specialCharsNfc() { XCTAssertEqual(n(    trainCase(specialCharsNFC)), n("Agard-I-Garcons-Cafe-Chateau-Voila-Noel-Ete-Laieul-Agard-Aoøß-Aoøy")) }
func testSpaceCase____specialCharsNfc() { XCTAssertEqual(n(    spaceCase(specialCharsNFC)), n("Ågård_î_garçons_Çafé_château_voilà_ñoël_été_laïeul_Ågård_ÀÖØß_àöøÿ")) }
func testPathCase_____specialCharsNfc() { XCTAssertEqual(n(     pathCase(specialCharsNFC)), n("Ågård/_î/_garçons/_Çafé/_château/_voilà/_ñoël/_été/_laïeul/_Ågård/_ÀÖØß/_àöøÿ")) }
func testLowerCase____specialCharsNfc() { XCTAssertEqual(n(    lowerCase(specialCharsNFC)), n("ågård_î_garçons_çafé_château_voilà_ñoël_été_laïeul_ågård_àöøß_àöøÿ")) }
func testUpperCase____specialCharsNfc() { XCTAssertEqual(n(    upperCase(specialCharsNFC)), n("ÅGÅRD_Î_GARÇONS_ÇAFÉ_CHÂTEAU_VOILÀ_ÑOËL_ÉTÉ_LAÏEUL_ÅGÅRD_ÀÖØSS_ÀÖØŸ")) }
func testCapitalCase__specialCharsNfc() { XCTAssertEqual(n(  capitalCase(specialCharsNFC)), n("Ågård_Î_Garçons_Çafé_Château_Voilà_Ñoël_Été_Laïeul_Ågård_Àöøß_Àöøÿ")) }

// special characters with Canonical Decomposition without spaces:
let specialCharsNFD = "Ågård_î_garçons_Çafé_château_voilà_ñoël_été_laïeul_Ågård_ÀÖØß_àöøÿ".decomposedStringWithCanonicalMapping // NFD normalization

func testCamelCase____specialCharsNfd() { XCTAssertEqual(n(    camelCase(specialCharsNFD)), n("agardIGarconsCafeChateauVoilaNoelEteLaieulAgardAoøßAoøy")) }
func testPascalCase___specialCharsNfd() { XCTAssertEqual(n(   pascalCase(specialCharsNFD)), n("AgardIGarconsCafeChateauVoilaNoelEteLaieulAgardAoøßAoøy")) }
func testKebabCase____specialCharsNfd() { XCTAssertEqual(n(    kebabCase(specialCharsNFD)), n("agard-i-garcons-cafe-chateau-voila-noel-ete-laieul-agard-aoøß-aoøy")) }
func testSnakeCase____specialCharsNfd() { XCTAssertEqual(n(    snakeCase(specialCharsNFD)), n("agard_i_garcons_cafe_chateau_voila_noel_ete_laieul_agard_aoøß_aoøy")) }
func testConstantCase_specialCharsNfd() { XCTAssertEqual(n( constantCase(specialCharsNFD)), n("AGARD_I_GARCONS_CAFE_CHATEAU_VOILA_NOEL_ETE_LAIEUL_AGARD_AOØSS_AOØY")) }
func testDotNotation__specialCharsNfd() { XCTAssertEqual(n(  dotNotation(specialCharsNFD)), n("Agard.i.garcons.Cafe.chateau.voila.noel.ete.laieul.Agard.AOØß.aoøy")) }
func testAdaCase______specialCharsNfd() { XCTAssertEqual(n(      adaCase(specialCharsNFD)), n("Agard_I_Garcons_Cafe_Chateau_Voila_Noel_Ete_Laieul_Agard_Aoøß_Aoøy")) }
func testCobolCase____specialCharsNfd() { XCTAssertEqual(n(    cobolCase(specialCharsNFD)), n("AGARD-I-GARCONS-CAFE-CHATEAU-VOILA-NOEL-ETE-LAIEUL-AGARD-AOØSS-AOØY")) }
func testTrainCase____specialCharsNfd() { XCTAssertEqual(n(    trainCase(specialCharsNFD)), n("Agard-I-Garcons-Cafe-Chateau-Voila-Noel-Ete-Laieul-Agard-Aoøß-Aoøy")) }
func testSpaceCase____specialCharsNfd() { XCTAssertEqual(n(    spaceCase(specialCharsNFD)), n("Ågård_î_garçons_Çafé_château_voilà_ñoël_été_laïeul_Ågård_ÀÖØß_àöøÿ")) }
func testPathCase_____specialCharsNfd() { XCTAssertEqual(n(     pathCase(specialCharsNFD)), n("Ågård/_î/_garçons/_Çafé/_château/_voilà/_ñoël/_été/_laïeul/_Ågård/_ÀÖØß/_àöøÿ")) }
func testLowerCase____specialCharsNfd() { XCTAssertEqual(n(    lowerCase(specialCharsNFD)), n("ågård_î_garçons_çafé_château_voilà_ñoël_été_laïeul_ågård_àöøß_àöøÿ")) }
func testUpperCase____specialCharsNfd() { XCTAssertEqual(n(    upperCase(specialCharsNFD)), n("ÅGÅRD_Î_GARÇONS_ÇAFÉ_CHÂTEAU_VOILÀ_ÑOËL_ÉTÉ_LAÏEUL_ÅGÅRD_ÀÖØSS_ÀÖØŸ")) }
func testCapitalCase__specialCharsNfd() { XCTAssertEqual(n(  capitalCase(specialCharsNFD)), n("Ågård_Î_Garçons_Çafé_Château_Voilà_Ñoël_Été_Laïeul_Ågård_Àöøß_Àöøÿ")) }

// special characters with Canonical Composition without spaces - short example:
func testCamelCase____specialCharsNfcShort() { XCTAssertEqual(n(    camelCase("ÇaféÅgård".precomposedStringWithCanonicalMapping)), n("cafeAgard")) }
func testPascalCase___specialCharsNfcShort() { XCTAssertEqual(n(   pascalCase("ÇaféÅgård".precomposedStringWithCanonicalMapping)), n("CafeAgard")) }
func testKebabCase____specialCharsNfcShort() { XCTAssertEqual(n(    kebabCase("ÇaféÅgård".precomposedStringWithCanonicalMapping)), n("cafe-agard")) }
func testSnakeCase____specialCharsNfcShort() { XCTAssertEqual(n(    snakeCase("ÇaféÅgård".precomposedStringWithCanonicalMapping)), n("cafe_agard")) }
func testConstantCase_specialCharsNfcShort() { XCTAssertEqual(n( constantCase("ÇaféÅgård".precomposedStringWithCanonicalMapping)), n("CAFE_AGARD")) }
func testDotNotation__specialCharsNfcShort() { XCTAssertEqual(n(  dotNotation("ÇaféÅgård".precomposedStringWithCanonicalMapping)), n("Cafe.Agard")) }
func testAdaCase______specialCharsNfcShort() { XCTAssertEqual(n(      adaCase("ÇaféÅgård".precomposedStringWithCanonicalMapping)), n("Cafe_Agard")) }
func testCobolCase____specialCharsNfcShort() { XCTAssertEqual(n(    cobolCase("ÇaféÅgård".precomposedStringWithCanonicalMapping)), n("CAFE-AGARD")) }
func testTrainCase____specialCharsNfcShort() { XCTAssertEqual(n(    trainCase("ÇaféÅgård".precomposedStringWithCanonicalMapping)), n("Cafe-Agard")) }
func testSpaceCase____specialCharsNfcShort() { XCTAssertEqual(n(    spaceCase("ÇaféÅgård".precomposedStringWithCanonicalMapping)), n("Çafé Ågård")) }
func testPathCase_____specialCharsNfcShort() { XCTAssertEqual(n(     pathCase("ÇaféÅgård".precomposedStringWithCanonicalMapping)), n("Çafé/Ågård")) }
func testLowerCase____specialCharsNfcShort() { XCTAssertEqual(n(    lowerCase("ÇaféÅgård".precomposedStringWithCanonicalMapping)), n("çafé ågård")) }
func testUpperCase____specialCharsNfcShort() { XCTAssertEqual(n(    upperCase("ÇaféÅgård".precomposedStringWithCanonicalMapping)), n("ÇAFÉ ÅGÅRD")) }
func testCapitalCase__specialCharsNfcShort() { XCTAssertEqual(n(  capitalCase("ÇaféÅgård".precomposedStringWithCanonicalMapping)), n("Çafé Ågård")) }

// special characters with Canonical Decomposition without spaces - short example:
func testCamelCase____specialCharsNfdShort() { XCTAssertEqual(n(    camelCase("ÇaféÅgård".decomposedStringWithCanonicalMapping)), n("cafeAgard")) }
func testPascalCase___specialCharsNfdShort() { XCTAssertEqual(n(   pascalCase("ÇaféÅgård".decomposedStringWithCanonicalMapping)), n("CafeAgard")) }
func testKebabCase____specialCharsNfdShort() { XCTAssertEqual(n(    kebabCase("ÇaféÅgård".decomposedStringWithCanonicalMapping)), n("cafe-agard")) }
func testSnakeCase____specialCharsNfdShort() { XCTAssertEqual(n(    snakeCase("ÇaféÅgård".decomposedStringWithCanonicalMapping)), n("cafe_agard")) }
func testConstantCase_specialCharsNfdShort() { XCTAssertEqual(n( constantCase("ÇaféÅgård".decomposedStringWithCanonicalMapping)), n("CAFE_AGARD")) }
func testDotNotation__specialCharsNfdShort() { XCTAssertEqual(n(  dotNotation("ÇaféÅgård".decomposedStringWithCanonicalMapping)), n("Cafe.Agard")) }
func testAdaCase______specialCharsNfdShort() { XCTAssertEqual(n(      adaCase("ÇaféÅgård".decomposedStringWithCanonicalMapping)), n("Cafe_Agard")) }
func testCobolCase____specialCharsNfdShort() { XCTAssertEqual(n(    cobolCase("ÇaféÅgård".decomposedStringWithCanonicalMapping)), n("CAFE-AGARD")) }
func testTrainCase____specialCharsNfdShort() { XCTAssertEqual(n(    trainCase("ÇaféÅgård".decomposedStringWithCanonicalMapping)), n("Cafe-Agard")) }
func testSpaceCase____specialCharsNfdShort() { XCTAssertEqual(n(    spaceCase("ÇaféÅgård".decomposedStringWithCanonicalMapping)), n("Çafé Ågård")) }
func testPathCase_____specialCharsNfdShort() { XCTAssertEqual(n(     pathCase("ÇaféÅgård".decomposedStringWithCanonicalMapping)), n("Çafé/Ågård")) }
func testLowerCase____specialCharsNfdShort() { XCTAssertEqual(n(    lowerCase("ÇaféÅgård".decomposedStringWithCanonicalMapping)), n("çafé ågård")) }
func testUpperCase____specialCharsNfdShort() { XCTAssertEqual(n(    upperCase("ÇaféÅgård".decomposedStringWithCanonicalMapping)), n("ÇAFÉ ÅGÅRD")) }
func testCapitalCase__specialCharsNfdShort() { XCTAssertEqual(n(  capitalCase("ÇaféÅgård".decomposedStringWithCanonicalMapping)), n("Çafé Ågård")) }

// No spaces involved
func testCamelCase____removeSpecialCharacters() { XCTAssertEqual(    camelCase("$mesqueeb.BluesJazz@github.com", keepSpecialCharacters: false), "mesqueebBluesJazzGithubCom") }
func testCamelCase______keepSpecialCharacters() { XCTAssertEqual(    camelCase("$mesqueeb.BluesJazz@github.com", keepSpecialCharacters: true ), "$mesqueeb.bluesJazz@github.com") }
func testPascalCase___removeSpecialCharacters() { XCTAssertEqual(   pascalCase("$mesqueeb.BluesJazz@github.com", keepSpecialCharacters: false), "MesqueebBluesJazzGithubCom") }
func testPascalCase_____keepSpecialCharacters() { XCTAssertEqual(   pascalCase("$mesqueeb.BluesJazz@github.com", keepSpecialCharacters: true ), "$Mesqueeb.BluesJazz@Github.Com") }
func testKebabCase____removeSpecialCharacters() { XCTAssertEqual(    kebabCase("$mesqueeb.BluesJazz@github.com", keepSpecialCharacters: false), "mesqueeb-blues-jazz-github-com") }
func testKebabCase______keepSpecialCharacters() { XCTAssertEqual(    kebabCase("$mesqueeb.BluesJazz@github.com", keepSpecialCharacters: true ), "$mesqueeb.blues-jazz@github.com") }
func testSnakeCase____removeSpecialCharacters() { XCTAssertEqual(    snakeCase("$mesqueeb.BluesJazz@github.com", keepSpecialCharacters: false), "mesqueeb_blues_jazz_github_com") }
func testSnakeCase______keepSpecialCharacters() { XCTAssertEqual(    snakeCase("$mesqueeb.BluesJazz@github.com", keepSpecialCharacters: true ), "$mesqueeb.blues_jazz@github.com") }
func testConstantCase_removeSpecialCharacters() { XCTAssertEqual( constantCase("$mesqueeb.BluesJazz@github.com", keepSpecialCharacters: false), "MESQUEEB_BLUES_JAZZ_GITHUB_COM") }
func testConstantCase___keepSpecialCharacters() { XCTAssertEqual( constantCase("$mesqueeb.BluesJazz@github.com", keepSpecialCharacters: true ), "$MESQUEEB.BLUES_JAZZ@GITHUB.COM") }

func testSpaceCase___removeSpecialCharacters() { XCTAssertEqual(   spaceCase("$mesqueeb.BluesJazz@github.com", keepSpecialCharacters: false), "mesqueeb Blues Jazz github com") }
func testSpaceCase_____keepSpecialCharacters() { XCTAssertEqual(   spaceCase("$mesqueeb.BluesJazz@github.com", keepSpecialCharacters: true ), "$mesqueeb.Blues Jazz@github.com") }
func testPathCase____removeSpecialCharacters() { XCTAssertEqual(    pathCase("$mesqueeb.BluesJazz@github.com", keepSpecialCharacters: false), "mesqueeb/Blues/Jazz/github/com") }
func testPathCase______keepSpecialCharacters() { XCTAssertEqual(    pathCase("$mesqueeb.BluesJazz@github.com", keepSpecialCharacters: true ), "$mesqueeb/.Blues/Jazz/@github/.com") }
func testLowerCase___removeSpecialCharacters() { XCTAssertEqual(   lowerCase("$mesqueeb.BluesJazz@github.com", keepSpecialCharacters: false), "mesqueeb blues jazz github com") }
func testLowerCase_____keepSpecialCharacters() { XCTAssertEqual(   lowerCase("$mesqueeb.BluesJazz@github.com", keepSpecialCharacters: true ), "$mesqueeb.blues jazz@github.com") }
func testUpperCase___removeSpecialCharacters() { XCTAssertEqual(   upperCase("$mesqueeb.BluesJazz@github.com", keepSpecialCharacters: false), "MESQUEEB BLUES JAZZ GITHUB COM") }
func testUpperCase_____keepSpecialCharacters() { XCTAssertEqual(   upperCase("$mesqueeb.BluesJazz@github.com", keepSpecialCharacters: true ), "$MESQUEEB.BLUES JAZZ@GITHUB.COM") }
func testCapitalCase_removeSpecialCharacters() { XCTAssertEqual( capitalCase("$mesqueeb.BluesJazz@github.com", keepSpecialCharacters: false), "Mesqueeb Blues Jazz Github Com") }
func testCapitalCase___keepSpecialCharacters() { XCTAssertEqual( capitalCase("$mesqueeb.BluesJazz@github.com", keepSpecialCharacters: true ), "$Mesqueeb.Blues Jazz@Github.Com") }

// Spaces involved
func testCamelCase____removeSpecialCharactersSpaces() { XCTAssertEqual(    camelCase("$mesqueeb .BluesJazz @github _POWER", keepSpecialCharacters: false), "mesqueebBluesjazzGithubPower") }
func testCamelCase______keepSpecialCharactersSpaces() { XCTAssertEqual(    camelCase("$mesqueeb .BluesJazz @github _POWER", keepSpecialCharacters: true ), "$mesqueeb.bluesjazz@github_power") }
func testPascalCase___removeSpecialCharactersSpaces() { XCTAssertEqual(   pascalCase("$mesqueeb .BluesJazz @github _POWER", keepSpecialCharacters: false), "MesqueebBluesjazzGithubPower") }
func testPascalCase_____keepSpecialCharactersSpaces() { XCTAssertEqual(   pascalCase("$mesqueeb .BluesJazz @github _POWER", keepSpecialCharacters: true ), "$Mesqueeb.Bluesjazz@Github_Power") }
func testKebabCase____removeSpecialCharactersSpaces() { XCTAssertEqual(    kebabCase("$mesqueeb .BluesJazz @github _POWER", keepSpecialCharacters: false), "mesqueeb-bluesjazz-github-power") }
func testKebabCase______keepSpecialCharactersSpaces() { XCTAssertEqual(    kebabCase("$mesqueeb .BluesJazz @github _POWER", keepSpecialCharacters: true ), "$mesqueeb-.bluesjazz-@github-_power") }
func testSnakeCase____removeSpecialCharactersSpaces() { XCTAssertEqual(    snakeCase("$mesqueeb .BluesJazz @github _POWER", keepSpecialCharacters: false), "mesqueeb_bluesjazz_github_power") }
func testSnakeCase______keepSpecialCharactersSpaces() { XCTAssertEqual(    snakeCase("$mesqueeb .BluesJazz @github _POWER", keepSpecialCharacters: true ), "$mesqueeb_.bluesjazz_@github__power") }
func testConstantCase_removeSpecialCharactersSpaces() { XCTAssertEqual( constantCase("$mesqueeb .BluesJazz @github _POWER", keepSpecialCharacters: false), "MESQUEEB_BLUESJAZZ_GITHUB_POWER") }
func testConstantCase___keepSpecialCharactersSpaces() { XCTAssertEqual( constantCase("$mesqueeb .BluesJazz @github _POWER", keepSpecialCharacters: true ), "$MESQUEEB_.BLUESJAZZ_@GITHUB__POWER") }

func testSpaceCase___removeSpecialCharactersSpaces() { XCTAssertEqual(   spaceCase("$mesqueeb .BluesJazz @github _POWER", keepSpecialCharacters: false), "mesqueeb BluesJazz github POWER") }
func testSpaceCase_____keepSpecialCharactersSpaces() { XCTAssertEqual(   spaceCase("$mesqueeb .BluesJazz @github _POWER", keepSpecialCharacters: true ), "$mesqueeb .BluesJazz @github _POWER") }
func testPathCase____removeSpecialCharactersSpaces() { XCTAssertEqual(    pathCase("$mesqueeb .BluesJazz @github _POWER", keepSpecialCharacters: false), "mesqueeb/BluesJazz/github/POWER") }
func testPathCase______keepSpecialCharactersSpaces() { XCTAssertEqual(    pathCase("$mesqueeb .BluesJazz @github _POWER", keepSpecialCharacters: true ), "$mesqueeb/.BluesJazz/@github/_POWER") }
func testLowerCase___removeSpecialCharactersSpaces() { XCTAssertEqual(   lowerCase("$mesqueeb .BluesJazz @github _POWER", keepSpecialCharacters: false), "mesqueeb bluesjazz github power") }
func testLowerCase_____keepSpecialCharactersSpaces() { XCTAssertEqual(   lowerCase("$mesqueeb .BluesJazz @github _POWER", keepSpecialCharacters: true ), "$mesqueeb .bluesjazz @github _power") }
func testUpperCase___removeSpecialCharactersSpaces() { XCTAssertEqual(   upperCase("$mesqueeb .BluesJazz @github _POWER", keepSpecialCharacters: false), "MESQUEEB BLUESJAZZ GITHUB POWER") }
func testUpperCase_____keepSpecialCharactersSpaces() { XCTAssertEqual(   upperCase("$mesqueeb .BluesJazz @github _POWER", keepSpecialCharacters: true ), "$MESQUEEB .BLUESJAZZ @GITHUB _POWER") }
func testCapitalCase_removeSpecialCharactersSpaces() { XCTAssertEqual( capitalCase("$mesqueeb .BluesJazz @github _POWER", keepSpecialCharacters: false), "Mesqueeb Bluesjazz Github Power") }
func testCapitalCase___keepSpecialCharactersSpaces() { XCTAssertEqual( capitalCase("$mesqueeb .BluesJazz @github _POWER", keepSpecialCharacters: true ), "$Mesqueeb .Bluesjazz @Github _Power") }

// Spaces & special characters in different spots
func testCamelCase____removeSpecialVariousCharactersSpaces() { XCTAssertEqual(    camelCase("$mesqueeb Blues.Jazz git@hub POWER", keepSpecialCharacters: false), "mesqueebBluesjazzGithubPower") }
func testCamelCase______keepSpecialVariousCharactersSpaces() { XCTAssertEqual(    camelCase("$mesqueeb Blues.Jazz git@hub POWER", keepSpecialCharacters: true ), "$mesqueebBlues.jazzGit@hubPower") }
func testPascalCase___removeSpecialVariousCharactersSpaces() { XCTAssertEqual(   pascalCase("$mesqueeb Blues.Jazz git@hub POWER", keepSpecialCharacters: false), "MesqueebBluesjazzGithubPower") }
func testPascalCase_____keepSpecialVariousCharactersSpaces() { XCTAssertEqual(   pascalCase("$mesqueeb Blues.Jazz git@hub POWER", keepSpecialCharacters: true ), "$MesqueebBlues.jazzGit@hubPower") }
func testKebabCase____removeSpecialVariousCharactersSpaces() { XCTAssertEqual(    kebabCase("$mesqueeb Blues.Jazz git@hub POWER", keepSpecialCharacters: false), "mesqueeb-bluesjazz-github-power") }
func testKebabCase______keepSpecialVariousCharactersSpaces() { XCTAssertEqual(    kebabCase("$mesqueeb Blues.Jazz git@hub POWER", keepSpecialCharacters: true ), "$mesqueeb-blues.jazz-git@hub-power") }
func testSnakeCase____removeSpecialVariousCharactersSpaces() { XCTAssertEqual(    snakeCase("$mesqueeb Blues.Jazz git@hub POWER", keepSpecialCharacters: false), "mesqueeb_bluesjazz_github_power") }
func testSnakeCase______keepSpecialVariousCharactersSpaces() { XCTAssertEqual(    snakeCase("$mesqueeb Blues.Jazz git@hub POWER", keepSpecialCharacters: true ), "$mesqueeb_blues.jazz_git@hub_power") }
func testConstantCase_removeSpecialVariousCharactersSpaces() { XCTAssertEqual( constantCase("$mesqueeb Blues.Jazz git@hub POWER", keepSpecialCharacters: false), "MESQUEEB_BLUESJAZZ_GITHUB_POWER") }
func testConstantCase___keepSpecialVariousCharactersSpaces() { XCTAssertEqual( constantCase("$mesqueeb Blues.Jazz git@hub POWER", keepSpecialCharacters: true ), "$MESQUEEB_BLUES.JAZZ_GIT@HUB_POWER") }

func testSpaceCase___removeSpecialVariousCharactersSpaces() { XCTAssertEqual(   spaceCase("$mesqueeb Blues.Jazz git@hub POWER", keepSpecialCharacters: false), "mesqueeb BluesJazz github POWER") }
func testSpaceCase_____keepSpecialVariousCharactersSpaces() { XCTAssertEqual(   spaceCase("$mesqueeb Blues.Jazz git@hub POWER", keepSpecialCharacters: true ), "$mesqueeb Blues.Jazz git@hub POWER") }
func testPathCase____removeSpecialVariousCharactersSpaces() { XCTAssertEqual(    pathCase("$mesqueeb Blues.Jazz git@hub POWER", keepSpecialCharacters: false), "mesqueeb/BluesJazz/github/POWER") }
func testPathCase______keepSpecialVariousCharactersSpaces() { XCTAssertEqual(    pathCase("$mesqueeb Blues.Jazz git@hub POWER", keepSpecialCharacters: true ), "$mesqueeb/Blues.Jazz/git@hub/POWER") }
func testLowerCase___removeSpecialVariousCharactersSpaces() { XCTAssertEqual(   lowerCase("$mesqueeb Blues.Jazz git@hub POWER", keepSpecialCharacters: false), "mesqueeb bluesjazz github power") }
func testLowerCase_____keepSpecialVariousCharactersSpaces() { XCTAssertEqual(   lowerCase("$mesqueeb Blues.Jazz git@hub POWER", keepSpecialCharacters: true ), "$mesqueeb blues.jazz git@hub power") }
func testUpperCase___removeSpecialVariousCharactersSpaces() { XCTAssertEqual(   upperCase("$mesqueeb Blues.Jazz git@hub POWER", keepSpecialCharacters: false), "MESQUEEB BLUESJAZZ GITHUB POWER") }
func testUpperCase_____keepSpecialVariousCharactersSpaces() { XCTAssertEqual(   upperCase("$mesqueeb Blues.Jazz git@hub POWER", keepSpecialCharacters: true ), "$MESQUEEB BLUES.JAZZ GIT@HUB POWER") }
func testCapitalCase_removeSpecialVariousCharactersSpaces() { XCTAssertEqual( capitalCase("$mesqueeb Blues.Jazz git@hub POWER", keepSpecialCharacters: false), "Mesqueeb Bluesjazz Github Power") }
func testCapitalCase___keepSpecialVariousCharactersSpaces() { XCTAssertEqual( capitalCase("$mesqueeb Blues.Jazz git@hub POWER", keepSpecialCharacters: true ), "$Mesqueeb Blues.jazz Git@hub Power") }

// DON'T strip special characters -- query without spaces
func testCamelCaseerdontStrip () {
  XCTAssertEqual(
		camelCase("$orderBy=name&skip=3&sort=true&name=James-P&email=sullivan@monsters.inc", keepSpecialCharacters: true),
		"$orderBy=name&skip=3&sort=true&name=james-p&email=sullivan@monsters.inc"
	)
}
func testPascalCaseerdontStrip () {
  XCTAssertEqual(
		pascalCase("$orderBy=name&skip=3&sort=true&name=James-P&email=sullivan@monsters.inc", keepSpecialCharacters: true),
		"$OrderBy=Name&Skip=3&Sort=True&Name=James-P&Email=Sullivan@Monsters.Inc"
	)
}
func testKebabCaseerdontStrip () {
  XCTAssertEqual(
		kebabCase("$orderBy=name&skip=3&sort=true&name=James-P&email=sullivan@monsters.inc", keepSpecialCharacters: true),
		"$order-by=name&skip=3&sort=true&name=james-p&email=sullivan@monsters.inc"
	)
}
func testSnakeCaseerdontStrip () {
  XCTAssertEqual(
		snakeCase("$orderBy=name&skip=3&sort=true&name=James-P&email=sullivan@monsters.inc", keepSpecialCharacters: true),
		"$order_by=name&skip=3&sort=true&name=james-p&email=sullivan@monsters.inc"
	)
}
func testConstantCaseerdontStrip () {
  XCTAssertEqual(
		constantCase("$orderBy=name&skip=3&sort=true&name=James-P&email=sullivan@monsters.inc", keepSpecialCharacters: true),
		"$ORDER_BY=NAME&SKIP=3&SORT=TRUE&NAME=JAMES-P&EMAIL=SULLIVAN@MONSTERS.INC"
	)
}
func testSpaceCaseerdontStrip () {
  XCTAssertEqual(
		spaceCase("$orderBy=name&skip=3&sort=true&name=James-P&email=sullivan@monsters.inc", keepSpecialCharacters: true),
		"$order By=name&skip=3&sort=true&name=James-P&email=sullivan@monsters.inc"
	)
}
func testPathCaseerdontStrip () {
  XCTAssertEqual(
		pathCase("$orderBy=name&skip=3&sort=true&name=James-P&email=sullivan@monsters.inc", keepSpecialCharacters: true),
		"$order/By/=name/&skip/=3/&sort/=true/&name/=James/-P/&email/=sullivan/@monsters/.inc"
	)
}
func testLowerCaseerdontStrip () {
  XCTAssertEqual(
		lowerCase("$orderBy=name&skip=3&sort=true&name=James-P&email=sullivan@monsters.inc", keepSpecialCharacters: true),
		"$order by=name&skip=3&sort=true&name=james-p&email=sullivan@monsters.inc"
	)
}
func testUpperCaseerdontStrip () {
  XCTAssertEqual(
		upperCase("$orderBy=name&skip=3&sort=true&name=James-P&email=sullivan@monsters.inc", keepSpecialCharacters: true),
		"$ORDER BY=NAME&SKIP=3&SORT=TRUE&NAME=JAMES-P&EMAIL=SULLIVAN@MONSTERS.INC"
	)
}
func testCapitalCaseerdontStrip () {
  XCTAssertEqual(
		capitalCase("$orderBy=name&skip=3&sort=true&name=James-P&email=sullivan@monsters.inc", keepSpecialCharacters: true),
		"$Order By=Name&Skip=3&Sort=True&Name=James-P&Email=Sullivan@Monsters.Inc"
	)
}

// strip special characters -- query without spaces
func testCamelCaseerstrip () {
  XCTAssertEqual(
		camelCase("$orderBy=name&skip=3&sort=true&name=James-P&email=sullivan@monsters.inc", keepSpecialCharacters: false),
		"orderByNameSkip3SortTrueNameJamesPEmailSullivanMonstersInc"
	)
}
func testPascalCaseerstrip () {
  XCTAssertEqual(
		pascalCase("$orderBy=name&skip=3&sort=true&name=James-P&email=sullivan@monsters.inc", keepSpecialCharacters: false),
		"OrderByNameSkip3SortTrueNameJamesPEmailSullivanMonstersInc"
	)
}
func testKebabCaseerstrip () {
  XCTAssertEqual(
		kebabCase("$orderBy=name&skip=3&sort=true&name=James-P&email=sullivan@monsters.inc", keepSpecialCharacters: false),
		"order-by-name-skip-3-sort-true-name-james-p-email-sullivan-monsters-inc"
	)
}
func testSnakeCaseerstrip () {
  XCTAssertEqual(
		snakeCase("$orderBy=name&skip=3&sort=true&name=James-P&email=sullivan@monsters.inc", keepSpecialCharacters: false),
		"order_by_name_skip_3_sort_true_name_james_p_email_sullivan_monsters_inc"
	)
}
func testConstantCaseerstrip () {
  XCTAssertEqual(
		constantCase("$orderBy=name&skip=3&sort=true&name=James-P&email=sullivan@monsters.inc", keepSpecialCharacters: false),
		"ORDER_BY_NAME_SKIP_3_SORT_TRUE_NAME_JAMES_P_EMAIL_SULLIVAN_MONSTERS_INC"
	)
}
func testSpaceCaseerstrip () {
  XCTAssertEqual(
		spaceCase("$orderBy=name&skip=3&sort=true&name=James-P&email=sullivan@monsters.inc", keepSpecialCharacters: false),
		"order By name skip 3 sort true name James P email sullivan monsters inc"
	)
}
func testPathCaseerstrip () {
  XCTAssertEqual(
		pathCase("$orderBy=name&skip=3&sort=true&name=James-P&email=sullivan@monsters.inc", keepSpecialCharacters: false),
		"order/By/name/skip/3/sort/true/name/James/P/email/sullivan/monsters/inc"
	)
}
func testLowerCaseerstrip () {
  XCTAssertEqual(
		lowerCase("$orderBy=name&skip=3&sort=true&name=James-P&email=sullivan@monsters.inc", keepSpecialCharacters: false),
		"order by name skip 3 sort true name james p email sullivan monsters inc"
	)
}
func testUpperCaseerstrip () {
  XCTAssertEqual(
		upperCase("$orderBy=name&skip=3&sort=true&name=James-P&email=sullivan@monsters.inc", keepSpecialCharacters: false),
		"ORDER BY NAME SKIP 3 SORT TRUE NAME JAMES P EMAIL SULLIVAN MONSTERS INC"
	)
}
func testCapitalCaseerstrip () {
  XCTAssertEqual(
		capitalCase("$orderBy=name&skip=3&sort=true&name=James-P&email=sullivan@monsters.inc", keepSpecialCharacters: false),
		"Order By Name Skip 3 Sort True Name James P Email Sullivan Monsters Inc"
	)
}

}
