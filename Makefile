build:
	@echo "Cleaning up SVG files..."
	npx svgo --quiet --pretty --config=svgo-config.json --folder=svg

	@echo "Compiling Icons into fonts..."
	fontcustom compile --force

default:
	build

clean:
	rm -rf build

.PHONY: build
