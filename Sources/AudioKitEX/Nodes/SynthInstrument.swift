//
//  File.swift
//  AudioKitEX
//
//  Created by John Knowles on 3/24/25.
//

import AudioKit
import AVFoundation
import CAudioKitEX


public class SynthInstrument: Node {
 
    /// Connected nodes
    public var connections: [Node] { [] }

    /// Underlying AVAudioNode
    public var avAudioNode = instantiate(mixer: "syin")

    // MARK: - Parameters
    // USE THIS TO DEFINE POSSIBLE
    // waveshape
    // envelope A, D, S, R
    //
    //

//    public static let dryDef = NodeParameterDef(
//        identifier: "dry",
//        name: "Dry Mix",
//        address: akGetParameterAddress("DryWetDualMixerParameterDry"),
//        defaultValue: 0.5,
//        range: 0.0 ... 1.0,
//        unit: .generic
//    )
//
//    @Parameter(dryDef) public var dry: AUValue

    /// Initialize the synth instrument node
    ///
    /// - Parameters:
    ///   - voices: number of possible voices
    ///
    public init(_ voices: Int = 8)
    {
        // do something with voices
        setupParameters()
    }
    
    
//    func startNote()
//    func stopNote()
    
}
