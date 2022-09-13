osx-local: # Run when switching between previously installed instances
	make osx-link-php
	@echo "osx-local done"
	php -v


osx-link-php: # Re-link PHP for this project
	HOMEBREW_NO_AUTO_UPDATE=1 brew bundle
	brew link --force --overwrite $(shell grep -Eo 'amp-php.{0,4}' Brewfile | head -1) | head -1
	@echo "osx link done"
	php -v

	
osx-switch: # Run when switching between previously installed instances
	php-unlinker.sh
	brew link --force --overwrite $(shell grep -Eo 'amp-php.{0,4}' Brewfile | head -1) | head -1
	php -v
	@echo "switched";