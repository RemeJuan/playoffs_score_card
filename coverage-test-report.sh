run_coverage() {
  # shellcheck disable=SC2034
  STATE=$1
  fvm flutter pub run remove_from_coverage:remove_from_coverage -f coverage/lcov.info -r '(.gr?|.freezed|_services?|_helpers?|_screens?|locator|_provider|_guard|_wrapper).dart$'

  genhtml -o coverage coverage/lcov.info -q
}

if fvm flutter test --coverage test; then
  run_coverage true
else
  run_coverage false
  exit 1
fi
