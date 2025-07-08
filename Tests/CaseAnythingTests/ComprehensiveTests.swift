// swift-format-ignore-file
import Testing

@testable import CaseAnything

@Test func camelCase() async throws {
  #expect(camelCase("ponytaVaporeonPOLIWRATH_ButterfreeA") == "ponytaVaporeonPoliwrathButterfreeA")
  #expect(camelCase("PonytaVaporeonPOLIWRATH_ButterfreeA") == "ponytaVaporeonPoliwrathButterfreeA")
  #expect(camelCase("ponyta-vaporeon-POLIWRATH-ButterfreeA") == "ponytaVaporeonPoliwrathButterfreeA")
  #expect(camelCase("Ponyta~vaporeon~POLIWRATH/ButterfreeA") == "ponytaVaporeonPoliwrathButterfreeA")
  #expect(camelCase("ponyta_vaporeon_POLIWRATH_ButterfreeA") == "ponytaVaporeonPoliwrathButterfreeA")
  #expect(camelCase("ponyta_Vaporeon_POLIWRATH_ButterfreeA") == "ponytaVaporeonPoliwrathButterfreeA")
  #expect(camelCase("ponyta.Vaporeon.POLIWRATH.ButterfreeA") == "ponytaVaporeonPoliwrathButterfreeA")
}
@Test func pascalCase() async throws {
  #expect(pascalCase("ponytaVaporeonPOLIWRATH_ButterfreeA") == "PonytaVaporeonPoliwrathButterfreeA")
  #expect(pascalCase("PonytaVaporeonPOLIWRATH_ButterfreeA") == "PonytaVaporeonPoliwrathButterfreeA")
  #expect(pascalCase("ponyta-vaporeon-POLIWRATH-ButterfreeA") == "PonytaVaporeonPoliwrathButterfreeA")
  #expect(pascalCase("Ponyta~vaporeon~POLIWRATH/ButterfreeA") == "PonytaVaporeonPoliwrathButterfreeA")
  #expect(pascalCase("ponyta_vaporeon_POLIWRATH_ButterfreeA") == "PonytaVaporeonPoliwrathButterfreeA")
  #expect(pascalCase("ponyta_Vaporeon_POLIWRATH_ButterfreeA") == "PonytaVaporeonPoliwrathButterfreeA")
  #expect(pascalCase("ponyta.Vaporeon.POLIWRATH.ButterfreeA") == "PonytaVaporeonPoliwrathButterfreeA")
}
@Test func kebabCase() async throws {
  #expect(kebabCase("ponytaVaporeonPOLIWRATH_ButterfreeA") == "ponyta-vaporeon-poliwrath-butterfree-a")
  #expect(kebabCase("PonytaVaporeonPOLIWRATH_ButterfreeA") == "ponyta-vaporeon-poliwrath-butterfree-a")
  #expect(kebabCase("ponyta-vaporeon-POLIWRATH-ButterfreeA") == "ponyta-vaporeon-poliwrath-butterfree-a")
  #expect(kebabCase("Ponyta~vaporeon~POLIWRATH/ButterfreeA") == "ponyta-vaporeon-poliwrath-butterfree-a")
  #expect(kebabCase("ponyta_vaporeon_POLIWRATH_ButterfreeA") == "ponyta-vaporeon-poliwrath-butterfree-a")
  #expect(kebabCase("ponyta_Vaporeon_POLIWRATH_ButterfreeA") == "ponyta-vaporeon-poliwrath-butterfree-a")
  #expect(kebabCase("ponyta.Vaporeon.POLIWRATH.ButterfreeA") == "ponyta-vaporeon-poliwrath-butterfree-a")
}
@Test func snakeCase() async throws {
  #expect(snakeCase("ponytaVaporeonPOLIWRATH_ButterfreeA") == "ponyta_vaporeon_poliwrath_butterfree_a")
  #expect(snakeCase("PonytaVaporeonPOLIWRATH_ButterfreeA") == "ponyta_vaporeon_poliwrath_butterfree_a")
  #expect(snakeCase("ponyta-vaporeon-POLIWRATH-ButterfreeA") == "ponyta_vaporeon_poliwrath_butterfree_a")
  #expect(snakeCase("Ponyta~vaporeon~POLIWRATH/ButterfreeA") == "ponyta_vaporeon_poliwrath_butterfree_a")
  #expect(snakeCase("ponyta_vaporeon_POLIWRATH_ButterfreeA") == "ponyta_vaporeon_poliwrath_butterfree_a")
  #expect(snakeCase("ponyta_Vaporeon_POLIWRATH_ButterfreeA") == "ponyta_vaporeon_poliwrath_butterfree_a")
  #expect(snakeCase("ponyta.Vaporeon.POLIWRATH.ButterfreeA") == "ponyta_vaporeon_poliwrath_butterfree_a")
}
@Test func constantCase() async throws {
  #expect(constantCase("ponytaVaporeonPOLIWRATH_ButterfreeA") == "PONYTA_VAPOREON_POLIWRATH_BUTTERFREE_A")
  #expect(constantCase("PonytaVaporeonPOLIWRATH_ButterfreeA") == "PONYTA_VAPOREON_POLIWRATH_BUTTERFREE_A")
  #expect(constantCase("ponyta-vaporeon-POLIWRATH-ButterfreeA") == "PONYTA_VAPOREON_POLIWRATH_BUTTERFREE_A")
  #expect(constantCase("Ponyta~vaporeon~POLIWRATH/ButterfreeA") == "PONYTA_VAPOREON_POLIWRATH_BUTTERFREE_A")
  #expect(constantCase("ponyta_vaporeon_POLIWRATH_ButterfreeA") == "PONYTA_VAPOREON_POLIWRATH_BUTTERFREE_A")
  #expect(constantCase("ponyta_Vaporeon_POLIWRATH_ButterfreeA") == "PONYTA_VAPOREON_POLIWRATH_BUTTERFREE_A")
  #expect(constantCase("ponyta.Vaporeon.POLIWRATH.ButterfreeA") == "PONYTA_VAPOREON_POLIWRATH_BUTTERFREE_A")
}
@Test func dotNotation() async throws {
  #expect(dotNotation("ponytaVaporeonPOLIWRATH_ButterfreeA") == "ponyta.Vaporeon.POLIWRATH.Butterfree.A")
  #expect(dotNotation("PonytaVaporeonPOLIWRATH_ButterfreeA") == "Ponyta.Vaporeon.POLIWRATH.Butterfree.A")
  #expect(dotNotation("ponyta-vaporeon-POLIWRATH-ButterfreeA") == "ponyta.vaporeon.POLIWRATH.Butterfree.A")
  #expect(dotNotation("Ponyta~vaporeon~POLIWRATH/ButterfreeA") == "Ponyta.vaporeon.POLIWRATH.Butterfree.A")
  #expect(dotNotation("ponyta_vaporeon_POLIWRATH_ButterfreeA") == "ponyta.vaporeon.POLIWRATH.Butterfree.A")
  #expect(dotNotation("ponyta_Vaporeon_POLIWRATH_ButterfreeA") == "ponyta.Vaporeon.POLIWRATH.Butterfree.A")
  #expect(dotNotation("ponyta.Vaporeon.POLIWRATH.ButterfreeA") == "ponyta.Vaporeon.POLIWRATH.Butterfree.A")
}
@Test func adaCase() async throws {
  #expect(adaCase("ponytaVaporeonPOLIWRATH_ButterfreeA") == "Ponyta_Vaporeon_Poliwrath_Butterfree_A")
  #expect(adaCase("PonytaVaporeonPOLIWRATH_ButterfreeA") == "Ponyta_Vaporeon_Poliwrath_Butterfree_A")
  #expect(adaCase("ponyta-vaporeon-POLIWRATH-ButterfreeA") == "Ponyta_Vaporeon_Poliwrath_Butterfree_A")
  #expect(adaCase("Ponyta~vaporeon~POLIWRATH/ButterfreeA") == "Ponyta_Vaporeon_Poliwrath_Butterfree_A")
  #expect(adaCase("ponyta_vaporeon_POLIWRATH_ButterfreeA") == "Ponyta_Vaporeon_Poliwrath_Butterfree_A")
  #expect(adaCase("ponyta_Vaporeon_POLIWRATH_ButterfreeA") == "Ponyta_Vaporeon_Poliwrath_Butterfree_A")
  #expect(adaCase("ponyta.Vaporeon.POLIWRATH.ButterfreeA") == "Ponyta_Vaporeon_Poliwrath_Butterfree_A")
}
@Test func cobolCase() async throws {
  #expect(cobolCase("ponytaVaporeonPOLIWRATH_ButterfreeA") == "PONYTA-VAPOREON-POLIWRATH-BUTTERFREE-A")
  #expect(cobolCase("PonytaVaporeonPOLIWRATH_ButterfreeA") == "PONYTA-VAPOREON-POLIWRATH-BUTTERFREE-A")
  #expect(cobolCase("ponyta-vaporeon-POLIWRATH-ButterfreeA") == "PONYTA-VAPOREON-POLIWRATH-BUTTERFREE-A")
  #expect(cobolCase("Ponyta~vaporeon~POLIWRATH/ButterfreeA") == "PONYTA-VAPOREON-POLIWRATH-BUTTERFREE-A")
  #expect(cobolCase("ponyta_vaporeon_POLIWRATH_ButterfreeA") == "PONYTA-VAPOREON-POLIWRATH-BUTTERFREE-A")
  #expect(cobolCase("ponyta_Vaporeon_POLIWRATH_ButterfreeA") == "PONYTA-VAPOREON-POLIWRATH-BUTTERFREE-A")
  #expect(cobolCase("ponyta.Vaporeon.POLIWRATH.ButterfreeA") == "PONYTA-VAPOREON-POLIWRATH-BUTTERFREE-A")
}
@Test func trainCase() async throws {
  #expect(trainCase("ponytaVaporeonPOLIWRATH_ButterfreeA") == "Ponyta-Vaporeon-Poliwrath-Butterfree-A")
  #expect(trainCase("PonytaVaporeonPOLIWRATH_ButterfreeA") == "Ponyta-Vaporeon-Poliwrath-Butterfree-A")
  #expect(trainCase("ponyta-vaporeon-POLIWRATH-ButterfreeA") == "Ponyta-Vaporeon-Poliwrath-Butterfree-A")
  #expect(trainCase("Ponyta~vaporeon~POLIWRATH/ButterfreeA") == "Ponyta-Vaporeon-Poliwrath-Butterfree-A")
  #expect(trainCase("ponyta_vaporeon_POLIWRATH_ButterfreeA") == "Ponyta-Vaporeon-Poliwrath-Butterfree-A")
  #expect(trainCase("ponyta_Vaporeon_POLIWRATH_ButterfreeA") == "Ponyta-Vaporeon-Poliwrath-Butterfree-A")
  #expect(trainCase("ponyta.Vaporeon.POLIWRATH.ButterfreeA") == "Ponyta-Vaporeon-Poliwrath-Butterfree-A")
}
@Test func lowerCase() async throws {
  #expect(lowerCase("ponytaVaporeonPOLIWRATH_ButterfreeA") == "ponyta vaporeon poliwrath_butterfree a")
  #expect(lowerCase("PonytaVaporeonPOLIWRATH_ButterfreeA") == "ponyta vaporeon poliwrath_butterfree a")
  #expect(lowerCase("ponyta-vaporeon-POLIWRATH-ButterfreeA") == "ponyta-vaporeon-poliwrath-butterfree a")
  #expect(lowerCase("Ponyta~vaporeon~POLIWRATH/ButterfreeA") == "ponyta~vaporeon~poliwrath/butterfree a")
  #expect(lowerCase("ponyta_vaporeon_POLIWRATH_ButterfreeA") == "ponyta_vaporeon_poliwrath_butterfree a")
  #expect(lowerCase("ponyta_Vaporeon_POLIWRATH_ButterfreeA") == "ponyta_vaporeon_poliwrath_butterfree a")
  #expect(lowerCase("ponyta.Vaporeon.POLIWRATH.ButterfreeA") == "ponyta.vaporeon.poliwrath.butterfree a")
}
@Test func upperCase() async throws {
  #expect(upperCase("ponytaVaporeonPOLIWRATH_ButterfreeA") == "PONYTA VAPOREON POLIWRATH_BUTTERFREE A")
  #expect(upperCase("PonytaVaporeonPOLIWRATH_ButterfreeA") == "PONYTA VAPOREON POLIWRATH_BUTTERFREE A")
  #expect(upperCase("ponyta-vaporeon-POLIWRATH-ButterfreeA") == "PONYTA-VAPOREON-POLIWRATH-BUTTERFREE A")
  #expect(upperCase("Ponyta~vaporeon~POLIWRATH/ButterfreeA") == "PONYTA~VAPOREON~POLIWRATH/BUTTERFREE A")
  #expect(upperCase("ponyta_vaporeon_POLIWRATH_ButterfreeA") == "PONYTA_VAPOREON_POLIWRATH_BUTTERFREE A")
  #expect(upperCase("ponyta_Vaporeon_POLIWRATH_ButterfreeA") == "PONYTA_VAPOREON_POLIWRATH_BUTTERFREE A")
  #expect(upperCase("ponyta.Vaporeon.POLIWRATH.ButterfreeA") == "PONYTA.VAPOREON.POLIWRATH.BUTTERFREE A")
}
@Test func capitalCase() async throws {
  #expect(capitalCase("ponytaVaporeonPOLIWRATH_ButterfreeA") == "Ponyta Vaporeon Poliwrath_Butterfree A")
  #expect(capitalCase("PonytaVaporeonPOLIWRATH_ButterfreeA") == "Ponyta Vaporeon Poliwrath_Butterfree A")
  #expect(capitalCase("ponyta-vaporeon-POLIWRATH-ButterfreeA") == "Ponyta-Vaporeon-Poliwrath-Butterfree A")
  #expect(capitalCase("Ponyta~vaporeon~POLIWRATH/ButterfreeA") == "Ponyta~Vaporeon~Poliwrath/Butterfree A")
  #expect(capitalCase("ponyta_vaporeon_POLIWRATH_ButterfreeA") == "Ponyta_Vaporeon_Poliwrath_Butterfree A")
  #expect(capitalCase("ponyta_Vaporeon_POLIWRATH_ButterfreeA") == "Ponyta_Vaporeon_Poliwrath_Butterfree A")
  #expect(capitalCase("ponyta.Vaporeon.POLIWRATH.ButterfreeA") == "Ponyta.Vaporeon.Poliwrath.Butterfree A")
}
@Test func spaceCase() async throws {
  #expect(spaceCase("ponytaVaporeonPOLIWRATH_ButterfreeA") == "ponyta Vaporeon POLIWRATH_Butterfree A")
  #expect(spaceCase("PonytaVaporeonPOLIWRATH_ButterfreeA") == "Ponyta Vaporeon POLIWRATH_Butterfree A")
  #expect(spaceCase("ponyta-vaporeon-POLIWRATH-ButterfreeA") == "ponyta-vaporeon-POLIWRATH-Butterfree A")
  #expect(spaceCase("Ponyta~vaporeon~POLIWRATH/ButterfreeA") == "Ponyta~vaporeon~POLIWRATH/Butterfree A")
  #expect(spaceCase("ponyta_vaporeon_POLIWRATH_ButterfreeA") == "ponyta_vaporeon_POLIWRATH_Butterfree A")
  #expect(spaceCase("ponyta_Vaporeon_POLIWRATH_ButterfreeA") == "ponyta_Vaporeon_POLIWRATH_Butterfree A")
  #expect(spaceCase("ponyta.Vaporeon.POLIWRATH.ButterfreeA") == "ponyta.Vaporeon.POLIWRATH.Butterfree A")
}

