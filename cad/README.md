To build a pdf of schematic:

gs -o output.pdf -sDEVICE=pdfwrite -dPDFSettings=/Screen synth.ps synth-Power.ps synth-EEPROM.ps synth-Channels.ps synth-Audio\ Out.ps synth-LCD.ps synth-UI.ps 
