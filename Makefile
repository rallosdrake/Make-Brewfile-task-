osx-local: # Run when switching between previously installed instances
	brew bundle
	brew link --force --overwrite $(shell grep -Eo 'amp-php.{0,4}' Brewfile | head -1) | head -1


osx-switch: # Run when switching between previously installed instances
	php-unlinker.sh
	brew bundle
	brew link --force --overwrite $(shell grep -Eo 'amp-php.{0,4}' Brewfile | head -1) | head -1