@Test func pathCase() async throws {
  #expect(pathCase("ponytaVaporeonPOLIWRATH_ButterfreeA") == "ponyta/Vaporeon/POLIWRATH/_Butterfree/A")
  #expect(pathCase("PonytaVaporeonPOLIWRATH_ButterfreeA") == "Ponyta/Vaporeon/POLIWRATH/_Butterfree/A")
  #expect(pathCase("ponyta-vaporeon-POLIWRATH-ButterfreeA") == "ponyta/-vaporeon/-POLIWRATH/-Butterfree/A")
  #expect(pathCase("Ponyta~vaporeon~POLIWRATH/ButterfreeA") == "Ponyta/~vaporeon/~POLIWRATH/Butterfree/A")
  #expect(pathCase("ponyta_vaporeon_POLIWRATH_ButterfreeA") == "ponyta/_vaporeon/_POLIWRATH/_Butterfree/A")
  #expect(pathCase("ponyta_Vaporeon_POLIWRATH_ButterfreeA") == "ponyta/_Vaporeon/_POLIWRATH/_Butterfree/A")
  #expect(pathCase("ponyta.Vaporeon.POLIWRATH.ButterfreeA") == "ponyta/.Vaporeon/.POLIWRATH/.Butterfree/A")
}
@Test func lowerCase_stripSpecialCharacters() async throws {
  #expect(lowerCase("ponytaVaporeonPOLIWRATH_ButterfreeA", keepSpecialCharacters: false) == "ponyta vaporeon poliwrath butterfree a") // prettier-ignore
  #expect(lowerCase("PonytaVaporeonPOLIWRATH_ButterfreeA", keepSpecialCharacters: false) == "ponyta vaporeon poliwrath butterfree a") // prettier-ignore
  #expect(lowerCase("ponyta-vaporeon-POLIWRATH-ButterfreeA", keepSpecialCharacters: false) == "ponyta vaporeon poliwrath butterfree a") // prettier-ignore
  #expect(lowerCase("Ponyta~vaporeon~POLIWRATH/ButterfreeA", keepSpecialCharacters: false) == "ponyta vaporeon poliwrath butterfree a") // prettier-ignore
  #expect(lowerCase("ponyta_vaporeon_POLIWRATH_ButterfreeA", keepSpecialCharacters: false) == "ponyta vaporeon poliwrath butterfree a") // prettier-ignore
  #expect(lowerCase("ponyta_Vaporeon_POLIWRATH_ButterfreeA", keepSpecialCharacters: false) == "ponyta vaporeon poliwrath butterfree a") // prettier-ignore
  #expect(lowerCase("ponyta.Vaporeon.POLIWRATH.ButterfreeA", keepSpecialCharacters: false) == "ponyta vaporeon poliwrath butterfree a") // prettier-ignore
}
@Test func upperCase_stripSpecialCharacters() async throws {
  #expect(upperCase("ponytaVaporeonPOLIWRATH_ButterfreeA", keepSpecialCharacters: false) == "PONYTA VAPOREON POLIWRATH BUTTERFREE A") // prettier-ignore
  #expect(upperCase("PonytaVaporeonPOLIWRATH_ButterfreeA", keepSpecialCharacters: false) == "PONYTA VAPOREON POLIWRATH BUTTERFREE A") // prettier-ignore
  #expect(upperCase("ponyta-vaporeon-POLIWRATH-ButterfreeA", keepSpecialCharacters: false) == "PONYTA VAPOREON POLIWRATH BUTTERFREE A") // prettier-ignore
  #expect(upperCase("Ponyta~vaporeon~POLIWRATH/ButterfreeA", keepSpecialCharacters: false) == "PONYTA VAPOREON POLIWRATH BUTTERFREE A") // prettier-ignore
  #expect(upperCase("ponyta_vaporeon_POLIWRATH_ButterfreeA", keepSpecialCharacters: false) == "PONYTA VAPOREON POLIWRATH BUTTERFREE A") // prettier-ignore
  #expect(upperCase("ponyta_Vaporeon_POLIWRATH_ButterfreeA", keepSpecialCharacters: false) == "PONYTA VAPOREON POLIWRATH BUTTERFREE A") // prettier-ignore
  #expect(upperCase("ponyta.Vaporeon.POLIWRATH.ButterfreeA", keepSpecialCharacters: false) == "PONYTA VAPOREON POLIWRATH BUTTERFREE A") // prettier-ignore
}
@Test func capitalCase_stripSpecialCharacters() async throws {
  #expect(capitalCase("ponytaVaporeonPOLIWRATH_ButterfreeA", keepSpecialCharacters: false) == "Ponyta Vaporeon Poliwrath Butterfree A") // prettier-ignore
  #expect(capitalCase("PonytaVaporeonPOLIWRATH_ButterfreeA", keepSpecialCharacters: false) == "Ponyta Vaporeon Poliwrath Butterfree A") // prettier-ignore
  #expect(capitalCase("ponyta-vaporeon-POLIWRATH-ButterfreeA", keepSpecialCharacters: false) == "Ponyta Vaporeon Poliwrath Butterfree A") // prettier-ignore
  #expect(capitalCase("Ponyta~vaporeon~POLIWRATH/ButterfreeA", keepSpecialCharacters: false) == "Ponyta Vaporeon Poliwrath Butterfree A") // prettier-ignore
  #expect(capitalCase("ponyta_vaporeon_POLIWRATH_ButterfreeA", keepSpecialCharacters: false) == "Ponyta Vaporeon Poliwrath Butterfree A") // prettier-ignore
  #expect(capitalCase("ponyta_Vaporeon_POLIWRATH_ButterfreeA", keepSpecialCharacters: false) == "Ponyta Vaporeon Poliwrath Butterfree A") // prettier-ignore
  #expect(capitalCase("ponyta.Vaporeon.POLIWRATH.ButterfreeA", keepSpecialCharacters: false) == "Ponyta Vaporeon Poliwrath Butterfree A") // prettier-ignore
}
@Test func spaceCase_stripSpecialCharacters() async throws {
  #expect(spaceCase("ponytaVaporeonPOLIWRATH_ButterfreeA", keepSpecialCharacters: false) == "ponyta Vaporeon POLIWRATH Butterfree A") // prettier-ignore
  #expect(spaceCase("PonytaVaporeonPOLIWRATH_ButterfreeA", keepSpecialCharacters: false) == "Ponyta Vaporeon POLIWRATH Butterfree A") // prettier-ignore
  #expect(spaceCase("ponyta-vaporeon-POLIWRATH-ButterfreeA", keepSpecialCharacters: false) == "ponyta vaporeon POLIWRATH Butterfree A") // prettier-ignore
  #expect(spaceCase("Ponyta~vaporeon~POLIWRATH/ButterfreeA", keepSpecialCharacters: false) == "Ponyta vaporeon POLIWRATH Butterfree A") // prettier-ignore
  #expect(spaceCase("ponyta_vaporeon_POLIWRATH_ButterfreeA", keepSpecialCharacters: false) == "ponyta vaporeon POLIWRATH Butterfree A") // prettier-ignore
  #expect(spaceCase("ponyta_Vaporeon_POLIWRATH_ButterfreeA", keepSpecialCharacters: false) == "ponyta Vaporeon POLIWRATH Butterfree A") // prettier-ignore
  #expect(spaceCase("ponyta.Vaporeon.POLIWRATH.ButterfreeA", keepSpecialCharacters: false) == "ponyta Vaporeon POLIWRATH Butterfree A") // prettier-ignore
}

