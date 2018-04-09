Sample Bitmap Testbench
=======================

About
-----
This testbench was written for an image processing module that accepts one pixel
per clock cycle.  To do so, a bitmap is read into memory.  Input pixel are then
streamed to the DUT while output pixels are written to memory simultaneously.
Finally, when the simulation is over, the output is written to a new bitmap file.

A sample DUT and sample input image are supplied.

Requirements
------------
This project requires Modelsim.  Please ensure that Modelsim executables are on
your path.

Quick Start
-----------
Run without gui

    vsim -c -do run_sim.do

Run with gui

    vsim -do run_sim.do

Caveats
-------
This testbench accepts only 24-bit per pixel bitmaps.
