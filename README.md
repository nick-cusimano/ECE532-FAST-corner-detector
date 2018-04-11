Project name: environmentally aware camera peripheral

Authors: Nicholas Cusimano, Jeff Feng, Gallop Fan

Description: corner detector based off of the FAST algorithm, also has servo driver code (the project was intended to run on a moving robot)

How to use the FAST test bench: we have a run_sim.do script that can be used in ModelSim. Ensure all the src files are compiled and the script points to the correct source directory. 

Structure: The repository contains three directories: 

  -Imgs:contains input images for the FAST algorithm

  -Out: contains output images for the FAST algorithm

  -Src: contains source code for the FAST algorithm (shown in the figure below under the fast block), as well as a top level module, test bench file, and counters to perform pixel addressing.

Acknowledgements: 

  -The bitmap test bench through ModelSim was based off of contributions from a prior ECE532 project test bench (https://github.com/ngemily/sample-bmp-tb).
  
  -The FAST algorithm was based off of the following papers
      -https://pdfs.semanticscholar.org/1cb7/eb6486863529f32ad7c6e41c1489c7ad7a18.pdf
      -https://pdfs.semanticscholar.org/8d21/0d0e6fbdc8ceba138d9b0769f60f26ec2df2.pdf 

