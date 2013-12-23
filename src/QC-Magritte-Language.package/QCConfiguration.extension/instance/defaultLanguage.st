*qc-magritte-language-defaults
defaultLanguage
  ^ self propertyAt: #defaultLanguage ifAbsent: [QCMultilanguageString curLanguage]