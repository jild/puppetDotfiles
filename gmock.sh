	echo $(gtestVersionTag)
	echo $(gtestArchive)
	echo $(gtestFolder)
	echo $(gtestPath)
	@echo "\t================================================================"
	@echo "\tDownloading, compiling and installing gtest..."
	@echo "\t================================================================"
	# unpacking gtest from ../src/gtest
	# alternatively download gtest:
	cd /tmp; \
	wget https://github.com/google/googletest/archive/; \
	unzip $(gtestArchive); \
	cd $(gtestFolder); \
	mkdir -p build;
	# compiling gtest
	cd /tmp/$(gtestFolder)/build; \
	cmake ..; \
	make;
	# installing libraries and headers
	cd /tmp/$(gtestFolder)/build; \
	sudo cp -R ../googletest/include/gtest /usr/local/include/; \
	sudo cp -R ../googlemock/include/gmock /usr/local/include/; \
	sudo cp googlemock/gtest/*.a /usr/local/lib/; \
	sudo cp googlemock/*.a /usr/local/lib/;
	# reloading libraries
	sudo ldconfig;
	# cleaning up gtest src
	rm -rf /tmp/$(gtestArchive)
	rm -rf /tmp/$(gtestFolder)
	rm -rf /tmp/build
