
all: clean httpd.conf

# fuzzy patch to anticipate mild changes upstream
patch = patch -F4 < $1.patch

clean:
	-rm httpd.conf

httpd.conf:
	docker run --rm httpd:2.4-bookworm cat /usr/local/apache2/conf/httpd.conf > $@
	$(call patch,$@)
