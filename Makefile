MSG="Deploy Web Site"

deploy:
	rm -rf public
	@echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"
	hugo 
	cp -r public/ ../cloudmesh-community.github.io
	cd ../cloudmesh-community.github.io; git add .
	cd ../cloudmesh-community.github.io; git commit -m $(MSG) .
	cd ../cloudmesh-community.github.io; git push


# GET-bib:
#	wget https://raw.githubusercontent.com/cyberaide/bib/master/vonLaszewski-jabref.bib



get-bib:
	cd ../proceedings-fa18; python bib.py > ../www/fa18.bib


bibclean:
	rm -rf public
	cp content/publication/_index.md /tmp/_index.md
	rm -rf content/publication/*
	cp /tmp/_index.md content/publication/_index.md

bib: bibclean get-bib
	cat proceedings.bib fa18.bib  | \
	bibtool -s -r iso2tex -- print.line.length=1000 | \
	sed -e 's/jan,/{January},/g' | \
	sed -e 's/feb,/{February},/g' | \
	sed -e 's/mar,/{March},/g' | \
	sed -e 's/apr,/{April},/g' | \
	sed -e 's/may,/{May},/g' | \
	sed -e 's/jun,/{June},/g' | \
	sed -e 's/jul,/{July},/g' | \
	sed -e 's/aug,/{August},/g' | \
	sed -e 's/sep,/{September},/g' | \
	sed -e 's/oct,/{October},/g' | \
	sed -e 's/nov,/{November},/g' |\
	sed -e 's/dec,/{December},/g' |\
	sed -e 's/jan #/{January} #/g' | \
	sed -e 's/feb #/{February} #/g' | \
	sed -e 's/mar #/{March} #/g' | \
	sed -e 's/apr #/{April} #/g' | \
	sed -e 's/may #/{May} #/g' | \
	sed -e 's/jun #/{June} #/g' | \
	sed -e 's/jul #/{July} #/g' | \
	sed -e 's/aug #/{August} #/g' | \
	sed -e 's/sep #/{September} #/g' | \
	sed -e 's/oct #/{October} #/g' | \
	sed -e 's/nov #/{November} #/g' |\
	sed -e 's/dec #/{December} #/g' > fa18-tmp.bib 
	academic import --overwrite --bibtex fa18-tmp.bib
	hugo
#	cat fa18.bib



