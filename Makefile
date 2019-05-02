project?=deploy-k8s
src     = $(wildcard src/$(project)/**/*.yml)
dest    = build/orb-${project}.yml

pack: $(src)
	mkdir -p build/
	circleci config pack src/$(project) > $(dest)

.PHONY: clean
clean:
	echo rm -f $(dest)
