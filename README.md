# Digital_Filters

In signal processing, the function of a filter is to remove unwanted parts of the signal, such as random noise, or
to extract useful parts of the signal, such as the components lying within a certain frequency range.
The following block diagram illustrates the basic idea.
There are two main kinds of filter, analog and digital. They are quite different in their physical makeup and in
how they work.
An analog filter uses analog electronic circuits made up from components such as resistors, capacitors and op
amps to produce the required filtering effect. Such filter circuits are widely used in such applications as noise
reduction, video signal enhancement, graphic equalisers in hi-fi systems, and many other areas.
There are well-established standard techniques for designing an analog filter circuit for a given requirement.
At all stages, the signal being filtered is an electrical voltage or current which is the direct analogue of the
physical quantity (e.g. a sound or video signal or transducer output) involved.
A digital filter uses a digital processor to perform numerical calculations on sampled values of the signal. The
processor may be a general-purpose computer such as a PC, or a specialised DSP (Digital Signal Processor)
chip.
The analog input signal must first be sampled and digitised using an ADC (analog to digital converter). The
resulting binary numbers, representing successive sampled values of the input signal, are transferred to the
processor, which carries out numerical calculations on them. These calculations typically involve multiplying
the input values by constants and adding the products together. If necessary, the results of these calculations,
which now represent sampled values of the filtered signal, are output through a DAC (digital to analog
converter) to convert the signal back to analog form.
