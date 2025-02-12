import "package:test/test.dart";
import "../../lib/src/models/card.dart";
import "../../lib/src/models/rank.dart";
import "../../lib/src/models/suit.dart";

void main() {
  group("Card.parse()", () {
    test("Card.parse(\"As\") returns a Card<As>", () {
      expect(
        Card.parse("As"),
        equals(Card(rank: Rank.ace, suit: Suit.spade)),
      );
    });

    test("Card.parse(\"2s\") returns a Card<2s>", () {
      expect(
        Card.parse("2s"),
        equals(Card(rank: Rank.deuce, suit: Suit.spade)),
      );
    });

    test("Card.parse(\"Ks\") returns a Card<Ks>", () {
      expect(
        Card.parse("Ks"),
        equals(Card(rank: Rank.king, suit: Suit.spade)),
      );
    });

    test("Card.parse(\"Ah\") returns a Card<Ah>", () {
      expect(
        Card.parse("Ah"),
        equals(Card(rank: Rank.ace, suit: Suit.heart)),
      );
    });

    test("Card.parse(\"2h\") returns a Card<2h>", () {
      expect(
        Card.parse("2h"),
        equals(Card(rank: Rank.deuce, suit: Suit.heart)),
      );
    });

    test("Card.parse(\"Kh\") returns a Card<Kh>", () {
      expect(
        Card.parse("Kh"),
        equals(Card(rank: Rank.king, suit: Suit.heart)),
      );
    });

    test("Card.parse(\"Ad\") returns a Card<Ad>", () {
      expect(
        Card.parse("Ad"),
        equals(Card(rank: Rank.ace, suit: Suit.diamond)),
      );
    });

    test("Card.parse(\"2d\") returns a Card<2d>", () {
      expect(
        Card.parse("2d"),
        equals(Card(rank: Rank.deuce, suit: Suit.diamond)),
      );
    });

    test("Card.parse(\"Kd\") returns a Card<Kd>", () {
      expect(
        Card.parse("Kd"),
        equals(Card(rank: Rank.king, suit: Suit.diamond)),
      );
    });

    test("Card.parse(\"Ac\") returns a Card<Ac>", () {
      expect(
        Card.parse("Ac"),
        equals(Card(rank: Rank.ace, suit: Suit.club)),
      );
    });

    test("Card.parse(\"2c\") returns a Card<2c>", () {
      expect(
        Card.parse("2c"),
        equals(Card(rank: Rank.deuce, suit: Suit.club)),
      );
    });

    test("Card.parse(\"Qc\") returns a Card<Qc>", () {
      expect(
        Card.parse("Qc"),
        equals(Card(rank: Rank.queen, suit: Suit.club)),
      );
    });

    test("Card.parse(\"Kc\") returns a Card<Kc>", () {
      expect(
        Card.parse("Kc"),
        equals(Card(rank: Rank.king, suit: Suit.club)),
      );
    });

    test("Card.parse(\"AS\") throws a CardParseFailure", () {
      expect(
        () => Card.parse("AS"),
        throwsA(isA<CardParseFailure>()),
      );
    });

    test("Card.parse(\"as\") throws a CardParseFailure", () {
      expect(
        () => Card.parse("as"),
        throwsA(isA<CardParseFailure>()),
      );
    });

    test("Card.parse(\"Sa\") throws a CardParseFailure", () {
      expect(
        () => Card.parse("Sa"),
        throwsA(isA<CardParseFailure>()),
      );
    });

    test("Card.parse(\"AK\") throws a CardParseFailure", () {
      expect(
        () => Card.parse("AK"),
        throwsA(isA<CardParseFailure>()),
      );
    });

    test("Card.parse(\"\") throws a CardParseFailure", () {
      expect(
        () => Card.parse(""),
        throwsA(isA<CardParseFailure>()),
      );
    });
  });

  group("Card#toString()", () {
    test("Card<As>.toString() returns \"As\"", () {
      expect(
        Card(rank: Rank.ace, suit: Suit.spade).toString(),
        equals("As"),
      );
    });

    test("Card<2s>.toString() returns \"2s\"", () {
      expect(
        Card(rank: Rank.deuce, suit: Suit.spade).toString(),
        equals("2s"),
      );
    });

    test("Card<Ks>.toString() returns \"Ks\"", () {
      expect(
        Card(rank: Rank.king, suit: Suit.spade).toString(),
        equals("Ks"),
      );
    });

    test("Card<Ah>.toString() returns \"Ah\"", () {
      expect(
        Card(rank: Rank.ace, suit: Suit.heart).toString(),
        equals("Ah"),
      );
    });

    test("Card<2h>.toString() returns \"2h\"", () {
      expect(
        Card(rank: Rank.deuce, suit: Suit.heart).toString(),
        equals("2h"),
      );
    });

    test("Card<Kh>.toString() returns \"Kh\"", () {
      expect(
        Card(rank: Rank.king, suit: Suit.heart).toString(),
        equals("Kh"),
      );
    });

    test("Card<Ad>.toString() returns \"Ad\"", () {
      expect(
        Card(rank: Rank.ace, suit: Suit.diamond).toString(),
        equals("Ad"),
      );
    });

    test("Card<2d>.toString() returns \"2d\"", () {
      expect(
        Card(rank: Rank.deuce, suit: Suit.diamond).toString(),
        equals("2d"),
      );
    });

    test("Card<Kd>.toString() returns \"Kd\"", () {
      expect(
        Card(rank: Rank.king, suit: Suit.diamond).toString(),
        equals("Kd"),
      );
    });

    test("Card<Ac>.toString() returns \"Ac\"", () {
      expect(
        Card(rank: Rank.ace, suit: Suit.club).toString(),
        equals("Ac"),
      );
    });

    test("Card<2c>.toString() returns \"2c\"", () {
      expect(
        Card(rank: Rank.deuce, suit: Suit.club).toString(),
        equals("2c"),
      );
    });

    test("Card<Qc>.toString() returns \"Qc\"", () {
      expect(
        Card(rank: Rank.queen, suit: Suit.club).toString(),
        equals("Qc"),
      );
    });

    test("Card<Kc>.toString() returns \"Kc\"", () {
      expect(
        Card(rank: Rank.king, suit: Suit.club).toString(),
        equals("Kc"),
      );
    });
  });

  group("Card#rank", () {
    test("Card<As>.rank is Rank.Ace", () {
      expect(
        Card(rank: Rank.ace, suit: Suit.spade).rank,
        equals(Rank.ace),
      );
    });

    test("Card<2s>.rank is Rank.deuce", () {
      expect(
        Card(rank: Rank.deuce, suit: Suit.spade).rank,
        equals(Rank.deuce),
      );
    });

    test("Card<Ks>.rank is Rank.king", () {
      expect(
        Card(rank: Rank.king, suit: Suit.spade).rank,
        equals(Rank.king),
      );
    });

    test("Card<Ah>.rank is Rank.ace", () {
      expect(
        Card(rank: Rank.ace, suit: Suit.heart).rank,
        equals(Rank.ace),
      );
    });

    test("Card<2h>.rank is Rank.deuce", () {
      expect(
        Card(rank: Rank.deuce, suit: Suit.heart).rank,
        equals(Rank.deuce),
      );
    });

    test("Card<Kh>.rank is Rank.king", () {
      expect(
        Card(rank: Rank.king, suit: Suit.heart).rank,
        equals(Rank.king),
      );
    });

    test("Card<Ad>.rank is Rank.ace", () {
      expect(
        Card(rank: Rank.ace, suit: Suit.diamond).rank,
        equals(Rank.ace),
      );
    });

    test("Card<2d>.rank is Rank.deuce", () {
      expect(
        Card(rank: Rank.deuce, suit: Suit.diamond).rank,
        equals(Rank.deuce),
      );
    });

    test("Card<Kd>.rank is Rank.king", () {
      expect(
        Card(rank: Rank.king, suit: Suit.diamond).rank,
        equals(Rank.king),
      );
    });

    test("Card<Ac>.rank is Rank.ace", () {
      expect(
        Card(rank: Rank.ace, suit: Suit.club).rank,
        equals(Rank.ace),
      );
    });

    test("Card<2c>.rank is Rank.deuce", () {
      expect(
        Card(rank: Rank.deuce, suit: Suit.club).rank,
        equals(Rank.deuce),
      );
    });

    test("Card<Qc>.rank is Rank.queen", () {
      expect(
        Card(rank: Rank.queen, suit: Suit.club).rank,
        equals(Rank.queen),
      );
    });

    test("Card<Kc>.rank is Rank.king", () {
      expect(
        Card(rank: Rank.king, suit: Suit.club).rank,
        equals(Rank.king),
      );
    });
  });

  group("Card#suit", () {
    test("Card<As>.suit is Suit.spade", () {
      expect(
        Card(rank: Rank.ace, suit: Suit.spade).suit,
        equals(Suit.spade),
      );
    });

    test("Card<2s>.suit is Suit.spade", () {
      expect(
        Card(rank: Rank.deuce, suit: Suit.spade).suit,
        equals(Suit.spade),
      );
    });

    test("Card<Ks>.suit is Suit.spade", () {
      expect(
        Card(rank: Rank.king, suit: Suit.spade).suit,
        equals(Suit.spade),
      );
    });

    test("Card<Ah>.suit is Suit.heart", () {
      expect(
        Card(rank: Rank.ace, suit: Suit.heart).suit,
        equals(Suit.heart),
      );
    });

    test("Card<2h>.suit is Suit.heart", () {
      expect(
        Card(rank: Rank.deuce, suit: Suit.heart).suit,
        equals(Suit.heart),
      );
    });

    test("Card<Kh>.suit is Suit.heart", () {
      expect(
        Card(rank: Rank.king, suit: Suit.heart).suit,
        equals(Suit.heart),
      );
    });

    test("Card<2d>.suit is Suit.diamond", () {
      expect(
        Card(rank: Rank.ace, suit: Suit.diamond).suit,
        equals(Suit.diamond),
      );
    });

    test("Card<2d>.suit is Suit.diamond", () {
      expect(
        Card(rank: Rank.deuce, suit: Suit.diamond).suit,
        equals(Suit.diamond),
      );
    });

    test("Card<Kd>.suit is Suit.diamond", () {
      expect(
        Card(rank: Rank.king, suit: Suit.diamond).suit,
        equals(Suit.diamond),
      );
    });

    test("Card<Ac>.suit is Suit.club", () {
      expect(
        Card(rank: Rank.ace, suit: Suit.club).suit,
        equals(Suit.club),
      );
    });

    test("Card<2c>.suit is Suit.club", () {
      expect(
        Card(rank: Rank.deuce, suit: Suit.club).suit,
        equals(Suit.club),
      );
    });

    test("Card<Qc>.suit is Suit.club", () {
      expect(
        Card(rank: Rank.queen, suit: Suit.club).suit,
        equals(Suit.club),
      );
    });

    test("Card<Kc>.suit is Suit.club", () {
      expect(
        Card(rank: Rank.king, suit: Suit.club).suit,
        equals(Suit.club),
      );
    });
  });
}
