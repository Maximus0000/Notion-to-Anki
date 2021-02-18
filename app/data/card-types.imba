import {iget} from './storage'


export def getCardOptions
	return [
		{type: 'all', label: "Use all toggle lists", default: iget('all') || false},
		{type: 'paragraph', label: "Use plain text for back", default: iget('paragraph') || false},		
		{type: 'cherry', label: "Enable cherry picking using 🍒 emoji", default: iget('cherry') || false},
		{type: 'tags', label: "Treat strikethrough as tags", default: iget('tags') || true},
		{type: 'basic', label: "Basic front and back", default: iget('basic') || true},
		{type: 'cloze', label: "Cloze deletion", default: iget('cloze') || true}, 

		{type: 'enable-input', label: "Treat bold text as input", default: iget('enable-input') || false},
		{type: 'basic-reversed', label: "Basic and reversed", default: iget('basic-reversed') || false},
		{type: 'reversed', label: "Just the reversed", default: iget('reversed') || false},
		{type: 'no-underline', label: "Remove underlines", default: iget('no-underline') || false},
		{type: 'max-one-toggle-per-card', label: 'Maximum one toggle per card', default: iget('max-one-toggle-per-card') || false}
	]