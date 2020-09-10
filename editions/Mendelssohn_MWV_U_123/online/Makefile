# The MEI input file.
MEI_FILE=Mendelssohn_MWV_U_123.xml

# The Knora project shortcode.
SHORTCODE=082A

# The name of the Knora ontology to be created.
ONTOLOGY=tondauer

# "true" if text markup should be converted to standoff/XML, "false" otherwise.
MARKUP=false

# The external provider of region coordinates.
REGION_PROVIDER=tesselle
TESSELLE_ZIP_FILES=$(shell find tesselle -name '*.zip')

# The XML import file to be generated for knora-py.
KNORA_PY_XML_IMPORT_FILE=knora-py-import.xml

# The XQuery conversion program and its modules.
XQUERY_PROGRAM=mei-import.xql
XQUERY_MODULES=tesselle.xqm

# The Saxon XQuery interpreter.
SAXON_JAR=../../../lib/saxon-he-10.1.jar

.PHONY: clean install

$(KNORA_PY_XML_IMPORT_FILE): $(MEI_FILE) $(TESSELLE_ZIP_FILES) $(XQUERY_PROGRAM) $(XQUERY_MODULES)
	./tesselle-extract.sh
	java -cp $(SAXON_JAR) net.sf.saxon.Query \
		-q:$(XQUERY_PROGRAM) -o:$@ \
		mei-file=$(MEI_FILE) shortcode=$(SHORTCODE) \
		ontology=$(ONTOLOGY) markup=$(MARKUP) \
		region-provider=$(REGION_PROVIDER)

install: $(MEI_FILE)
	cp $(MEI_FILE) ../../../docs/editions/Mendelssohn_MWV_U_123/online/

clean:
	rm -f $(KNORA_PY_XML_IMPORT_FILE)
