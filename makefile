default: archlinux/Dockerfile yaourt/Dockerfile jdk8-build/Dockerfile

archlinux/Dockerfile:
	docker build --force-rm --no-cache --pull -t slieb/archlinux archlinux

archlinux/publish: archlinux/Dockerfile
	docker push slieb/archlinux

yaourt/Dockerfile: archlinux/Dockerfile
	docker build --force-rm --no-cache --pull -t slieb/yaourt yaourt

yaourt/publish: yaourt/Dockerfile
	docker push slieb/yaourt
	
jdk8-build/Dockerfile: archlinux/Dockerfile 
	docker build --force-rm --no-cache --pull -t slieb/jdk8-build jdk8-build

jdk8-build/publish: jdk8-build/Dockerfile
	docker push slieb/jdk8-build

publish: archlinux/publish yaourt/publish jdk8-build/publish
