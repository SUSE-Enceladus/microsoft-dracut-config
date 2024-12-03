VERSION=`git tag | tail -1 | tr -d 'v'`
PROJECT='microsoft-dracut-config'
MAIN_BRANCH='main'

tarball:
	git archive --format=tar.gz -o package/${PROJECT}-${VERSION}.tar.gz --prefix=${PROJECT}/ ${MAIN_BRANCH}
