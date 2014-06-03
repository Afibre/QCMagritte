exporting
pdfData
	^(QCLatexDocumentBuilder onReport: self report description: self magritteDescription) pdfData