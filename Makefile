osx-local: # Run when switching between previously installed instances
	make osx-link-php

osx-link-php: # Re-link PHP for this project
	@echo "\033[92mUnlink brew managed php versions\033[0m";
	php-unlinker.sh
	@echo "\033[92mBuild and link dependencies\033[0m";
	HOMEBREW_NO_AUTO_UPDATE=1 brew bundle
	brew link --force --overwrite $(shell grep -Eo 'amp-php.{0,4}' Brewfile | head -1) | head -1