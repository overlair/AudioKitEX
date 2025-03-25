

#include "DSPBase.h"
#include "ParameterRamper.h"


#include <iostream>

enum SynthInstrumentParameter : AUParameterAddress {
//    DryWetDualMixerParameterWet,
};

class SynthInstrumentDSP : public DSPBase {
private:
//    ParameterRamper dryRamp;

public:
    SynthInstrumentDSP() {
//        parameters[DryWetDualMixerParameterDry] = &dryRamp;
    }

    void process(FrameRange range) override {
        std::cout << "Hello World!\n";

        for (int i : range) {

            for (int channel = 0; channel < channelCount; ++channel) {
                float dry = inputSample(channel, i);
                float wet = input2Sample(channel, i);
                outputSample(channel, i) =  0;
            }
        }
    }
};

AK_REGISTER_DSP(SynthInstrumentDSP, "syin")
//AK_REGISTER_PARAMETER(DryWetDualMixerParameterDry)

