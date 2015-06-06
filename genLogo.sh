echo "Generating Minecraft server-icon.png"
inkscape -z -w64 -h64 -e output/server-icon.png cvLogoFlat.svg

echo "Generating website home icon"
inkscape -z -w80 -h80 -e output/web-home.png cvLogoFlat.svg

echo "Generating website favicon.ico"
inkscape -z -w16 -h16 -e output/favicon.ico cvLogoFlat.svg

echo "Generating Gravatar"
inkscape -z -w1729 -h1729 -e output/gravatar.png cvLogoGina.svg

echo "Generating Facebook Image"
inkscape -z -w1729 -h1729 -e output/Facebook.png cvLogoFlat.svg
