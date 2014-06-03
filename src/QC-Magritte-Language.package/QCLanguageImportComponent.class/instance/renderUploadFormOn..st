rendering
renderUploadFormOn: canvas
	canvas form
		multipart;
		with: [ 
		canvas paragraph: (QCMultilanguageString on: 'Note that we use the Seaside default import here. Be aware of security and performance issues.').
		canvas div
			class: 'control-group';
			with: [ 
				canvas label
					class: 'control-label';
					with: (QCMultilanguageString on: 'encoding').
				canvas div
					class: 'controls';
					with: [ 
						canvas div
							class: 'control-value';
							with: [ canvas select
								list: self encodingOptions;
								on: #encoding of: self ] ] ].
		canvas div
			class: 'control-group';
			with: [
				canvas label
					class: 'control-label';
					with: (QCMultilanguageString on: 'CSV-file').
				canvas div
					class: 'controls';
					with: [ 
						canvas div
							class: 'control-value';
							with: [
								canvas fileUpload callback: [ :value | self importFileData: value ].
								canvas break. canvas break.
								canvas button on: #upload of: self ].
						canvas span
							class: 'inline-help';
							with: (QCMultilanguageString on: 'A tab separated CSV file') ] ] ].
