EMAKE_SHA1            := 999e771ddcd18700ba2b4665c6d2f4192203ee73
PACKAGE_BASENAME      := counsel-org-capture-string

# override defaults
PACKAGE_ARCHIVES      := gnu melpa
PACKAGE_TESTS         := test-sample.el # normally, EMake would discover these in the test/ directory
PACKAGE_TEST_DEPS     := dash
PACKAGE_TEST_ARCHIVES := gnu melpa

include emake.mk

.DEFAULT_GOAL: help

### Bootstrap and convenience targets

emake.mk:                       ## download the emake Makefile
	wget 'https://raw.githubusercontent.com/vermiculus/emake.el/$(EMAKE_SHA1)/emake.mk'

test: test-ert test-buttercup   ## run tests
lint: lint-package-lint lint-checkdoc ## run lints
