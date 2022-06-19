flutter_generate:
	flutter packages pub run build_runner build --verbose --delete-conflicting-outputs

flutter_schemas:
	flutter pub run realm generate

flutter_test:
	flutter test test

flutter_cov:
	./coverage-test-report.sh
