include decomposer.mk

# # #
# Jobs
#

flop: assets/MZD.jpeg docker-compose.yml
	@echo "Flop"
	$(DKC) run --rm imagick /imgs/$(notdir $<) -flop /imgs/$(basename $(notdir $<)).left.jpeg
	# $(DKC) run --rm imagick /imgs/$(notdir $<)

spiral-light.2000x.png: assets/spiral-gradient-light.svg docker-compose.yml
	@echo "Spiral Light"
	$(DKC) run --rm imagick /imgs/$(notdir $<) -resize 2000x /imgs/$@

# # #
# Docker Images
#
