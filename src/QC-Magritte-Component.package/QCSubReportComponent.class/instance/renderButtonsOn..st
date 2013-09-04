rendering
renderButtonsOn: canvas
	canvas div
		class: 'report-buttons';
		with: [
			canvas span
				class: 'export-menu';
				with: [
					canvas anchor
						callback: [ self exportPdf ];
						with: [ canvas text: (QCMultilanguageString on: 'Export pdf').
							canvas space.
							canvas html: '&#9660;' ].
					canvas unorderedList: [
						canvas listItem: [
							canvas anchor
								callback: [ self exportCsv ];
								with: (QCMultilanguageString on: 'Export csv') ].
						canvas listItem: [
							canvas anchor
								callback: [ self exportCsv ];
								with: (QCMultilanguageString on: 'Export latex') ] ] ] ]