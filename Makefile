include decomposer.mk

# # #
# Jobs
#

flop: assets/${IMG_INPUT} docker-compose.yml
ifndef IMG_INPUT
	$(error IMG_INPUT is not set)
endif
	@echo "Flop"
	$(DKC) run --rm imagick /imgs/$(notdir $<) -flop /imgs/$(basename $(notdir $<)).left.jpeg
	# $(DKC) run --rm imagick /imgs/$(notdir $<)

resize-square: assets/${IMG_INPUT} docker-compose.yml
ifndef IMG_INPUT
	$(error IMG_INPUT is not set)
endif
	@echo "Resize Square"
	$(DKC) run --rm imagick /imgs/$(notdir $<) -resize 800x800 /imgs/$(basename $(notdir $<)).800x.jpeg

spiral-light.2000x.png: assets/spiral-gradient-light.svg docker-compose.yml
	@echo "Spiral Light"
	$(DKC) run --rm imagick /imgs/$(notdir $<) -resize 2000x /imgs/$@

# # #
# Docker Images
#
