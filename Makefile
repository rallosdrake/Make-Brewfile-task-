# osx-local: 
# 	brew bundle
# 	brew link --force --overwrite $(shell grep -Eo 'amp-php.{0,4}' Brewfile | head -1) | head -1


# osx-switch: 
# 	php-unlinker.sh
# 	brew bundle
# 	brew link --force --overwrite $(shell grep -Eo 'amp-php.{0,4}' Brewfile | head -1) | head -1


osx-local: 
	brew bundle install --file=Brewfile
	@echo "osx-local complete"

osx-switch: 
	php-unlinker.sh
	brew bundle install
	@echo "osx-switch complete"