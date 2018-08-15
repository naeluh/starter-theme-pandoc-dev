#!/bin/sh

current_time=$(date "+%Y-%m-%d-%H_%M_%S")

echo "running pandoc ...";

pandoc -f html-native_divs-native_spans-raw_html -t epub-auto_identifiers epub.xhtml -o $current_time.epub --epub-metadata=metadata.yml --epub-cover-image=../static/img/promo_image.png --template=template.xhtml  --standalone --css=../site/css/epub.css

echo "done";