@Test func pathCase_stripSpecialCharacters() async throws {
  #expect(pathCase("ponytaVaporeonPOLIWRATH_ButterfreeA", keepSpecialCharacters: false) == "ponyta/Vaporeon/POLIWRATH/Butterfree/A") // prettier-ignore
  #expect(pathCase("PonytaVaporeonPOLIWRATH_ButterfreeA", keepSpecialCharacters: false) == "Ponyta/Vaporeon/POLIWRATH/Butterfree/A") // prettier-ignore
  #expect(pathCase("ponyta-vaporeon-POLIWRATH-ButterfreeA", keepSpecialCharacters: false) == "ponyta/vaporeon/POLIWRATH/Butterfree/A") // prettier-ignore
  #expect(pathCase("Ponyta~vaporeon~POLIWRATH/ButterfreeA", keepSpecialCharacters: false) == "Ponyta/vaporeon/POLIWRATH/Butterfree/A") // prettier-ignore
  #expect(pathCase("ponyta_vaporeon_POLIWRATH_ButterfreeA", keepSpecialCharacters: false) == "ponyta/vaporeon/POLIWRATH/Butterfree/A") // prettier-ignore
  #expect(pathCase("ponyta_Vaporeon_POLIWRATH_ButterfreeA", keepSpecialCharacters: false) == "ponyta/Vaporeon/POLIWRATH/Butterfree/A") // prettier-ignore
  #expect(pathCase("ponyta.Vaporeon.POLIWRATH.ButterfreeA", keepSpecialCharacters: false) == "ponyta/Vaporeon/POLIWRATH/Butterfree/A") // prettier-ignore
}

