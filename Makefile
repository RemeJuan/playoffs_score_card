flutter_generate:
	fvm flutter packages pub run build_runner build --verbose --delete-conflicting-outputs

flutter_test:
	fvm flutter test test

flutter_cov:
	./coverage-test-report.sh

bump_fix:
	./version-bump.sh patch

bump_feat:
	./version-bump.sh minor

fix_ios:
	cd ios && rm podfile.lock && arch -x86_64 pod install --repo-update && cd ..