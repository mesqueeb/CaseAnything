@testable import CaseAnything
import XCTest

final class UtilTests: XCTestCase {
	func testSplitandprefixKeepspecialcharactersFalse() {
		XCTAssertEqual(
			splitAndPrefix("$mesqueeb.mesqueebmesqueeb..mesqueeb.BluesJazz@github.com", keepSpecialCharacters: false),
			["mesqueeb", "mesqueebmesqueeb", "mesqueeb", "Blues", "Jazz", "github", "com"]
		)
	}

	func testSplitandprefixKeepspecialcharactersTrue() {
		XCTAssertEqual(
			splitAndPrefix("$mesqueeb.mesqueebmesqueeb..mesqueeb.BluesJazz@github.com", keepSpecialCharacters: true),
			["$mesqueeb", ".mesqueebmesqueeb", "..mesqueeb", ".Blues", "Jazz", "@github", ".com"]
		)
	}

	func testSplitandprefixKeepspecialcharactersFalsePrefix() {
		XCTAssertEqual(
			splitAndPrefix("$mesqueeb.mesqueebmesqueeb.mesqueeb.BluesJazz@github.com", keepSpecialCharacters: false, prefix: "-"),
			["mesqueeb", "-mesqueebmesqueeb", "-mesqueeb", "-Blues", "-Jazz", "-github", "-com"]
		)
	}

	func testSplitandprefixshortKeepspecialcharactersFalsePrefix() {
		XCTAssertEqual(
			splitAndPrefix("mesqueebMESQUEEB", keepSpecialCharacters: true, prefix: "-"),
			["mesqueeb", "-MESQUEEB"]
		)
	}

	func testSplitandprefixKeepspecialcharactersTruePrefix() {
		XCTAssertEqual(
			splitAndPrefix("$mesqueeb.mesqueebmesqueeb.mesqueeb.BluesJazz@github.com", keepSpecialCharacters: true, prefix: "-"),
			["$mesqueeb", ".mesqueebmesqueeb", ".mesqueeb", ".Blues", "-Jazz", "@github", ".com"]
		)
	}

	func testSplitandprefixMultipleSpecialCharsKeepspecialcharactersTruePrefix() {
		XCTAssertEqual(
			splitAndPrefix("$$mesqueeb-/_mesqueebmesqueeb...mesqueeb.BluesJazz@_@github.-com", keepSpecialCharacters: true, prefix: "-"),
			["$$mesqueeb", "-/_mesqueebmesqueeb", "...mesqueeb", ".Blues", "-Jazz", "@_@github", ".-com"]
		)
	}

	func testSplitandprefixSlice1KeepspecialcharactersTrue() {
		XCTAssertEqual(
			splitAndPrefix("mesqueeb.mesqueebmesqueeb.mesqueeb.BluesJazz@github.com", keepSpecialCharacters: true),
			["mesqueeb", ".mesqueebmesqueeb", ".mesqueeb", ".Blues", "Jazz", "@github", ".com"]
		)
	}

	func testSplitandprefixSentenceKeepspecialcharactersFalse() {
		XCTAssertEqual(
			splitAndPrefix("$mesqueeb.mesqueeb mesqueeb.mesqueeb.BluesJazz@github.com", keepSpecialCharacters: false),
			["mesqueebmesqueeb", "mesqueebmesqueebBluesJazzgithubcom"]
		)
	}

	func testSplitandprefixSentenceKeepspecialcharactersTrue() {
		XCTAssertEqual(
			splitAndPrefix("$mesqueeb.mesqueeb mesqueeb.mesqueeb.BluesJazz@github.com", keepSpecialCharacters: true),
			["$mesqueeb.mesqueeb", "mesqueeb.mesqueeb.BluesJazz@github.com"]
		)
	}
}
