import '../components/input/locally-stored-checkbox'
import '../components/input/locally-stored-select'
import '../components/centered-title'

import {getCardOptions} from '../data/card-types'

tag card-options
	prop cardTypes

	prop values = [
		{key: 'open_toggle', label: 'Open nested toggles'},
		{key: 'close_toggle', label: 'Close nested toggles'},
	]

	def setup
		self.cardTypes ||= getCardOptions!

	def clearSettings
		window.localStorage.clear!
		self.cardTypes = getCardOptions!
		window.location.href = '/upload?view=card-options'

	def render
		<self>
			<centered-title title="Card Options">
			<.box> 
				<.field>
					<locally-stored-select label="Toggle Mode" key="toggle-mode" values=values>
				for ct of self.cardTypes
					<p> <locally-stored-checkbox key=ct.type label=ct.label value=ct.default>
				<.has-text-centered>	
					<button.button @click.clearSettings()> "Reset"