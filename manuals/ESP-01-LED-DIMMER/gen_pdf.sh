#!/bin/bash

mkdir -p pdf

asciidoctor-pdf \
-a pdf-fontsdir=../adoc_common/fonts \
-a pdf-themesdir=../adoc_common/theme \
-a pdf-theme=supla \
-a lang=pl \
-a device=ESP-01-LED-DIMMER \
document_main.adoc -o pdf/ESP-01-LED-DIMMER_PL.pdf

asciidoctor-pdf \
-a pdf-fontsdir=../adoc_common/fonts \
-a pdf-themesdir=../adoc_common/theme \
-a pdf-theme=supla \
-a lang=en \
-a device=ESP-01-LED-DIMMER \
document_main.adoc -o pdf/ESP-01-LED-DIMMER_EN.pdf