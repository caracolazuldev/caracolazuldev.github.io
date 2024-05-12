export DEBUG=1
-include decomposer.mk

# # #
# Jobs
#


# # #
# Docker Images
#

docker/httpd/httpd.conf:
	docker run --rm httpd:latest cat /usr/local/apache2/conf/httpd.conf > $@