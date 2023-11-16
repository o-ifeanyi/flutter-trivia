clean:
	flutter clean
	cd ios && rm -rf Podfile.lock
	cd ios && rm -rf Pods
	flutter pub get
	cd ios && pod install

clean_gen:
	dart run build_runner clean
	dart run build_runner build --delete-conflicting-outputs

gen:
	flutter pub run build_runner build --delete-conflicting-outputs

.PHONY: clean gen
