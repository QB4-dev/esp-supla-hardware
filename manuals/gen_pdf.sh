#!/bin/bash

mkdir -p pdf

for dir in */; do
    # Check if it's a directory
    [ ! -d "$dir" ] && continue
    [ ! -f "$dir/document_main.adoc" ] && continue
    dev="${dir%/}"
    echo "generate manuals for ${dev}"

    asciidoctor-pdf \
    -a pdf-fontsdir=adoc_common/fonts \
    -a pdf-themesdir=adoc_common/theme \
    -a pdf-theme=supla \
    -a lang=pl \
    -a device="${dev}" \
    $dir/document_main.adoc -o pdf/$dir/${dev}_PL.pdf

    asciidoctor-pdf \
    -a pdf-fontsdir=adoc_common/fonts \
    -a pdf-themesdir=adoc_common/theme \
    -a pdf-theme=supla \
    -a lang=en \
    -a device="${dev}" \
    $dir/document_main.adoc -o pdf/$dir/${dev}_EN.pdf
done


