OUTPUT_DIR = output
ICON_DIR = icons
SVG = cvLogoFlat.svg
INKSCAPE = inkscape

${OUTPUT_DIR}/gravatar.png: SIZE = 80
${OUTPUT_DIR}/gravatar.png: SVG = cvLogoGina.svg

${OUTPUT_DIR}/minecraft.png: SIZE = 64

${OUTPUT_DIR}/website.png: SIZE = 80

${OUTPUT_DIR}/facebook.png: SIZE = 1729

${ICON_DIR}/favicon.ico: SIZE = 16

${ICON_DIR}/favicon-16x16.png: SIZE = 16

${ICON_DIR}/favicon-32x32.png: SIZE = 32

${ICON_DIR}/android-chrome-192x192.png: SIZE = 192

${ICON_DIR}/android-chrome-512x512.png: SIZE = 512

${ICON_DIR}/apple-touch-icon-60x60.png: SIZE = 60

${ICON_DIR}/apple-touch-icon-76x76.png: SIZE = 76

${ICON_DIR}/apple-touch-icon-120x120.png: SIZE = 120

${ICON_DIR}/apple-touch-icon-152x152.png: SIZE = 152

${ICON_DIR}/apple-touch-icon-180x180.png: SIZE = 180

${ICON_DIR}/apple-touch-icon.png: SIZE = 180

${ICON_DIR}/msapplication-icon-144x144.png: SIZE = 144

${ICON_DIR}/mstile-150x150.png: SIZE = 150

ICONS = ${ICON_DIR}/favicon.ico \
	${ICON_DIR}/favicon-16x16.png \
	${ICON_DIR}/favicon-32x32.png \
	${ICON_DIR}/android-chrome-192x192.png \
	${ICON_DIR}/android-chrome-512x512.png \
	${ICON_DIR}/apple-touch-icon-60x60.png \
	${ICON_DIR}/apple-touch-icon-76x76.png \
	${ICON_DIR}/apple-touch-icon-120x120.png \
	${ICON_DIR}/apple-touch-icon-152x152.png \
	${ICON_DIR}/apple-touch-icon-180x180.png \
	${ICON_DIR}/apple-touch-icon.png \
	${ICON_DIR}/msapplication-icon-144x144.png \
	${ICON_DIR}/mstile-150x150.png \
	${ICON_DIR}/safari-pinned-tab.svg

MEDIA = ${OUTPUT_DIR}/gravatar.png \
	${OUTPUT_DIR}/minecraft.png \
	${OUTPUT_DIR}/website.png \
	${OUTPUT_DIR}/facebook.png

all: media icons

media: ${MEDIA}

icons: ${ICONS}

%.png: ${SVG}
	mkdir -p $(dir $@)
	${INKSCAPE} -z -w${SIZE} -h${SIZE} -e $@ ${SVG}

%.ico: ${SVG}
	mkdir -p $(dir $@)
	${INKSCAPE} -z -w${SIZE} -h${SIZE} -e $@ ${SVG}

${ICON_DIR}/safari-pinned-tab.svg: ${SVG}
	mkdir -p $(dir $@)
	cp ${SVG} $@

clean:
	rm -rf icons output