// single capital
@Test func camelCase____QTableA() async throws { #expect(    camelCase("QTableA") == "qTableA") }
@Test func pascalCase___QTableA() async throws { #expect(   pascalCase("QTableA") == "QTableA") }
@Test func kebabCase____QTableA() async throws { #expect(    kebabCase("QTableA") == "q-table-a") }
@Test func snakeCase____QTableA() async throws { #expect(    snakeCase("QTableA") == "q_table_a") }
@Test func constantCase_QTableA() async throws { #expect( constantCase("QTableA") == "Q_TABLE_A") }
@Test func dotNotation__QTableA() async throws { #expect(  dotNotation("QTableA") == "Q.Table.A") }
@Test func adaCase______QTableA() async throws { #expect(      adaCase("QTableA") == "Q_Table_A") }
@Test func cobolCase____QTableA() async throws { #expect(    cobolCase("QTableA") == "Q-TABLE-A") }
@Test func trainCase____QTableA() async throws { #expect(    trainCase("QTableA") == "Q-Table-A") }
@Test func spaceCase____QTableA() async throws { #expect(    spaceCase("QTableA") == "Q Table A") }
@Test func pathCase_____QTableA() async throws { #expect(     pathCase("QTableA") == "Q/Table/A") }
@Test func lowerCase____QTableA() async throws { #expect(    lowerCase("QTableA") == "q table a") }
@Test func upperCase____QTableA() async throws { #expect(    upperCase("QTableA") == "Q TABLE A") }
@Test func capitalCase__QTableA() async throws { #expect(  capitalCase("QTableA") == "Q Table A") }

// spaces & special characters
@Test func camelCase____ImAMIB101Ok() async throws { #expect(    camelCase("I'm a M.I.B. 101 OK?") == "imAMib101Ok") }
@Test func pascalCase___ImAMIB101Ok() async throws { #expect(   pascalCase("I'm a M.I.B. 101 OK?") == "ImAMib101Ok") }
@Test func kebabCase____ImAMIB101Ok() async throws { #expect(    kebabCase("I'm a M.I.B. 101 OK?") == "im-a-mib-101-ok") }
@Test func snakeCase____ImAMIB101Ok() async throws { #expect(    snakeCase("I'm a M.I.B. 101 OK?") == "im_a_mib_101_ok") }
@Test func constantCase_ImAMIB101Ok() async throws { #expect( constantCase("I'm a M.I.B. 101 OK?") == "IM_A_MIB_101_OK") }
@Test func dotNotation__ImAMIB101Ok() async throws { #expect(  dotNotation("I'm a M.I.B. 101 OK?") == "Im.a.MIB.101.OK") }
@Test func adaCase______ImAMIB101Ok() async throws { #expect(      adaCase("I'm a M.I.B. 101 OK?") == "Im_A_Mib_101_Ok") }
@Test func cobolCase____ImAMIB101Ok() async throws { #expect(    cobolCase("I'm a M.I.B. 101 OK?") == "IM-A-MIB-101-OK") }
@Test func trainCase____ImAMIB101Ok() async throws { #expect(    trainCase("I'm a M.I.B. 101 OK?") == "Im-A-Mib-101-Ok") }
@Test func spaceCase____ImAMIB101Ok() async throws { #expect(    spaceCase("I'm a M.I.B. 101 OK?") == "I'm a M.I.B. 101 OK?") }
@Test func pathCase_____ImAMIB101Ok() async throws { #expect(     pathCase("I'm a M.I.B. 101 OK?") == "I'm/a/M.I.B./101/OK?") }
@Test func lowerCase____ImAMIB101Ok() async throws { #expect(    lowerCase("I'm a M.I.B. 101 OK?") == "i'm a m.i.b. 101 ok?") }
@Test func upperCase____ImAMIB101Ok() async throws { #expect(    upperCase("I'm a M.I.B. 101 OK?") == "I'M A M.I.B. 101 OK?") }
@Test func capitalCase__ImAMIB101Ok() async throws { #expect(  capitalCase("I'm a M.I.B. 101 OK?") == "I'm A M.i.b. 101 Ok?") }

// spaces & special characters
@Test func camelCase____listenIMOK() async throws { #expect(    camelCase("listen I'm O.K.!") == "listenImOk") }
@Test func pascalCase___listenIMOK() async throws { #expect(   pascalCase("listen I'm O.K.!") == "ListenImOk") }
@Test func kebabCase____listenIMOK() async throws { #expect(    kebabCase("listen I'm O.K.!") == "listen-im-ok") }
@Test func snakeCase____listenIMOK() async throws { #expect(    snakeCase("listen I'm O.K.!") == "listen_im_ok") }
@Test func constantCase_listenIMOK() async throws { #expect( constantCase("listen I'm O.K.!") == "LISTEN_IM_OK") }
@Test func dotNotation__listenIMOK() async throws { #expect(  dotNotation("listen I'm O.K.!") == "listen.Im.OK") }
@Test func adaCase______listenIMOK() async throws { #expect(      adaCase("listen I'm O.K.!") == "Listen_Im_Ok") }
@Test func cobolCase____listenIMOK() async throws { #expect(    cobolCase("listen I'm O.K.!") == "LISTEN-IM-OK") }
@Test func trainCase____listenIMOK() async throws { #expect(    trainCase("listen I'm O.K.!") == "Listen-Im-Ok") }
@Test func spaceCase____listenIMOK() async throws { #expect(    spaceCase("listen I'm O.K.!") == "listen I'm O.K.!") }
@Test func pathCase_____listenIMOK() async throws { #expect(     pathCase("listen I'm O.K.!") == "listen/I'm/O.K.!") }
@Test func lowerCase____listenIMOK() async throws { #expect(    lowerCase("listen I'm O.K.!") == "listen i'm o.k.!") }
@Test func upperCase____listenIMOK() async throws { #expect(    upperCase("listen I'm O.K.!") == "LISTEN I'M O.K.!") }
@Test func capitalCase__listenIMOK() async throws { #expect(  capitalCase("listen I'm O.K.!") == "Listen I'm O.k.!") }

// double spacing
@Test func camelCase____doubleRainbow() async throws { #expect(    camelCase("Double  Rainbow") == "doubleRainbow") }
@Test func pascalCase___doubleRainbow() async throws { #expect(   pascalCase("Double  Rainbow") == "DoubleRainbow") }
@Test func kebabCase____doubleRainbow() async throws { #expect(    kebabCase("Double  Rainbow") == "double-rainbow") }
@Test func snakeCase____doubleRainbow() async throws { #expect(    snakeCase("Double  Rainbow") == "double_rainbow") }
@Test func constantCase_doubleRainbow() async throws { #expect( constantCase("Double  Rainbow") == "DOUBLE_RAINBOW") }
@Test func dotNotation__doubleRainbow() async throws { #expect(  dotNotation("Double  Rainbow") == "Double.Rainbow") }
@Test func adaCase______doubleRainbow() async throws { #expect(      adaCase("Double  Rainbow") == "Double_Rainbow") }
@Test func cobolCase____doubleRainbow() async throws { #expect(    cobolCase("Double  Rainbow") == "DOUBLE-RAINBOW") }
@Test func trainCase____doubleRainbow() async throws { #expect(    trainCase("Double  Rainbow") == "Double-Rainbow") }
@Test func spaceCase____doubleRainbow() async throws { #expect(    spaceCase("Double  Rainbow") == "Double Rainbow") }
@Test func pathCase_____doubleRainbow() async throws { #expect(     pathCase("Double  Rainbow") == "Double/Rainbow") }
@Test func lowerCase____doubleRainbow() async throws { #expect(    lowerCase("Double  Rainbow") == "double rainbow") }
@Test func upperCase____doubleRainbow() async throws { #expect(    upperCase("Double  Rainbow") == "DOUBLE RAINBOW") }
@Test func capitalCase__doubleRainbow() async throws { #expect(  capitalCase("Double  Rainbow") == "Double Rainbow") }

/// Default normalization in Swift (NFC)
func n (_ str: String) -> String { str.precomposedStringWithCanonicalMapping }

// special characters with Canonical Composition:
let specialCharsNFCSpaces = "Ågård î garçons Çafé château voilà ñoël été l'aïeul Ågård ÀÖØß àöøÿ".precomposedStringWithCanonicalMapping // NFC normalization

@Test func camelCase____specialCharsNfcSpaces() async throws { #expect(n(    camelCase(specialCharsNFCSpaces)) == n("agardIGarconsCafeChateauVoilaNoelEteLaieulAgardAoøßAoøy")) }
@Test func pascalCase___specialCharsNfcSpaces() async throws { #expect(n(   pascalCase(specialCharsNFCSpaces)) == n("AgardIGarconsCafeChateauVoilaNoelEteLaieulAgardAoøßAoøy")) }
@Test func kebabCase____specialCharsNfcSpaces() async throws { #expect(n(    kebabCase(specialCharsNFCSpaces)) == n("agard-i-garcons-cafe-chateau-voila-noel-ete-laieul-agard-aoøß-aoøy")) }
@Test func snakeCase____specialCharsNfcSpaces() async throws { #expect(n(    snakeCase(specialCharsNFCSpaces)) == n("agard_i_garcons_cafe_chateau_voila_noel_ete_laieul_agard_aoøß_aoøy")) }
@Test func constantCase_specialCharsNfcSpaces() async throws { #expect(n( constantCase(specialCharsNFCSpaces)) == n("AGARD_I_GARCONS_CAFE_CHATEAU_VOILA_NOEL_ETE_LAIEUL_AGARD_AOØSS_AOØY")) }
@Test func dotNotation__specialCharsNfcSpaces() async throws { #expect(n(  dotNotation(specialCharsNFCSpaces)) == n("Agard.i.garcons.Cafe.chateau.voila.noel.ete.laieul.Agard.AOØß.aoøy")) }
@Test func adaCase______specialCharsNfcSpaces() async throws { #expect(n(      adaCase(specialCharsNFCSpaces)) == n("Agard_I_Garcons_Cafe_Chateau_Voila_Noel_Ete_Laieul_Agard_Aoøß_Aoøy")) }
@Test func cobolCase____specialCharsNfcSpaces() async throws { #expect(n(    cobolCase(specialCharsNFCSpaces)) == n("AGARD-I-GARCONS-CAFE-CHATEAU-VOILA-NOEL-ETE-LAIEUL-AGARD-AOØSS-AOØY")) }
@Test func trainCase____specialCharsNfcSpaces() async throws { #expect(n(    trainCase(specialCharsNFCSpaces)) == n("Agard-I-Garcons-Cafe-Chateau-Voila-Noel-Ete-Laieul-Agard-Aoøß-Aoøy")) }
@Test func spaceCase____specialCharsNfcSpaces() async throws { #expect(n(    spaceCase(specialCharsNFCSpaces)) == n("Ågård î garçons Çafé château voilà ñoël été l'aïeul Ågård ÀÖØß àöøÿ")) }
@Test func pathCase_____specialCharsNfcSpaces() async throws { #expect(n(     pathCase(specialCharsNFCSpaces)) == n("Ågård/î/garçons/Çafé/château/voilà/ñoël/été/l'aïeul/Ågård/ÀÖØß/àöøÿ")) }
@Test func lowerCase____specialCharsNfcSpaces() async throws { #expect(n(    lowerCase(specialCharsNFCSpaces)) == n("ågård î garçons çafé château voilà ñoël été l'aïeul ågård àöøß àöøÿ")) }
@Test func upperCase____specialCharsNfcSpaces() async throws { #expect(n(    upperCase(specialCharsNFCSpaces)) == n("ÅGÅRD Î GARÇONS ÇAFÉ CHÂTEAU VOILÀ ÑOËL ÉTÉ L'AÏEUL ÅGÅRD ÀÖØSS ÀÖØŸ")) }
@Test func capitalCase__specialCharsNfcSpaces() async throws { #expect(n(  capitalCase(specialCharsNFCSpaces)) == n("Ågård Î Garçons Çafé Château Voilà Ñoël Été L'aïeul Ågård Àöøß Àöøÿ")) }

// special characters with Canonical Decomposition:
let specialCharsNFDSpaces = "Ågård î garçons Çafé château voilà ñoël été l'aïeul Ågård ÀÖØß àöøÿ".decomposedStringWithCanonicalMapping // NFD normalization

@Test func camelCase____specialCharsNfdSpaces() async throws { #expect(n(    camelCase(specialCharsNFDSpaces)) == n("agardIGarconsCafeChateauVoilaNoelEteLaieulAgardAoøßAoøy")) }
@Test func pascalCase___specialCharsNfdSpaces() async throws { #expect(n(   pascalCase(specialCharsNFDSpaces)) == n("AgardIGarconsCafeChateauVoilaNoelEteLaieulAgardAoøßAoøy")) }
@Test func kebabCase____specialCharsNfdSpaces() async throws { #expect(n(    kebabCase(specialCharsNFDSpaces)) == n("agard-i-garcons-cafe-chateau-voila-noel-ete-laieul-agard-aoøß-aoøy")) }
@Test func snakeCase____specialCharsNfdSpaces() async throws { #expect(n(    snakeCase(specialCharsNFDSpaces)) == n("agard_i_garcons_cafe_chateau_voila_noel_ete_laieul_agard_aoøß_aoøy")) }
@Test func constantCase_specialCharsNfdSpaces() async throws { #expect(n( constantCase(specialCharsNFDSpaces)) == n("AGARD_I_GARCONS_CAFE_CHATEAU_VOILA_NOEL_ETE_LAIEUL_AGARD_AOØSS_AOØY")) }
@Test func dotNotation__specialCharsNfdSpaces() async throws { #expect(n(  dotNotation(specialCharsNFDSpaces)) == n("Agard.i.garcons.Cafe.chateau.voila.noel.ete.laieul.Agard.AOØß.aoøy")) }
@Test func adaCase______specialCharsNfdSpaces() async throws { #expect(n(      adaCase(specialCharsNFDSpaces)) == n("Agard_I_Garcons_Cafe_Chateau_Voila_Noel_Ete_Laieul_Agard_Aoøß_Aoøy")) }
@Test func cobolCase____specialCharsNfdSpaces() async throws { #expect(n(    cobolCase(specialCharsNFDSpaces)) == n("AGARD-I-GARCONS-CAFE-CHATEAU-VOILA-NOEL-ETE-LAIEUL-AGARD-AOØSS-AOØY")) }
@Test func trainCase____specialCharsNfdSpaces() async throws { #expect(n(    trainCase(specialCharsNFDSpaces)) == n("Agard-I-Garcons-Cafe-Chateau-Voila-Noel-Ete-Laieul-Agard-Aoøß-Aoøy")) }
@Test func spaceCase____specialCharsNfdSpaces() async throws { #expect(n(    spaceCase(specialCharsNFDSpaces)) == n("Ågård î garçons Çafé château voilà ñoël été l'aïeul Ågård ÀÖØß àöøÿ")) }
@Test func pathCase_____specialCharsNfdSpaces() async throws { #expect(n(     pathCase(specialCharsNFDSpaces)) == n("Ågård/î/garçons/Çafé/château/voilà/ñoël/été/l'aïeul/Ågård/ÀÖØß/àöøÿ")) }
@Test func lowerCase____specialCharsNfdSpaces() async throws { #expect(n(    lowerCase(specialCharsNFDSpaces)) == n("ågård î garçons çafé château voilà ñoël été l'aïeul ågård àöøß àöøÿ")) }
@Test func upperCase____specialCharsNfdSpaces() async throws { #expect(n(    upperCase(specialCharsNFDSpaces)) == n("ÅGÅRD Î GARÇONS ÇAFÉ CHÂTEAU VOILÀ ÑOËL ÉTÉ L'AÏEUL ÅGÅRD ÀÖØSS ÀÖØŸ")) }
@Test func capitalCase__specialCharsNfdSpaces() async throws { #expect(n(  capitalCase(specialCharsNFDSpaces)) == n("Ågård Î Garçons Çafé Château Voilà Ñoël Été L'aïeul Ågård Àöøß Àöøÿ")) }

// special characters with Canonical Composition without spaces:
let specialCharsNFC = "Ågård_î_garçons_Çafé_château_voilà_ñoël_été_laïeul_Ågård_ÀÖØß_àöøÿ".precomposedStringWithCanonicalMapping // NFC normalization
@Test func camelCase____specialCharsNfc() async throws { #expect(n(    camelCase(specialCharsNFC)) == n("agardIGarconsCafeChateauVoilaNoelEteLaieulAgardAoøßAoøy")) }
@Test func pascalCase___specialCharsNfc() async throws { #expect(n(   pascalCase(specialCharsNFC)) == n("AgardIGarconsCafeChateauVoilaNoelEteLaieulAgardAoøßAoøy")) }
@Test func kebabCase____specialCharsNfc() async throws { #expect(n(    kebabCase(specialCharsNFC)) == n("agard-i-garcons-cafe-chateau-voila-noel-ete-laieul-agard-aoøß-aoøy")) }
@Test func snakeCase____specialCharsNfc() async throws { #expect(n(    snakeCase(specialCharsNFC)) == n("agard_i_garcons_cafe_chateau_voila_noel_ete_laieul_agard_aoøß_aoøy")) }
@Test func constantCase_specialCharsNfc() async throws { #expect(n( constantCase(specialCharsNFC)) == n("AGARD_I_GARCONS_CAFE_CHATEAU_VOILA_NOEL_ETE_LAIEUL_AGARD_AOØSS_AOØY")) }
@Test func dotNotation__specialCharsNfc() async throws { #expect(n(  dotNotation(specialCharsNFC)) == n("Agard.i.garcons.Cafe.chateau.voila.noel.ete.laieul.Agard.AOØß.aoøy")) }
@Test func adaCase______specialCharsNfc() async throws { #expect(n(      adaCase(specialCharsNFC)) == n("Agard_I_Garcons_Cafe_Chateau_Voila_Noel_Ete_Laieul_Agard_Aoøß_Aoøy")) }
@Test func cobolCase____specialCharsNfc() async throws { #expect(n(    cobolCase(specialCharsNFC)) == n("AGARD-I-GARCONS-CAFE-CHATEAU-VOILA-NOEL-ETE-LAIEUL-AGARD-AOØSS-AOØY")) }
@Test func trainCase____specialCharsNfc() async throws { #expect(n(    trainCase(specialCharsNFC)) == n("Agard-I-Garcons-Cafe-Chateau-Voila-Noel-Ete-Laieul-Agard-Aoøß-Aoøy")) }
@Test func spaceCase____specialCharsNfc() async throws { #expect(n(    spaceCase(specialCharsNFC)) == n("Ågård_î_garçons_Çafé_château_voilà_ñoël_été_laïeul_Ågård_ÀÖØß_àöøÿ")) }
@Test func pathCase_____specialCharsNfc() async throws { #expect(n(     pathCase(specialCharsNFC)) == n("Ågård/_î/_garçons/_Çafé/_château/_voilà/_ñoël/_été/_laïeul/_Ågård/_ÀÖØß/_àöøÿ")) }
@Test func lowerCase____specialCharsNfc() async throws { #expect(n(    lowerCase(specialCharsNFC)) == n("ågård_î_garçons_çafé_château_voilà_ñoël_été_laïeul_ågård_àöøß_àöøÿ")) }
@Test func upperCase____specialCharsNfc() async throws { #expect(n(    upperCase(specialCharsNFC)) == n("ÅGÅRD_Î_GARÇONS_ÇAFÉ_CHÂTEAU_VOILÀ_ÑOËL_ÉTÉ_LAÏEUL_ÅGÅRD_ÀÖØSS_ÀÖØŸ")) }
@Test func capitalCase__specialCharsNfc() async throws { #expect(n(  capitalCase(specialCharsNFC)) == n("Ågård_Î_Garçons_Çafé_Château_Voilà_Ñoël_Été_Laïeul_Ågård_Àöøß_Àöøÿ")) }

// special characters with Canonical Decomposition without spaces:
let specialCharsNFD = "Ågård_î_garçons_Çafé_château_voilà_ñoël_été_laïeul_Ågård_ÀÖØß_àöøÿ".decomposedStringWithCanonicalMapping // NFD normalization

@Test func camelCase____specialCharsNfd() async throws { #expect(n(    camelCase(specialCharsNFD)) == n("agardIGarconsCafeChateauVoilaNoelEteLaieulAgardAoøßAoøy")) }
@Test func pascalCase___specialCharsNfd() async throws { #expect(n(   pascalCase(specialCharsNFD)) == n("AgardIGarconsCafeChateauVoilaNoelEteLaieulAgardAoøßAoøy")) }
@Test func kebabCase____specialCharsNfd() async throws { #expect(n(    kebabCase(specialCharsNFD)) == n("agard-i-garcons-cafe-chateau-voila-noel-ete-laieul-agard-aoøß-aoøy")) }
@Test func snakeCase____specialCharsNfd() async throws { #expect(n(    snakeCase(specialCharsNFD)) == n("agard_i_garcons_cafe_chateau_voila_noel_ete_laieul_agard_aoøß_aoøy")) }
@Test func constantCase_specialCharsNfd() async throws { #expect(n( constantCase(specialCharsNFD)) == n("AGARD_I_GARCONS_CAFE_CHATEAU_VOILA_NOEL_ETE_LAIEUL_AGARD_AOØSS_AOØY")) }
@Test func dotNotation__specialCharsNfd() async throws { #expect(n(  dotNotation(specialCharsNFD)) == n("Agard.i.garcons.Cafe.chateau.voila.noel.ete.laieul.Agard.AOØß.aoøy")) }
@Test func adaCase______specialCharsNfd() async throws { #expect(n(      adaCase(specialCharsNFD)) == n("Agard_I_Garcons_Cafe_Chateau_Voila_Noel_Ete_Laieul_Agard_Aoøß_Aoøy")) }
@Test func cobolCase____specialCharsNfd() async throws { #expect(n(    cobolCase(specialCharsNFD)) == n("AGARD-I-GARCONS-CAFE-CHATEAU-VOILA-NOEL-ETE-LAIEUL-AGARD-AOØSS-AOØY")) }
@Test func trainCase____specialCharsNfd() async throws { #expect(n(    trainCase(specialCharsNFD)) == n("Agard-I-Garcons-Cafe-Chateau-Voila-Noel-Ete-Laieul-Agard-Aoøß-Aoøy")) }
@Test func spaceCase____specialCharsNfd() async throws { #expect(n(    spaceCase(specialCharsNFD)) == n("Ågård_î_garçons_Çafé_château_voilà_ñoël_été_laïeul_Ågård_ÀÖØß_àöøÿ")) }
@Test func pathCase_____specialCharsNfd() async throws { #expect(n(     pathCase(specialCharsNFD)) == n("Ågård/_î/_garçons/_Çafé/_château/_voilà/_ñoël/_été/_laïeul/_Ågård/_ÀÖØß/_àöøÿ")) }
@Test func lowerCase____specialCharsNfd() async throws { #expect(n(    lowerCase(specialCharsNFD)) == n("ågård_î_garçons_çafé_château_voilà_ñoël_été_laïeul_ågård_àöøß_àöøÿ")) }
@Test func upperCase____specialCharsNfd() async throws { #expect(n(    upperCase(specialCharsNFD)) == n("ÅGÅRD_Î_GARÇONS_ÇAFÉ_CHÂTEAU_VOILÀ_ÑOËL_ÉTÉ_LAÏEUL_ÅGÅRD_ÀÖØSS_ÀÖØŸ")) }
@Test func capitalCase__specialCharsNfd() async throws { #expect(n(  capitalCase(specialCharsNFD)) == n("Ågård_Î_Garçons_Çafé_Château_Voilà_Ñoël_Été_Laïeul_Ågård_Àöøß_Àöøÿ")) }

// special characters with Canonical Composition without spaces - short example:
@Test func camelCase____specialCharsNfcShort() async throws { #expect(n(    camelCase("ÇaféÅgård".precomposedStringWithCanonicalMapping)) == n("cafeAgard")) }
@Test func pascalCase___specialCharsNfcShort() async throws { #expect(n(   pascalCase("ÇaféÅgård".precomposedStringWithCanonicalMapping)) == n("CafeAgard")) }
@Test func kebabCase____specialCharsNfcShort() async throws { #expect(n(    kebabCase("ÇaféÅgård".precomposedStringWithCanonicalMapping)) == n("cafe-agard")) }
@Test func snakeCase____specialCharsNfcShort() async throws { #expect(n(    snakeCase("ÇaféÅgård".precomposedStringWithCanonicalMapping)) == n("cafe_agard")) }
@Test func constantCase_specialCharsNfcShort() async throws { #expect(n( constantCase("ÇaféÅgård".precomposedStringWithCanonicalMapping)) == n("CAFE_AGARD")) }
@Test func dotNotation__specialCharsNfcShort() async throws { #expect(n(  dotNotation("ÇaféÅgård".precomposedStringWithCanonicalMapping)) == n("Cafe.Agard")) }
@Test func adaCase______specialCharsNfcShort() async throws { #expect(n(      adaCase("ÇaféÅgård".precomposedStringWithCanonicalMapping)) == n("Cafe_Agard")) }
@Test func cobolCase____specialCharsNfcShort() async throws { #expect(n(    cobolCase("ÇaféÅgård".precomposedStringWithCanonicalMapping)) == n("CAFE-AGARD")) }
@Test func trainCase____specialCharsNfcShort() async throws { #expect(n(    trainCase("ÇaféÅgård".precomposedStringWithCanonicalMapping)) == n("Cafe-Agard")) }
@Test func spaceCase____specialCharsNfcShort() async throws { #expect(n(    spaceCase("ÇaféÅgård".precomposedStringWithCanonicalMapping)) == n("Çafé Ågård")) }
@Test func pathCase_____specialCharsNfcShort() async throws { #expect(n(     pathCase("ÇaféÅgård".precomposedStringWithCanonicalMapping)) == n("Çafé/Ågård")) }
@Test func lowerCase____specialCharsNfcShort() async throws { #expect(n(    lowerCase("ÇaféÅgård".precomposedStringWithCanonicalMapping)) == n("çafé ågård")) }
@Test func upperCase____specialCharsNfcShort() async throws { #expect(n(    upperCase("ÇaféÅgård".precomposedStringWithCanonicalMapping)) == n("ÇAFÉ ÅGÅRD")) }
@Test func capitalCase__specialCharsNfcShort() async throws { #expect(n(  capitalCase("ÇaféÅgård".precomposedStringWithCanonicalMapping)) == n("Çafé Ågård")) }

// special characters with Canonical Decomposition without spaces - short example:
@Test func camelCase____specialCharsNfdShort() async throws { #expect(n(    camelCase("ÇaféÅgård".decomposedStringWithCanonicalMapping)) == n("cafeAgard")) }
@Test func pascalCase___specialCharsNfdShort() async throws { #expect(n(   pascalCase("ÇaféÅgård".decomposedStringWithCanonicalMapping)) == n("CafeAgard")) }
@Test func kebabCase____specialCharsNfdShort() async throws { #expect(n(    kebabCase("ÇaféÅgård".decomposedStringWithCanonicalMapping)) == n("cafe-agard")) }
@Test func snakeCase____specialCharsNfdShort() async throws { #expect(n(    snakeCase("ÇaféÅgård".decomposedStringWithCanonicalMapping)) == n("cafe_agard")) }
@Test func constantCase_specialCharsNfdShort() async throws { #expect(n( constantCase("ÇaféÅgård".decomposedStringWithCanonicalMapping)) == n("CAFE_AGARD")) }
@Test func dotNotation__specialCharsNfdShort() async throws { #expect(n(  dotNotation("ÇaféÅgård".decomposedStringWithCanonicalMapping)) == n("Cafe.Agard")) }
@Test func adaCase______specialCharsNfdShort() async throws { #expect(n(      adaCase("ÇaféÅgård".decomposedStringWithCanonicalMapping)) == n("Cafe_Agard")) }
@Test func cobolCase____specialCharsNfdShort() async throws { #expect(n(    cobolCase("ÇaféÅgård".decomposedStringWithCanonicalMapping)) == n("CAFE-AGARD")) }
@Test func trainCase____specialCharsNfdShort() async throws { #expect(n(    trainCase("ÇaféÅgård".decomposedStringWithCanonicalMapping)) == n("Cafe-Agard")) }
@Test func spaceCase____specialCharsNfdShort() async throws { #expect(n(    spaceCase("ÇaféÅgård".decomposedStringWithCanonicalMapping)) == n("Çafé Ågård")) }
@Test func pathCase_____specialCharsNfdShort() async throws { #expect(n(     pathCase("ÇaféÅgård".decomposedStringWithCanonicalMapping)) == n("Çafé/Ågård")) }
@Test func lowerCase____specialCharsNfdShort() async throws { #expect(n(    lowerCase("ÇaféÅgård".decomposedStringWithCanonicalMapping)) == n("çafé ågård")) }
@Test func upperCase____specialCharsNfdShort() async throws { #expect(n(    upperCase("ÇaféÅgård".decomposedStringWithCanonicalMapping)) == n("ÇAFÉ ÅGÅRD")) }
@Test func capitalCase__specialCharsNfdShort() async throws { #expect(n(  capitalCase("ÇaféÅgård".decomposedStringWithCanonicalMapping)) == n("Çafé Ågård")) }

// No spaces involved
@Test func camelCase____removeSpecialCharacters() async throws { #expect(    camelCase("$mesqueeb.BluesJazz@github.com", keepSpecialCharacters: false) == "mesqueebBluesJazzGithubCom") }
@Test func camelCase______keepSpecialCharacters() async throws { #expect(    camelCase("$mesqueeb.BluesJazz@github.com", keepSpecialCharacters: true ) == "$mesqueeb.bluesJazz@github.com") }
@Test func pascalCase___removeSpecialCharacters() async throws { #expect(   pascalCase("$mesqueeb.BluesJazz@github.com", keepSpecialCharacters: false) == "MesqueebBluesJazzGithubCom") }
@Test func pascalCase_____keepSpecialCharacters() async throws { #expect(   pascalCase("$mesqueeb.BluesJazz@github.com", keepSpecialCharacters: true ) == "$Mesqueeb.BluesJazz@Github.Com") }
@Test func kebabCase____removeSpecialCharacters() async throws { #expect(    kebabCase("$mesqueeb.BluesJazz@github.com", keepSpecialCharacters: false) == "mesqueeb-blues-jazz-github-com") }
@Test func kebabCase______keepSpecialCharacters() async throws { #expect(    kebabCase("$mesqueeb.BluesJazz@github.com", keepSpecialCharacters: true ) == "$mesqueeb.blues-jazz@github.com") }
@Test func snakeCase____removeSpecialCharacters() async throws { #expect(    snakeCase("$mesqueeb.BluesJazz@github.com", keepSpecialCharacters: false) == "mesqueeb_blues_jazz_github_com") }
@Test func snakeCase______keepSpecialCharacters() async throws { #expect(    snakeCase("$mesqueeb.BluesJazz@github.com", keepSpecialCharacters: true ) == "$mesqueeb.blues_jazz@github.com") }
@Test func constantCase_removeSpecialCharacters() async throws { #expect( constantCase("$mesqueeb.BluesJazz@github.com", keepSpecialCharacters: false) == "MESQUEEB_BLUES_JAZZ_GITHUB_COM") }
@Test func constantCase___keepSpecialCharacters() async throws { #expect( constantCase("$mesqueeb.BluesJazz@github.com", keepSpecialCharacters: true ) == "$MESQUEEB.BLUES_JAZZ@GITHUB.COM") }

@Test func spaceCase___removeSpecialCharacters() async throws { #expect(   spaceCase("$mesqueeb.BluesJazz@github.com", keepSpecialCharacters: false) == "mesqueeb Blues Jazz github com") }
@Test func spaceCase_____keepSpecialCharacters() async throws { #expect(   spaceCase("$mesqueeb.BluesJazz@github.com", keepSpecialCharacters: true ) == "$mesqueeb.Blues Jazz@github.com") }
@Test func pathCase____removeSpecialCharacters() async throws { #expect(    pathCase("$mesqueeb.BluesJazz@github.com", keepSpecialCharacters: false) == "mesqueeb/Blues/Jazz/github/com") }
@Test func pathCase______keepSpecialCharacters() async throws { #expect(    pathCase("$mesqueeb.BluesJazz@github.com", keepSpecialCharacters: true ) == "$mesqueeb/.Blues/Jazz/@github/.com") }
@Test func lowerCase___removeSpecialCharacters() async throws { #expect(   lowerCase("$mesqueeb.BluesJazz@github.com", keepSpecialCharacters: false) == "mesqueeb blues jazz github com") }
@Test func lowerCase_____keepSpecialCharacters() async throws { #expect(   lowerCase("$mesqueeb.BluesJazz@github.com", keepSpecialCharacters: true ) == "$mesqueeb.blues jazz@github.com") }
@Test func upperCase___removeSpecialCharacters() async throws { #expect(   upperCase("$mesqueeb.BluesJazz@github.com", keepSpecialCharacters: false) == "MESQUEEB BLUES JAZZ GITHUB COM") }
@Test func upperCase_____keepSpecialCharacters() async throws { #expect(   upperCase("$mesqueeb.BluesJazz@github.com", keepSpecialCharacters: true ) == "$MESQUEEB.BLUES JAZZ@GITHUB.COM") }
@Test func capitalCase_removeSpecialCharacters() async throws { #expect( capitalCase("$mesqueeb.BluesJazz@github.com", keepSpecialCharacters: false) == "Mesqueeb Blues Jazz Github Com") }
@Test func capitalCase___keepSpecialCharacters() async throws { #expect( capitalCase("$mesqueeb.BluesJazz@github.com", keepSpecialCharacters: true ) == "$Mesqueeb.Blues Jazz@Github.Com") }

// Spaces involved
@Test func camelCase____removeSpecialCharactersSpaces() async throws { #expect(    camelCase("$mesqueeb .BluesJazz @github _POWER", keepSpecialCharacters: false) == "mesqueebBluesjazzGithubPower") }
@Test func camelCase______keepSpecialCharactersSpaces() async throws { #expect(    camelCase("$mesqueeb .BluesJazz @github _POWER", keepSpecialCharacters: true ) == "$mesqueeb.bluesjazz@github_power") }
@Test func pascalCase___removeSpecialCharactersSpaces() async throws { #expect(   pascalCase("$mesqueeb .BluesJazz @github _POWER", keepSpecialCharacters: false) == "MesqueebBluesjazzGithubPower") }
@Test func pascalCase_____keepSpecialCharactersSpaces() async throws { #expect(   pascalCase("$mesqueeb .BluesJazz @github _POWER", keepSpecialCharacters: true ) == "$Mesqueeb.Bluesjazz@Github_Power") }
@Test func kebabCase____removeSpecialCharactersSpaces() async throws { #expect(    kebabCase("$mesqueeb .BluesJazz @github _POWER", keepSpecialCharacters: false) == "mesqueeb-bluesjazz-github-power") }
@Test func kebabCase______keepSpecialCharactersSpaces() async throws { #expect(    kebabCase("$mesqueeb .BluesJazz @github _POWER", keepSpecialCharacters: true ) == "$mesqueeb-.bluesjazz-@github-_power") }
@Test func snakeCase____removeSpecialCharactersSpaces() async throws { #expect(    snakeCase("$mesqueeb .BluesJazz @github _POWER", keepSpecialCharacters: false) == "mesqueeb_bluesjazz_github_power") }
@Test func snakeCase______keepSpecialCharactersSpaces() async throws { #expect(    snakeCase("$mesqueeb .BluesJazz @github _POWER", keepSpecialCharacters: true ) == "$mesqueeb_.bluesjazz_@github__power") }
@Test func constantCase_removeSpecialCharactersSpaces() async throws { #expect( constantCase("$mesqueeb .BluesJazz @github _POWER", keepSpecialCharacters: false) == "MESQUEEB_BLUESJAZZ_GITHUB_POWER") }
@Test func constantCase___keepSpecialCharactersSpaces() async throws { #expect( constantCase("$mesqueeb .BluesJazz @github _POWER", keepSpecialCharacters: true ) == "$MESQUEEB_.BLUESJAZZ_@GITHUB__POWER") }

@Test func spaceCase___removeSpecialCharactersSpaces() async throws { #expect(   spaceCase("$mesqueeb .BluesJazz @github _POWER", keepSpecialCharacters: false) == "mesqueeb BluesJazz github POWER") }
@Test func spaceCase_____keepSpecialCharactersSpaces() async throws { #expect(   spaceCase("$mesqueeb .BluesJazz @github _POWER", keepSpecialCharacters: true ) == "$mesqueeb .BluesJazz @github _POWER") }
@Test func pathCase____removeSpecialCharactersSpaces() async throws { #expect(    pathCase("$mesqueeb .BluesJazz @github _POWER", keepSpecialCharacters: false) == "mesqueeb/BluesJazz/github/POWER") }
@Test func pathCase______keepSpecialCharactersSpaces() async throws { #expect(    pathCase("$mesqueeb .BluesJazz @github _POWER", keepSpecialCharacters: true ) == "$mesqueeb/.BluesJazz/@github/_POWER") }
@Test func lowerCase___removeSpecialCharactersSpaces() async throws { #expect(   lowerCase("$mesqueeb .BluesJazz @github _POWER", keepSpecialCharacters: false) == "mesqueeb bluesjazz github power") }
@Test func lowerCase_____keepSpecialCharactersSpaces() async throws { #expect(   lowerCase("$mesqueeb .BluesJazz @github _POWER", keepSpecialCharacters: true ) == "$mesqueeb .bluesjazz @github _power") }
@Test func upperCase___removeSpecialCharactersSpaces() async throws { #expect(   upperCase("$mesqueeb .BluesJazz @github _POWER", keepSpecialCharacters: false) == "MESQUEEB BLUESJAZZ GITHUB POWER") }
@Test func upperCase_____keepSpecialCharactersSpaces() async throws { #expect(   upperCase("$mesqueeb .BluesJazz @github _POWER", keepSpecialCharacters: true ) == "$MESQUEEB .BLUESJAZZ @GITHUB _POWER") }
@Test func capitalCase_removeSpecialCharactersSpaces() async throws { #expect( capitalCase("$mesqueeb .BluesJazz @github _POWER", keepSpecialCharacters: false) == "Mesqueeb Bluesjazz Github Power") }
@Test func capitalCase___keepSpecialCharactersSpaces() async throws { #expect( capitalCase("$mesqueeb .BluesJazz @github _POWER", keepSpecialCharacters: true ) == "$Mesqueeb .Bluesjazz @Github _Power") }

// Spaces & special characters in different spots
@Test func camelCase____removeSpecialVariousCharactersSpaces() async throws { #expect(    camelCase("$mesqueeb Blues.Jazz git@hub POWER", keepSpecialCharacters: false) == "mesqueebBluesjazzGithubPower") }
@Test func camelCase______keepSpecialVariousCharactersSpaces() async throws { #expect(    camelCase("$mesqueeb Blues.Jazz git@hub POWER", keepSpecialCharacters: true ) == "$mesqueebBlues.jazzGit@hubPower") }
@Test func pascalCase___removeSpecialVariousCharactersSpaces() async throws { #expect(   pascalCase("$mesqueeb Blues.Jazz git@hub POWER", keepSpecialCharacters: false) == "MesqueebBluesjazzGithubPower") }
@Test func pascalCase_____keepSpecialVariousCharactersSpaces() async throws { #expect(   pascalCase("$mesqueeb Blues.Jazz git@hub POWER", keepSpecialCharacters: true ) == "$MesqueebBlues.jazzGit@hubPower") }
@Test func kebabCase____removeSpecialVariousCharactersSpaces() async throws { #expect(    kebabCase("$mesqueeb Blues.Jazz git@hub POWER", keepSpecialCharacters: false) == "mesqueeb-bluesjazz-github-power") }
@Test func kebabCase______keepSpecialVariousCharactersSpaces() async throws { #expect(    kebabCase("$mesqueeb Blues.Jazz git@hub POWER", keepSpecialCharacters: true ) == "$mesqueeb-blues.jazz-git@hub-power") }
@Test func snakeCase____removeSpecialVariousCharactersSpaces() async throws { #expect(    snakeCase("$mesqueeb Blues.Jazz git@hub POWER", keepSpecialCharacters: false) == "mesqueeb_bluesjazz_github_power") }
@Test func snakeCase______keepSpecialVariousCharactersSpaces() async throws { #expect(    snakeCase("$mesqueeb Blues.Jazz git@hub POWER", keepSpecialCharacters: true ) == "$mesqueeb_blues.jazz_git@hub_power") }
@Test func constantCase_removeSpecialVariousCharactersSpaces() async throws { #expect( constantCase("$mesqueeb Blues.Jazz git@hub POWER", keepSpecialCharacters: false) == "MESQUEEB_BLUESJAZZ_GITHUB_POWER") }
@Test func constantCase___keepSpecialVariousCharactersSpaces() async throws { #expect( constantCase("$mesqueeb Blues.Jazz git@hub POWER", keepSpecialCharacters: true ) == "$MESQUEEB_BLUES.JAZZ_GIT@HUB_POWER") }

@Test func spaceCase___removeSpecialVariousCharactersSpaces() async throws { #expect(   spaceCase("$mesqueeb Blues.Jazz git@hub POWER", keepSpecialCharacters: false) == "mesqueeb BluesJazz github POWER") }
@Test func spaceCase_____keepSpecialVariousCharactersSpaces() async throws { #expect(   spaceCase("$mesqueeb Blues.Jazz git@hub POWER", keepSpecialCharacters: true ) == "$mesqueeb Blues.Jazz git@hub POWER") }
@Test func pathCase____removeSpecialVariousCharactersSpaces() async throws { #expect(    pathCase("$mesqueeb Blues.Jazz git@hub POWER", keepSpecialCharacters: false) == "mesqueeb/BluesJazz/github/POWER") }
@Test func pathCase______keepSpecialVariousCharactersSpaces() async throws { #expect(    pathCase("$mesqueeb Blues.Jazz git@hub POWER", keepSpecialCharacters: true ) == "$mesqueeb/Blues.Jazz/git@hub/POWER") }
@Test func lowerCase___removeSpecialVariousCharactersSpaces() async throws { #expect(   lowerCase("$mesqueeb Blues.Jazz git@hub POWER", keepSpecialCharacters: false) == "mesqueeb bluesjazz github power") }
@Test func lowerCase_____keepSpecialVariousCharactersSpaces() async throws { #expect(   lowerCase("$mesqueeb Blues.Jazz git@hub POWER", keepSpecialCharacters: true ) == "$mesqueeb blues.jazz git@hub power") }
@Test func upperCase___removeSpecialVariousCharactersSpaces() async throws { #expect(   upperCase("$mesqueeb Blues.Jazz git@hub POWER", keepSpecialCharacters: false) == "MESQUEEB BLUESJAZZ GITHUB POWER") }
@Test func upperCase_____keepSpecialVariousCharactersSpaces() async throws { #expect(   upperCase("$mesqueeb Blues.Jazz git@hub POWER", keepSpecialCharacters: true ) == "$MESQUEEB BLUES.JAZZ GIT@HUB POWER") }
@Test func capitalCase_removeSpecialVariousCharactersSpaces() async throws { #expect( capitalCase("$mesqueeb Blues.Jazz git@hub POWER", keepSpecialCharacters: false) == "Mesqueeb Bluesjazz Github Power") }
@Test func capitalCase___keepSpecialVariousCharactersSpaces() async throws { #expect( capitalCase("$mesqueeb Blues.Jazz git@hub POWER", keepSpecialCharacters: true ) == "$Mesqueeb Blues.jazz Git@hub Power") }

// DON'T strip special characters -- query without spaces
@Test func camelCaseerdontStrip() async throws {
  #expect(
		camelCase("$orderBy=name&skip=3&sort=true&name=James-P&email=sullivan@monsters.inc", keepSpecialCharacters: true) ==
		"$orderBy=name&skip=3&sort=true&name=james-p&email=sullivan@monsters.inc"
	)
}
@Test func pascalCaseerdontStrip() async throws {
  #expect(
		pascalCase("$orderBy=name&skip=3&sort=true&name=James-P&email=sullivan@monsters.inc", keepSpecialCharacters: true) ==
		"$OrderBy=Name&Skip=3&Sort=True&Name=James-P&Email=Sullivan@Monsters.Inc"
	)
}
@Test func kebabCaseerdontStrip() async throws {
  #expect(
		kebabCase("$orderBy=name&skip=3&sort=true&name=James-P&email=sullivan@monsters.inc", keepSpecialCharacters: true) ==
		"$order-by=name&skip=3&sort=true&name=james-p&email=sullivan@monsters.inc"
	)
}
@Test func snakeCaseerdontStrip() async throws {
  #expect(
		snakeCase("$orderBy=name&skip=3&sort=true&name=James-P&email=sullivan@monsters.inc", keepSpecialCharacters: true) ==
		"$order_by=name&skip=3&sort=true&name=james-p&email=sullivan@monsters.inc"
	)
}
@Test func constantCaseerdontStrip() async throws {
  #expect(
		constantCase("$orderBy=name&skip=3&sort=true&name=James-P&email=sullivan@monsters.inc", keepSpecialCharacters: true) ==
		"$ORDER_BY=NAME&SKIP=3&SORT=TRUE&NAME=JAMES-P&EMAIL=SULLIVAN@MONSTERS.INC"
	)
}
@Test func spaceCaseerdontStrip() async throws {
  #expect(
		spaceCase("$orderBy=name&skip=3&sort=true&name=James-P&email=sullivan@monsters.inc", keepSpecialCharacters: true) ==
		"$order By=name&skip=3&sort=true&name=James-P&email=sullivan@monsters.inc"
	)
}
@Test func pathCaseerdontStrip() async throws {
  #expect(
		pathCase("$orderBy=name&skip=3&sort=true&name=James-P&email=sullivan@monsters.inc", keepSpecialCharacters: true) ==
		"$order/By/=name/&skip/=3/&sort/=true/&name/=James/-P/&email/=sullivan/@monsters/.inc"
	)
}
@Test func lowerCaseerdontStrip() async throws {
  #expect(
		lowerCase("$orderBy=name&skip=3&sort=true&name=James-P&email=sullivan@monsters.inc", keepSpecialCharacters: true) ==
		"$order by=name&skip=3&sort=true&name=james-p&email=sullivan@monsters.inc"
	)
}
@Test func upperCaseerdontStrip() async throws {
  #expect(
		upperCase("$orderBy=name&skip=3&sort=true&name=James-P&email=sullivan@monsters.inc", keepSpecialCharacters: true) ==
		"$ORDER BY=NAME&SKIP=3&SORT=TRUE&NAME=JAMES-P&EMAIL=SULLIVAN@MONSTERS.INC"
	)
}
@Test func capitalCaseerdontStrip() async throws {
  #expect(
		capitalCase("$orderBy=name&skip=3&sort=true&name=James-P&email=sullivan@monsters.inc", keepSpecialCharacters: true) ==
		"$Order By=Name&Skip=3&Sort=True&Name=James-P&Email=Sullivan@Monsters.Inc"
	)
}

// strip special characters -- query without spaces
@Test func camelCaseerstrip() async throws {
  #expect(
		camelCase("$orderBy=name&skip=3&sort=true&name=James-P&email=sullivan@monsters.inc", keepSpecialCharacters: false) ==
		"orderByNameSkip3SortTrueNameJamesPEmailSullivanMonstersInc"
	)
}
@Test func pascalCaseerstrip() async throws {
  #expect(
		pascalCase("$orderBy=name&skip=3&sort=true&name=James-P&email=sullivan@monsters.inc", keepSpecialCharacters: false) ==
		"OrderByNameSkip3SortTrueNameJamesPEmailSullivanMonstersInc"
	)
}
@Test func kebabCaseerstrip() async throws {
  #expect(
		kebabCase("$orderBy=name&skip=3&sort=true&name=James-P&email=sullivan@monsters.inc", keepSpecialCharacters: false) ==
		"order-by-name-skip-3-sort-true-name-james-p-email-sullivan-monsters-inc"
	)
}
@Test func snakeCaseerstrip() async throws {
  #expect(
		snakeCase("$orderBy=name&skip=3&sort=true&name=James-P&email=sullivan@monsters.inc", keepSpecialCharacters: false) ==
		"order_by_name_skip_3_sort_true_name_james_p_email_sullivan_monsters_inc"
	)
}
@Test func constantCaseerstrip() async throws {
  #expect(
		constantCase("$orderBy=name&skip=3&sort=true&name=James-P&email=sullivan@monsters.inc", keepSpecialCharacters: false) ==
		"ORDER_BY_NAME_SKIP_3_SORT_TRUE_NAME_JAMES_P_EMAIL_SULLIVAN_MONSTERS_INC"
	)
}
@Test func spaceCaseerstrip() async throws {
  #expect(
		spaceCase("$orderBy=name&skip=3&sort=true&name=James-P&email=sullivan@monsters.inc", keepSpecialCharacters: false) ==
		"order By name skip 3 sort true name James P email sullivan monsters inc"
	)
}
@Test func pathCaseerstrip() async throws {
  #expect(
		pathCase("$orderBy=name&skip=3&sort=true&name=James-P&email=sullivan@monsters.inc", keepSpecialCharacters: false) ==
		"order/By/name/skip/3/sort/true/name/James/P/email/sullivan/monsters/inc"
	)
}
@Test func lowerCaseerstrip() async throws {
  #expect(
		lowerCase("$orderBy=name&skip=3&sort=true&name=James-P&email=sullivan@monsters.inc", keepSpecialCharacters: false) ==
		"order by name skip 3 sort true name james p email sullivan monsters inc"
	)
}
@Test func upperCaseerstrip() async throws {
  #expect(
		upperCase("$orderBy=name&skip=3&sort=true&name=James-P&email=sullivan@monsters.inc", keepSpecialCharacters: false) ==
		"ORDER BY NAME SKIP 3 SORT TRUE NAME JAMES P EMAIL SULLIVAN MONSTERS INC"
	)
}
@Test func capitalCaseerstrip() async throws {
  #expect(
		capitalCase("$orderBy=name&skip=3&sort=true&name=James-P&email=sullivan@monsters.inc", keepSpecialCharacters: false) ==
		"Order By Name Skip 3 Sort True Name James P Email Sullivan Monsters Inc"
	)
}
