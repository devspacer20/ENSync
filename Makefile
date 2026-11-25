CMAKE ?= cmake
BUILDDIR ?= build

.PHONY: all build test clean format help

all: build

build:
	$(CMAKE) -S . -B $(BUILDDIR)
	$(CMAKE) --build $(BUILDDIR) --parallel

test: build
	ctest --test-dir $(BUILDDIR) --output-on-failure

clean:
	rm -rf $(BUILDDIR)

format:
	@echo "TODO: run clang-format over include/, src/ and tests/"

help:
	@echo "Targets: all, build, test, clean, format"
