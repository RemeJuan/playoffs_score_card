flutter_generate:
	fvm flutter packages pub run build_runner build --verbose --delete-conflicting-outputs

flutter_schemas:
	fvm flutter pub run realm generate

flutter_test:
	fvm flutter test test

flutter_cov:
	./coverage-test-report.sh

bump_fix:
	./version-bump.sh patch

bump_feat:
	./version-bump.sh minor
