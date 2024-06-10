import Foundation


public enum HexEncoding {
    public static func decode(hexString: String) -> Result<Data, HexEncodingError> {
        guard hexString.count % 2 == 0 else {
            return .failure(.oddNumberOfCharacters(hexString: hexString))
        }
        var data = Data(capacity: hexString.count / 2)

        var index = hexString.startIndex
        while index < hexString.endIndex {
            let nextIndex = hexString.index(index, offsetBy: 2)
            guard let byte = UInt8(hexString[index..<nextIndex], radix: 16) else {
                return .failure(.invalidCharacter(hexString: hexString))
            }
            data.append(byte)
            index = nextIndex
        }
        return .success(data)
    }
}
