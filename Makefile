TARGET=hyphenation-definitions

all:
	# Download XSLT to view XML in web browser
	if [ ! -e rfc2629.xslt ]; then wget http://greenbytes.de/tech/webdav/rfc2629xslt/rfc2629.xslt; fi
	# Convert XML to HTML
	xml2rfc $(TARGET).xml $(TARGET).html
	# Convert XML to text
	xml2rfc $(TARGET).xml $(TARGET).txt

nr:
	# Convert to nroff
	xml2rfc $(TARGET).xml $(TARGET).nr

clean:
	rm -f $(TARGET).html $(TARGET).txt
