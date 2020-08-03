#!/bin/bash
#
# Lint ruleset XML file.
#
# BASH-VERSION  :4.2+
# DEPENDS       :apt-get install wget libxml2-utils
# BY            :https://github.com/szepeviktor

RULESET="CodeatCodingStandard/ruleset.xml"
RULESETMD="codeat-phpmd.xml"

set -e

# Current directory should be repository root
test -r "$RULESET"

# Check dependencies
hash wget
hash xmllint

# Create temporary directory
mkdir -p tmp

# Download XML schema definitions
wget -nv -N -P tmp/ "https://github.com/squizlabs/PHP_CodeSniffer/raw/master/phpcs.xsd"
wget -nv -N -P tmp/ "https://www.w3.org/2012/04/XMLSchema.xsd"

xmllint --noout --schema tmp/XMLSchema.xsd tmp/phpcs.xsd
xmllint --noout --schema tmp/phpcs.xsd "$RULESET"
XMLLINT_INDENT="    " xmllint --format -recover "$RULESET" > $RULESET.tmp && mv $RULESET.tmp $RULESET

wget -nv -N -P tmp/ "http://pmd.sf.net/ruleset_xml_schema.xsd"
xmllint --noout --schema tmp/ruleset_xml_schema.xsd "$RULESETMD"
XMLLINT_INDENT="    " xmllint --format  -recover "$RULESETMD" > $RULESETMD.tmp && mv $RULESETMD.tmp $RULESETMD

rm -fr ./tmp
