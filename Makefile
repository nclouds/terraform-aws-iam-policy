RELEASE_TYPE ?= "patch"

.PHONY: changelog release

changelog:
	echo Generating Changelog for $(RELEASE_TYPE)
	git-chglog -o CHANGELOG.md --next-tag `semtag final -s $(RELEASE_TYPE) -o`

release:
	semtag final -s $(RELEASE_TYPE)

