# This makefile is working at 02/01/2025. Hoping that FAO does not change the address of its files... pleaseeeee.

set_up:
# Execute this command to set up the project in your local environment if you just cloned the repository.
# Make sure that you have created a virtual environment and activated it before running this command (I recommend using conda).
	@echo Setting up the project...
    # pip install -r requirements.txt
	mkdir -p src
	mkdir -p inter_data
	@echo Project set up complete!

data_sq:
	@echo Downloading Soil Quality data to the src/ directory...
	for i in 1 2 3 4 5 6 7 ; do \
	curl -L -o src/sq$$i.asc https://www.fao.org/fileadmin/user_upload/soils/docs/HWSD/Soil_Quality_data/sq$$i.asc; done
	@echo Done

data_land_use:
	@echo Downloading Land Use and Cover data to the src/ directory...
	for i in 'CULTRF_2000' 'CULTIR_2000' 'CULT_2000' 'FOR_2000' 'NVG_2000' 'WAT_2000' ; do \
	curl -L -o src/$$i.asc https://www.fao.org/fileadmin/user_upload/soils/docs/HWSD/Land_Cover_data/$$i.asc; done
	for i in 'GRS_2000' 'URB_2000' ; do \
	curl -L -o src/$$i.asc https://www.fao.org/fileadmin/user_upload/soils/HWSD%20Viewer/$$i.asc; done
	@echo Done
