.PHONY: Makefile
PACKAGES := ${wildcard packages/*}
FEATURES := ${wildcard packages/features/*}
APPNAME := Montra
## variables
COLOUR_GREEN=\033[0;32m
COLOUR_RED=\033[0;31m
COLOUR_BLUE=\033[0;34m
END_COLOUR=\033[0m
##
pub_get: ## use it to flutter pub get inside all packages
	$(info ╠ ${APPNAME} flutter run pub get:)
	@flutter pub get
	@for package in ${PACKAGES}; do \
		 cd $${package} ; \
		 echo "Get dependencies on package: $${package}" ; \
		 flutter pub get ; \
		  cd ../../ ; \
	done
	@for feature in ${FEATURES}; do \
    		 cd $${feature} ; \
    		 echo "Get dependencies on features: $${package}" ; \
    		 flutter pub get ; \
    		  cd ../../../ ; \
    	done
	@echo   "done 🚀🚀🚀"


runner: ## use it for run build runner package inside all existing packages
	$(info ╠ ${APPNAME} flutter pub run build_runner build -d:)
	@for runner in ${BUILD_RUNNER}; do \
  		 cd $${runner} ; \
		 echo "Get dependencies on $${runner}" ; \
		 flutter pub run build_runner build -d ; \
		 cd ../../ ; \
	done
		@for runner in ${wildcard packages/network}; do \
      		 cd $${runner} ; \
    		 echo "Get dependencies on $${runner}" ; \
    		 flutter pub run build_runner build -d ; \
    		 cd ../../ ; \
    	done
	@echo   "done 🚀🚀🚀"

print: ## use it for print existing folders && architecture of app
	$(info ╠  ${APPNAME} architecture:)
	@for package in ${PACKAGES}; do \
		echo "$${package}"; \
	done
	@echo  ╠ ${APPNAME} features:
	@for feature in ${FEATURES}; do \
  		echo "	$${feature}"; \
	done

format: ## format dart code
	@dart format .

get: ## use it for run app
	@echo   "run clean & get & runner & spider & localization 🚀🚀🚀";\
	make clean
	make pub_get
	make runner
	make spider
	make localization
	@echo   "run the app  🚀🚀🚀"


upgrade: ## use it to upgrade flutter package inside packages
	$(info ╠ ${APPNAME} flutter run pub upgrade:)
	@flutter pub upgrade
	@for package in ${PACKAGES}; do \
		 cd $${package} ; \
		 echo "Updating dependencies on $${package}" ; \
		 flutter pub get ; \
		  cd ../../ ; \
	done
		@for feature in ${FEATURES}; do \
        		 cd $${feature} ; \
        		 echo "Updating feature on $${feature}" ; \
            	 flutter pub get ; \
        		  cd ../../../ ; \
        	done
	@echo   "done 🚀🚀🚀"

clean: ## use it for clean flutter cache files
	$(info ╠ ${APPNAME} flutter run pub clean:)
	@flutter clean
	@rm -rf pubspec.lock
		@for package in ${PACKAGES}; do \
    		 cd $${package} ; \
    		 echo "Runnig clean on package $${package}" ; \
    		 rm -rf pubspec.lock ; \
    		 flutter clean ; \
    		  cd ../../ ; \
    	done
	@for feature in ${FEATURES}; do \
    		 cd $${feature} ; \
    		 echo "Runnig clean on feature:$${feature}" ; \
    		 rm -rf pubspec.lock ; \
    		 flutter clean ; \
    		  cd ../../ ; \
    	done
	@echo   "done 🚀🚀🚀"


localization: ## use it for generate localization files
	$(info ╠ ${APPNAME} flutter run localization:)
		@for package in ${PACKAGES}; do \
    		 cd $${package} ; \
    		 echo "Runnig localization on package $${package}" ; \
    		 flutter gen-l10n; \
    		  cd ../../ ; \
    	done
	@for feature in ${FEATURES}; do \
    		 cd $${feature} ; \
    		 echo "Runnig clean on feature:$${feature}" ; \
    		 flutter gen-l10n; \
    		  cd ../../ ; \
    	done
	@echo   "done 🚀🚀🚀"
pods-clean: ## use it for clean pod file only ios
	$(info ╠ ${APPNAME} clean caches inside ios folder:)
	@rm -Rf ios/Pods ; \
	rm -Rf ios/.symlinks ; \
	rm -Rf ios/Flutter/Flutter.framework ; \
	rm -Rf ios/Flutter/Flutter.podspec ; \
	rm ios/Podfile ; \
	rm ios/Podfile.lock ; \
	echo   " done 🚀🚀🚀"
lint: ## analyze flutter code and find issue
	@flutter analyze
spider: ## generate spider assets
	$(info ╠ ${APPNAME} spider build )
	@spider build
	@for widget_library in ${wildcard packages/widget_library/}; do \
  		 cd $${widget_library} ; \
		 echo "spider on  ${widget_library}" ; \
		 spider build ; \
		 cd ../../ ; \
	done
	@echo   "done 🚀🚀🚀"


# Adding a help file: https://gist.github.com/prwhite/8168133#gistcomment-1313022
help: ## Display this help screen
	$(info ╠ ${APPNAME} help:)
	@grep -E '^[a-z.A-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

