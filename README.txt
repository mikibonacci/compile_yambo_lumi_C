clone your yambo repo, let's say yambo-repo.
copy there the new configure file that you find in this folder. 
if devel versions:
	>> cd yambo-repo/lib
        >> git clone https://github.com/yambo-code/yambo-libraries.git yambo
        >> cd ..  (go in the main folder of the repo)
then:
        
	>> source lumi_make.sh  (source the lumi make file to run the proper configure settings)

then make p2y, yambo, ypp...
