import Testing

@testable import CaseAnything

@Test func splitandprefixKeepspecialcharactersFalse() async throws {
  #expect(
    splitAndPrefix(
      "$mesqueeb.mesqueebmesqueeb..mesqueeb.BluesJazz@github.com",
      keepSpecialCharacters: false
    ) == ["mesqueeb", "mesqueebmesqueeb", "mesqueeb", "Blues", "Jazz", "github", "com"]
  )
}

@Test func splitandprefixKeepspecialcharactersTrue() async throws {
  #expect(
    splitAndPrefix(
      "$mesqueeb.mesqueebmesqueeb..mesqueeb.BluesJazz@github.com",
      keepSpecialCharacters: true
    ) == ["$mesqueeb", ".mesqueebmesqueeb", "..mesqueeb", ".Blues", "Jazz", "@github", ".com"]
  )
}

@Test func splitandprefixKeepspecialcharactersFalsePrefix() async throws {
  #expect(
    splitAndPrefix(
      "$mesqueeb.mesqueebmesqueeb.mesqueeb.BluesJazz@github.com",
      keepSpecialCharacters: false,
      prefix: "-"
    ) == ["mesqueeb", "-mesqueebmesqueeb", "-mesqueeb", "-Blues", "-Jazz", "-github", "-com"]
  )
}

@Test func splitandprefixshortKeepspecialcharactersFalsePrefix() async throws {
  #expect(
    splitAndPrefix("mesqueebMESQUEEB", keepSpecialCharacters: true, prefix: "-") == [
      "mesqueeb", "-MESQUEEB",
    ]
  )
}

@Test func splitandprefixKeepspecialcharactersTruePrefix() async throws {
  #expect(
    splitAndPrefix(
      "$mesqueeb.mesqueebmesqueeb.mesqueeb.BluesJazz@github.com",
      keepSpecialCharacters: true,
      prefix: "-"
    ) == ["$mesqueeb", ".mesqueebmesqueeb", ".mesqueeb", ".Blues", "-Jazz", "@github", ".com"]
  )
}

@Test func splitandprefixMultipleSpecialCharsKeepspecialcharactersTruePrefix() async throws {
  #expect(
    splitAndPrefix(
      "$$mesqueeb-/_mesqueebmesqueeb...mesqueeb.BluesJazz@_@github.-com",
      keepSpecialCharacters: true,
      prefix: "-"
    ) == [
      "$$mesqueeb", "-/_mesqueebmesqueeb", "...mesqueeb", ".Blues", "-Jazz", "@_@github", ".-com",
    ]
  )
}

@Test func splitandprefixSlice1KeepspecialcharactersTrue() async throws {
  #expect(
    splitAndPrefix(
      "mesqueeb.mesqueebmesqueeb.mesqueeb.BluesJazz@github.com",
      keepSpecialCharacters: true
    ) == ["mesqueeb", ".mesqueebmesqueeb", ".mesqueeb", ".Blues", "Jazz", "@github", ".com"]
  )
}

@Test func splitandprefixSentenceKeepspecialcharactersFalse() async throws {
  #expect(
    splitAndPrefix(
      "$mesqueeb.mesqueeb mesqueeb.mesqueeb.BluesJazz@github.com",
      keepSpecialCharacters: false
    ) == ["mesqueebmesqueeb", "mesqueebmesqueebBluesJazzgithubcom"]
  )
}

@Test func splitandprefixSentenceKeepspecialcharactersTrue() async throws {
  #expect(
    splitAndPrefix(
      "$mesqueeb.mesqueeb mesqueeb.mesqueeb.BluesJazz@github.com",
      keepSpecialCharacters: true
    ) == ["$mesqueeb.mesqueeb", "mesqueeb.mesqueeb.BluesJazz@github.com"]
  )
}
