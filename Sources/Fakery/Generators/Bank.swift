import Foundation

@objc public final class Bank: Generator {
  @objc public func name() -> String {
    return generate("bank.name")
  }

  @objc public func swiftBic() -> String {
    return generate("bank.swiftBic")
  }

  @objc public func iban() -> String {
    let bankCountryCode = generate("bank.ibanDetails.bankCountryCode")
    let bankCountryString = numerify("##")
    let ibanLetterCode = letterify(generate("bank.ibanDetails.ibanLetterCode"))
    let iban = numerify(generate("bank.ibanDetails.ibanDigits"))

    return bankCountryCode + bankCountryString + ibanLetterCode + iban
  }

  @objc public func bban() -> String {
    let ibanLetterCode: String = letterify(generate("bank.ibanDetails.ibanLetterCode"))
    let iban: String  = numerify(generate("bank.ibanDetails.ibanDigits"))

    return ibanLetterCode + iban
  }
}
