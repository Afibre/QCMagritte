private
rebuild
	" rebuilds the entire component, including memento and description.. We must reset our 'builded' description, before asking the super to rebuild its memento and base description. Otherwise this will result in a incorrect memento "
	magritteDescription := nil.
	super rebuild.
