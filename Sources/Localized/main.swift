import Foundation


guard let path = Bundle.main.path(forResource: "Resources/en", ofType: "lproj") else {
    fatalError("Could not find language file Resources/en.lproj")
}
guard let bundle = Bundle(path: path) else {
    fatalError("Could not create bundle for path \(path)")
}

//Just use NSLocalizedString, works as expected:
print(NSLocalizedString("works", bundle: bundle, comment: ""))

/*
Use a formatted String with a Stringsdict, does not work on Ununtu / Debian
but strace shows that the .stringsdict file was opened
Also, works on Apple
*/
let format = NSLocalizedString("n.friends", bundle: bundle, comment: "")
let string1 = String(format: format, locale: Locale(identifier: "en"), arguments: [3])
print(string1)

//another try using String.localizedStringWithFormat - Method:
let string2 = String.localizedStringWithFormat(format, 3)
print(string2)