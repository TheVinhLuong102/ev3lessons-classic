#!/bin/bash
rm *.html
cp coachcorner.tmp coachcorner.html
cp corevalues.tmp corevalues.html
cp translations.tmp translations.html
ROOT=./
HTTP="./"
OUTPUT="index.html" 

i=0
echo "<style>h1 {color:red;font-family:verdana;font-size:200%;} b  {    color:green;    font-family:arial;    font-size:100%} p  {    color:brown;    font-family:arial;    font-size:110%}</style>" > $OUTPUT
echo "<h1>EV3lessons.com v4.9.5 Simple Edition (v1.5.1 Code Base)</h1>" >> $OUTPUT
echo "<p>This is an auto-generated site with just the English lessons. This contains just the bare minimum js/css/html to download the content. It is intended for use on old browsers/computers. </p><b>You have been redirected here because you are using an old browser (older than Microsoft Internet Explorer 9.0)</b><br>To view the full site, download a modern browser: <a href='http://chrome.google.com'>Google Chrome<a> or <a href='http://firefox.com'>Mozilla Firefox</a><br><br>" >> $OUTPUT
#echo "<UL>" > $OUTPUT
for filepath in `find "$ROOT" -maxdepth 1 -mindepth 1 -type d|fgrep -v .git| fgrep -v coach|fgrep -v images|sort`; do
  path=`basename "$filepath"`
  echo "  <a href='"$path"/index.html'><img src='folder.gif'> $path</a><br>" >> $OUTPUT
#  echo "  <UL>" >> $OUTPUT
#  for i in `find "$filepath" -maxdepth 1 -mindepth 1 -type f| sort`; do
#    file=`basename "$i"`
#    echo "    <LI><a href=\"./$path/$file\">$file</a></LI>" >> $OUTPUT
#  done
#  echo "  </UL>" >> $OUTPUT
done
  echo "<a href='http://archive.ev3lessons.com/web/ev3lessons-v3/wheelconverter/'><img src='folder.gif'> EV3lessons Wheel Converter</a><br>" >> $OUTPUT
  echo "<a href='coachcorner.html'><img src='folder.gif'> Coach's Corner</a><br>" >> $OUTPUT
  echo "<a href='corevalues.html'><img src='folder.gif'> Core Values</a><br>" >> $OUTPUT
  echo "<a href='translations.html'><img src='folder.gif'> Unsupported Translations Page</a><br>" >> $OUTPUT
#echo "</UL>" >> $OUTPUT
