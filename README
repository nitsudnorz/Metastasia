# Metastasia

## Description
This project is part of my doctoral studies at [mdw](https://iwk.mdw.ac.at) with the artistic research project [Études for Live-Electronics](https://iwk.mdw.ac.at/hofmann/peek-etudes/) (FWF AR743).

In this Repo you can find the score and Pd patch for the performance of the piece Metastasia by Dustin Zorn. This live electronic solo piece is performed on two interfaces, a joystick and a fader bank. "Metastasia" draws on ideas and algorithms from the interpretation of "Stria" in the Peek Project Etudes for Live Electronics. The material of the historical tape piece is altered to open up a space for artistic exploration. In addition, the musical concept of a live electronic fantasy polyphonic algorithmic organising principles of Xenakis's 1953 Metastaseis are used to expand the gestural and sonic potential of the Stria algorithm. The composition explores the algorithm, its structure and its parametric possibilities in a composed improvisatory performance context. 

## Installation
### Pure Data (PD)
To install, you will need a running version of [Pure Data](https://msp.ucsd.edu/software.html) (Version > 0.53-2).
The following pure data externals are needed:

* hid
* cyclone

You can find the comport external as well as the cyclone library via the menu bar:
![alt text](images/find_external.png "Find externals from the menu bar")
* Help > Find externals

## Engines

The piece has five sound-generating engines. Each engine contains variations on the FM algorithm used in Stria by John Chowning. The fifth engine is related to the polyphonic organising principles of Metastasis by Xenakis.

* MONOMOVE

One voice. KNDX is controlled (static). Interpolation of the FM oscillators.

* 2VOI

Two voices (shared reverb). KNDX is an oscilator that can be interpolated. Slow Skew as step sequencer.

* MPHO

One voice. KNDX can be interpolated.

* 4PHA

One voice. Four separate interpolatable KNDX reading through ifn1-ifn4.

* POLYMETAL

KNDX is controlled (static). ifc,ifma and ifmb are controlled by tangent equations of ten different quadratic functions. (ifctan.txt, ifmatan.txt, ifmbtan.txt)

## Interfaces
### Joystick

The original Performance used a Logitech Extreme 3D pro joystick.

This joystick has 

* X and Y axis scaling from 0-1023

* Z axis scaling from 0-255

* A slider scaling from 0-255

* has 12 buttons (0 - 127)

The external HID allows PD to read the joystick input in the JoystickINPUT patch.
The values are normalised and passed on for further mapping. A reactive GUI shows the current values and their mapping.

### Faderbank

For the first performance, an Icon faderbank was used.

This faderbank has

* 9 faders scaling from 0-16383
* A fader touch function
* Select, Mute, Solo and Rec buttons

The MIDI values are read from the patch IconfaderInput. A feedback loop for the motorised faders is required.
The values are normalised and passed on for further mapping. A reactive GUI shows the current values and their mapping.

### Mapping

Mapping in the piece is handled dynamic and cumulative. Different mappings are provided by 46 cues.

These mappings are stored in txt files in the Mappingdata folder.
Each engine parameter can be accessed through three different input modes (preset/button/continuous). Presets are automatically applied when a cue is changed, button and continuous data can be controlled via the interfaces. This results in five txt files per engine parameter. Not all of these files contain information.

As mentioned above, there are two different types of data input - continuous and button (binary). Continuous data can be mapped one to many. Buttons can be mapped many to many. Both types of data input exist for interface elements on both interfaces.

* The patch button controls the three possible input modes (preset/button/continuous) for a specific motor parameter (e.g. e1, ifn1).

#### buttons

* Icon_button/Jstk_button reads the mapping data of a specific engine parameter from a txt file and passes this data on. 

* Icon_buttons/Jstk_buttons is a sub-function of Icon_button/Jstk_button and gates the incoming button data of the icon interface.

* Joystickbuttonmaps writes the current mapping information to the GUI.


#### continous

* Icon_scaling/Jstk_scaling is reading the mapping and scaling data of a specific engine parameter on a cue, scaling the data and passing it on.

* Icon_continousdata/Jstk_continousdata is a sub-function of Icon_scaling/Jstk_scaling and switches between the different fader inputs.

* Icon_scalemaps/Joystick_scalemaps writes the current mapping information to the GUI.


## Usage

### General Usage
* To use this patch, install Pure Data and the necessary dependencies. 
* Use either the interfaces originally intended for the piece, or devices with similar functionality, and adjust the mapping in the Icon_INPUT and Joystick_Input pd patches accordingly.
* Run the Metastasia.pd patch. 
* Adjust the block size and delay in the audio settings if necessary.
* Select the correct Midi Inputs and Outputs for the Fader Bank.
* Initialise the joystick.
* Switch on the DSP.
* Use the score to explore the piece and try to understand the musical situations created by the mappings and represented in the score. Take notes and rework the piece until you feel comfortable with your interpretation.

## Support
This repository is maintained by [me](https://github.com/nitsudnorz).
For questions and feedback feel free to reach out to me!


## License
TO DO, also license for samples 

## Project status
In development

