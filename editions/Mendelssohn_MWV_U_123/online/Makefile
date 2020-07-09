SAXON_JAR=../../../lib/saxon-he-10.1.jar

MEI_FILE=Mendelssohn_MWV_U_123.xml
XQUERY=import.xql
KNORA_IMPORT=import.xml

$(KNORA_IMPORT): $(MEI_FILE) $(XQUERY)
	java -cp $(SAXON_JAR) net.sf.saxon.Query -q:$(XQUERY) -o:$@ uri=$(MEI_FILE)

.PHONY: clean
clean:
	rm $(KNORA_IMPORT)
