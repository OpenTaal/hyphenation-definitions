java -jar rr.war -png -out:grammar.zip grammar.ebnf
unzip -o grammar.zip
java -jar rr.war -out:grammar.xhtml grammar.ebnf
