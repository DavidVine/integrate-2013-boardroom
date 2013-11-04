program_name='DvxApi'


#if_not_defined __DVX_API__
#define __DVX_API__




define_type


structure _DvxAudioInput
{
    char cCompressingSetting[30]
    integer nCompressionAttack		// 1 to 2000
    integer nCompressionRatio		// 1 to 20
    integer nCompressionRelease		// 1 to 5000
    sinteger nCompressionThreshold	// 0 to -16 (in dB)
    sinteger nGain			// -24 to 24 (dB)
    char cStereoSetting[30]
}


structure _DvxAudioMic
{
    char cCompressionSetting[30]
    integer nCompressionAttack		// 1 to 2000
    integer nCompressionRatio		// 1 to 20
    integer nCompressionRelease		// 1 to 5000
    sinteger nCompressionThreshold	// 0 to -60
    
    integer nDuckingAttack		// 1 to 2000
    integer nDuckingHold		// 0 to 2000
    integer nDuckingLevel		// 0 to 20
    integer nDuckingRelease		// 10 to 5000
    
    // 3 band EQ
    integer nEqCenterFrequency[3]	// 20 to 20,000 (in Hz)
    char cEqFilterType[3][30]
    sinteger snEqGain[3]		// -12 to 12 (in dB)
    float fEqQualityFactor[3]
    
    sinteger snGain
    
    char cGatingSetting[30]
    integer nGatingAttack
    integer nGatingDepth
    integer nGatingHold
    integer nGatingRelease
    sinteger snGatingThreshold
    
    char cLimiterSetting[30]
    integer nLimiterAttack
    integer nLimiterRelease
    float fLimiterThreshold
    
    char OnStatus[30]
    
    char cPhantomPowerOnStatus[30]
    
    integer nPreampGain			// 0 to 100 (in percent %)
    
    char cMicTypeInUse[30]		// Single Stereo or Dual Mono    
}

structure _DvxAudioOutput
{
    sinteger snBalance			// -20 to 20 (in dB)
    integer nDelay			// 0 to 200 (in milliseconds)
    
    integer nDuckingAttack		// 1 to 2000
    integer nDuckingHold		// 0 to 2000
    integer nDuckingLevel		// 0 to 20
    integer nDuckingRelease		// 10 to 5000
    sinteger nDuckingThreshold		// -60 to 0
    char cDuckingSetting[30]
    
    integer nEqCenterFrequency[10]	// 20 to 20,000 (in kHz)
    char cEqFilterType[10][30]
    snteger snEqGain[10]		// -12 to 12 (in dB)
    char cEqMode[30]
    float fEqQualityFactor[10]
    
    integer nMaximumVolume		// 0 to 100 (in percent)
    integer nMinimumVolume		// 0 to 100 (in percent)
    char cMuteStatus[30]
    char cAmpStereoMode[30]
    char cTestToneFrequency[30]
    integer nVolume			// 0 to 100 (in percent)
}



structure _DvxVideoInput
{
    integer nBrightness			// 0 to 100
    char cBlackAndWhiteStatus[30]	
    char cColorStatus[30]		
    integer nContrast			// 0 to 100
    char cEdidSource[30]		
    char cEdidAutoStatus[30]		
    char cFormat[30]			
    char cHdcpComplianceStatus		
    sinteger snHorizontalShift		// -50 to 50
    integer nHue			// 0 to 100
    char cName[30]			
    integer nPhase			// 0 to 31
    char cEdidPreferredResolution[30]
    char cAutoResolutionStatus[30]
    char cResolutionAndRefreshRate[30]
    integer nSaturation			// 0 to 100
    char cStatus[30]
    sinteger snVerticalShift		// -10 to 10
}

structure _DvxVideoOutput
{
    char cAspectRatio[30]
    char cBlankingImage[30]
    integer nBrightness			// 0 to 100
    integer nContrast			// 0 to 100
    char cFreezeOption[30]
    sinteger snHorizontalShift		// -127 to 127
    integer nHorizontalSize		// 25 to 800
    char cMuteStatus[30]
    char OnStatus[30]
    char cOsdStatus[30]
    char cOsdColor[30]
    char cOsdPosition[30]
    char cResolutionAndRefreshRate[30]
    char cScalerSetting[30]
    char cTestPattern[30]
    sinteger snVerticalShift		// -127 to 127
    integer nVerticalSize		// 25 to 800
    integer nZoom			// 25 to 800
}


/*
structure _DvxSwitcher
{
    _DvxAudioInput audioInputs[MAX_DVX_AUDIO_INPUTS]
    _DvxAudioOutput audioOutputs[MAX_DVX_AUDIO_OUTPUTS]
    
    _DvxMicInput micInputs[MAX_DVX_MIC_INPUTS]
    
    _DvxVideoInput videoInputs[MAX_DVX_VIDEO_INPUTS]
    _DvxVideoOutput videoOutputs[MAX_DVX_VIDEO_OUTPUTS]
}

*/


define_constant



//////////////////////////////////////////////////
//////////       DVX level codes        //////////
//////////////////////////////////////////////////

// System level codes
nDVX_LEVEL_TEMPERATURE				= 8	// range: ???

// Audio input level codes
nDVX_LEVEL_AUDIO_INPUT_GAIN			= 5	// range: -24 to 24

// Audio output level codes
nDVX_LEVEL_AUDIO_OUTPUT_VOLUME			= 1	// range: 0 to 100
nDVX_LEVEL_AUDIO_OUTPUT_BALANCE			= 2	// range: -20 to 20
nDVX_LEVEL_AUDIO_OUTPUT_EQ_BAND_1		= 31	// range: -12 to 12
nDVX_LEVEL_AUDIO_OUTPUT_EQ_BAND_2		= 32	// range: -12 to 12
nDVX_LEVEL_AUDIO_OUTPUT_EQ_BAND_3		= 33	// range: -12 to 12
nDVX_LEVEL_AUDIO_OUTPUT_EQ_BAND_4		= 34	// range: -12 to 12
nDVX_LEVEL_AUDIO_OUTPUT_EQ_BAND_5		= 35	// range: -12 to 12
nDVX_LEVEL_AUDIO_OUTPUT_EQ_BAND_6		= 36	// range: -12 to 12
nDVX_LEVEL_AUDIO_OUTPUT_EQ_BAND_7		= 37	// range: -12 to 12
nDVX_LEVEL_AUDIO_OUTPUT_EQ_BAND_8		= 38	// range: -12 to 12
nDVX_LEVEL_AUDIO_OUTPUT_EQ_BAND_9		= 39	// range: -12 to 12
nDVX_LEVEL_AUDIO_OUTPUT_EQ_BAND_10		= 40	// range: -12 to 12
nDVX_LEVEL_AUDIO_OUTPUT_SOURCE_MIXING_LEVEL	= 41	// range: 0 to 100
nDVX_LEVEL_AUDIO_OUTPUT_LINE_MIC_1_MIXING_LEVEL	= 42	// range: 0 to 100
nDVX_LEVEL_AUDIO_OUTPUT_LINE_MIC_2_MIXING_LEVEL	= 43	// range: 0 to 100
nDVX_LEVEL_AUDIO_OUTPUT_SWITCHING		= 51	// range: 0 to 14

// Mic input level codes
nDVX_LEVEL_AUDIO_MIC_PREAMP_GAIN		= 52	// range: 0 to 65
nDVX_LEVEL_AUDIO_MIC_GAIN			= 53	// range: -24 to 24
nDVX_LEVEL_AUDIO_MIC_MIC_EQ_BAND_1		= 61	// range: -12 to 12
nDVX_LEVEL_AUDIO_MIC_MIC_EQ_BAND_2		= 62	// range: -12 to 12
nDVX_LEVEL_AUDIO_MIC_MIC_EQ_BAND_3		= 63	// range: -12 to 12

// Video input level codes
nDVX_LEVEL_VIDEO_INPUT_BRIGHTNESS		= 10	// range: 0 to 100
nDVX_LEVEL_VIDEO_INPUT_SATURATION		= 11	// range: 0 to 100
nDVX_LEVEL_VIDEO_INPUT_CONTRAST			= 12	// range: 0 to 100
nDVX_LEVEL_VIDEO_INPUT_HUE			= 14	// range: 0 to 100
nDVX_LEVEL_VIDEO_INPUT_HORIZONTAL_SHIFT		= 17	// range: -50 to 50
nDVX_LEVEL_VIDEO_INPUT_VERTICAL_SHIFT		= 19	// range: -10 to 10

// Video output level codes
nDVX_LEVEL_VIDEO_OUTPUT_ZOOM			= 15	// range: 25 to 800
nDVX_LEVEL_VIDEO_OUTPUT_BRIGHTNESS		= 20	// range: 0 to 100	
nDVX_LEVEL_VIDEO_OUTPUT_CONTRAST		= 22	// range: 0 to 100
nDVX_LEVEL_VIDEO_OUTPUT_HORIZONTAL_SIZE		= 26	// range: 25 to 800
nDVX_LEVEL_VIDEO_OUTPUT_HORIZONTAL_SHIFT	= 27	// range: -127 to 127
nDVX_LEVEL_VIDEO_OUTPUT_VERTICAL_SIZE		= 28	// range: 25 to 800
nDVX_LEVEL_VIDEO_OUTPUT_VERTICAL_SHIFT		= 29	// range: -127 to 127
nDVX_LEVEL_VIDEO_OUTPUT_SWITCHING		= 50	// range: 0 to 10














//////////////////////////////////////////////////
//////////      DVX channel codes       //////////
//////////////////////////////////////////////////

// System channel codes
nDVX_CHANNEL_STANDBY_MODE				= 100
nDVX_CHANNEL_FAN_ALARM					= 216
nDVX_CHANNEL_TEMPERATURE_ALARM				= 217

// Switching channel codes
nDVX_CHANNEL_OUTPUT_SOURCE_CYCLE			= 196	

// Audio input channel codes
nDVX_CHANNEL_AUDIO_INPUT_GAIN_UP			= 140
nDVX_CHANNEL_AUDIO_INPUT_GAIN_DOWN			= 141
nDVX_CHANNEL_AUDIO_INPUT_GAIN_MUTE			= 143
nDVX_CHANNEL_AUDIO_INPUT_GAIN_CYCLE			= 144

// Audio output channel codes
nDVX_CHANNEL_AUDIO_OUTPUT_VOLUME_UP			= 24
nDVX_CHANNEL_AUDIO_OUTPUT_VOLUME_DOWN			= 25
nDVX_CHANNEL_AUDIO_OUTPUT_VOLUME_MUTE_CYCLE		= 26
nDVX_CHANNEL_AUDIO_OUTPUT_SWITCH_AUDIO_INPUT_1		= 41
nDVX_CHANNEL_AUDIO_OUTPUT_SWITCH_AUDIO_INPUT_2		= 42
nDVX_CHANNEL_AUDIO_OUTPUT_SWITCH_AUDIO_INPUT_3		= 43
nDVX_CHANNEL_AUDIO_OUTPUT_SWITCH_AUDIO_INPUT_4		= 44
nDVX_CHANNEL_AUDIO_OUTPUT_SWITCH_AUDIO_INPUT_5		= 45
nDVX_CHANNEL_AUDIO_OUTPUT_SWITCH_AUDIO_INPUT_6		= 46
nDVX_CHANNEL_AUDIO_OUTPUT_SWITCH_AUDIO_INPUT_7		= 47
nDVX_CHANNEL_AUDIO_OUTPUT_SWITCH_AUDIO_INPUT_8		= 48
nDVX_CHANNEL_AUDIO_OUTPUT_SWITCH_AUDIO_INPUT_9		= 49
nDVX_CHANNEL_AUDIO_OUTPUT_SWITCH_AUDIO_INPUT_10		= 50
nDVX_CHANNEL_AUDIO_OUTPUT_SWITCH_AUDIO_INPUT_11		= 51
nDVX_CHANNEL_AUDIO_OUTPUT_SWITCH_AUDIO_INPUT_12		= 52
nDVX_CHANNEL_AUDIO_OUTPUT_SWITCH_AUDIO_INPUT_13		= 53
nDVX_CHANNEL_AUDIO_OUTPUT_SWITCH_AUDIO_INPUT_14		= 54
nDVX_CHANNEL_AUDIO_OUTPUT_BALANCE_RAMP_UP		= 164
nDVX_CHANNEL_AUDIO_OUTPUT_BALANCE_RAMP_DOWN		= 165
nDVX_CHANNEL_AUDIO_OUTPUT_VOLUME_MUTE			= 199

// Video input channel codes
nDVX_CHANNEL_VIDEO_INPUT_PHASE_RAMP_UP			= 83
nDVX_CHANNEL_VIDEO_INPUT_PHASE_RAMP_DOWN		= 84
nDVX_CHANNEL_VIDEO_INPUT_VERTICAL_SHIFT_RAMP_UP		= 132
nDVX_CHANNEL_VIDEO_INPUT_VERTICAL_SHIFT_RAMP_DOWN	= 133
nDVX_CHANNEL_VIDEO_INPUT_HORIZONTAL_SHIFT_RAMP_UP	= 134
nDVX_CHANNEL_VIDEO_INPUT_HORIZONTAL_SHIFT_RAMP_DOWN	= 135
nDVX_CHANNEL_VIDEO_INPUT_BLACK_AND_WHITE_STATE		= 142
nDVX_CHANNEL_VIDEO_INPUT_BRIGHTNESS_RAMP_UP		= 148
nDVX_CHANNEL_VIDEO_INPUT_BRIGHTNESS_RAMP_DOWN		= 149
nDVX_CHANNEL_VIDEO_INPUT_SATURATION_RAMP_UP		= 150
nDVX_CHANNEL_VIDEO_INPUT_SATURATION_RAMP_DOWN		= 151
nDVX_CHANNEL_VIDEO_INPUT_CONTRAST_RAMP_UP		= 152
nDVX_CHANNEL_VIDEO_INPUT_CONTRAST_RAMP_DOWN		= 153
nDVX_CHANNEL_VIDEO_INPUT_HUE_RAMP_UP			= 156
nDVX_CHANNEL_VIDEO_INPUT_HUE_RAMP_DOWN			= 157

// Video output channel codes
nDVX_CHANNEL_VIDEO_OUTPUT_SWITCH_VIDEO_INPUT_1		= 31
nDVX_CHANNEL_VIDEO_OUTPUT_SWITCH_VIDEO_INPUT_2		= 32
nDVX_CHANNEL_VIDEO_OUTPUT_SWITCH_VIDEO_INPUT_3		= 33
nDVX_CHANNEL_VIDEO_OUTPUT_SWITCH_VIDEO_INPUT_4		= 34
nDVX_CHANNEL_VIDEO_OUTPUT_SWITCH_VIDEO_INPUT_5		= 35
nDVX_CHANNEL_VIDEO_OUTPUT_SWITCH_VIDEO_INPUT_6		= 36
nDVX_CHANNEL_VIDEO_OUTPUT_SWITCH_VIDEO_INPUT_7		= 37
nDVX_CHANNEL_VIDEO_OUTPUT_SWITCH_VIDEO_INPUT_8		= 38
nDVX_CHANNEL_VIDEO_OUTPUT_SWITCH_VIDEO_INPUT_9		= 39
nDVX_CHANNEL_VIDEO_OUTPUT_SWITCH_VIDEO_INPUT_10		= 40
nDVX_CHANNEL_VIDEO_OUTPUT_ENABLE			= 70
nDVX_CHANNEL_VIDEO_OUTPUT_ZOOM_RAMP_UP			= 158
nDVX_CHANNEL_VIDEO_OUTPUT_ZOOM_RAMP_DOWN		= 159
nDVX_CHANNEL_VIDEO_OUTPUT_MUTE_STATE			= 210
nDVX_CHANNEL_VIDEO_OUTPUT_FREEZE_STATE			= 213
nDVX_CHANNEL_VIDEO_OUTPUT_OSD_STATE			= 234

// Audio mic channel codes
nDVX_CHANNEL_AUDIO_MIC_ENABLE				= 71









/////////////////////////////////////////////////
//////////        DVX commands         //////////
/////////////////////////////////////////////////

// Audio commands
cDVX_COMMAND_SWITCH_AUDIO_ONLY				= 'AI'		// NOTE: command does not confirm to DVX API (header-parameters)
cDVX_COMMAND_SWITCH_AUDIO				= 'CLAUDIOI'	// NOTE: command does not confirm to DVX API (header-parameters)
cDVX_COMMAND_AUDIO_IN_COMPRESSION_REQUEST		= '?AUDIN_COMPRESSION'
cDVX_COMMAND_AUDIO_IN_COMPRESSION			= 'AUDIN_COMPRESSION-'
cDVX_COMMAND_AUDIO_IN_COMPRESSION_ATTACK_REQUEST	= '?AUDIN_COMPRESSION_ATTACK'
cDVX_COMMAND_AUDIO_IN_COMPRESSION_ATTACK		= 'AUDIN_COMPRESSION_ATTACK-'
cDVX_COMMAND_AUDIO_IN_COMPRESSION_RATIO_REQUEST		= '?AUDIN_COMPRESSION_RATIO'
cDVX_COMMAND_AUDIO_IN_COMPRESSION_RATIO			= 'AUDIN_COMPRESSION_RATIO-'
cDVX_COMMAND_AUDIO_IN_COMPRESSION_RELEASE_REQUEST	= '?AUDIN_COMPRESSION_RELEASE'
cDVX_COMMAND_AUDIO_IN_COMPRESSION_RELEASE		= 'AUDIN_COMPRESSION_RELEASE-'
cDVX_COMMAND_AUDIO_IN_COMPRESSION_THRESHOLD_REQUEST	= '?AUDIN_COMPRESSION_THRESH'
cDVX_COMMAND_AUDIO_IN_COMPRESSION_THRESHOLD		= 'AUDIN_COMPRESSION_THRESH-'
cDVX_COMMAND_AUDIO_IN_GAIN_REQUEST			= '?AUDIN_GAIN'
cDVX_COMMAND_AUDIO_IN_GAIN				= 'AUDIN_GAIN-'
cDVX_COMMAND_AUDIO_IN_STEREO_REQUEST			= '?AUDIN_STEREO'
cDVX_COMMAND_AUDIO_IN_STEREO				= 'AUDIN_STEREO-'
//cDVX_COMMAND_AUDIO_MUTE_REQUEST				= '?AUDIO_MUTE'		// Redacted, see ?AUDOUT_MUTE
//cDVX_COMMAND_AUDIO_MUTE					= 'AUDIO_MUTE-'		// Redacted, see AUDOUT_MUTE
cDVX_COMMAND_AUDIO_MIC_COMPRESSION_REQUEST		= '?AUDMIC_COMPRESSION'
cDVX_COMMAND_AUDIO_MIC_COMPRESSION			= 'AUDMIC_COMPRESSION-'
cDVX_COMMAND_AUDIO_MIC_COMPRESSION_ATTACK_REQUEST	= '?AUDMIC_COMPRESSION_ATTACK'
cDVX_COMMAND_AUDIO_MIC_COMPRESSION_ATTACK		= 'AUDMIC_COMPRESSION_ATTACK-'
cDVX_COMMAND_AUDIO_MIC_COMPRESSION_RATIO_REQUEST	= '?AUDMIC_COMPRESSION_RATIO'
cDVX_COMMAND_AUDIO_MIC_COMPRESSION_RATIO		= 'AUDMIC_COMPRESSION_RATIO-'
cDVX_COMMAND_AUDIO_MIC_COMPRESSION_RELEASE_REQUEST	= '?AUDMIC_COMPRESSION_RELEASE'
cDVX_COMMAND_AUDIO_MIC_COMPRESSION_RELEASE		= 'AUDMIC_COMPRESSION_RELEASE-'
cDVX_COMMAND_AUDIO_MIC_COMPRESSION_THRESHOLD_REQUEST	= '?AUDMIC_COMPRESSION_THRESH'
cDVX_COMMAND_AUDIO_MIC_COMPRESSION_THRESHOLD		= 'AUDMIC_COMPRESSION_THRESH-'
//cDVX_COMMAND_AUDIO_MIC_DUCKING_ATTACK_REQUEST		= '?AUDMIC_DUCK_ATTACK'
cDVX_COMMAND_AUDIO_MIC_DUCKING_ATTACK			= 'AUDMIC_DUCK_ATTACK-'
//cDVX_COMMAND_AUDIO_MIC_DUCKING_HOLD_REQUEST		= '?AUDMIC_DUCK_HOLD'
cDVX_COMMAND_AUDIO_MIC_DUCKING_HOLD			= 'AUDMIC_DUCK_HOLD-'
//cDVX_COMMAND_AUDIO_MIC_DUCKING_LEVEL_REQUEST		= '?AUDMIC_DUCK_LEVEL'
cDVX_COMMAND_AUDIO_MIC_DUCKING_LEVEL			= 'AUDMIC_DUCK_LEVEL-'
//cDVX_COMMAND_AUDIO_MIC_DUCKING_RELEASE_REQUEST	= '?AUDMIC_DUCK_RELEASE'
cDVX_COMMAND_AUDIO_MIC_DUCKING_RELEASE			= 'AUDMIC_DUCK_RELEASE-'
//cDVX_COMMAND_AUDIO_MIC_EQ_REQUEST			= '?AUDMIC_EQ-'	// INVALID COMMANDS - DOCUMENTATION WAS INCORRECT
//cDVX_COMMAND_AUDIO_MIC_EQ				= 'AUDMIC_EQ-'	// INVALID COMMANDS - DOCUMENTATION WAS INCORRECT
cDVX_COMMAND_AUDIO_MIC_EQ_CENTER_FREQUENCY_REQUEST	= '?AUDMIC_EQ_CF-'
cDVX_COMMAND_AUDIO_MIC_EQ_CENTER_FREQUENCY		= 'AUDMIC_EQ_CF-'
cDVX_COMMAND_AUDIO_MIC_EQ_FILTER_TYPE_REQUEST		= '?AUDMIC_EQ_FT-'
cDVX_COMMAND_AUDIO_MIC_EQ_FILTER_TYPE			= 'AUDMIC_EQ_FT-'
cDVX_COMMAND_AUDIO_MIC_EQ_GAIN_REQUEST			= '?AUDMIC_EQ_GAIN-'
cDVX_COMMAND_AUDIO_MIC_EQ_GAIN				= 'AUDMIC_EQ_GAIN-'
cDVX_COMMAND_AUDIO_MIC_EQ_QUALITY_FACTOR_REQUEST	= '?AUDMIC_EQ_Q-'
cDVX_COMMAND_AUDIO_MIC_EQ_QUALITY_FACTOR		= 'AUDMIC_EQ_Q-'
cDVX_COMMAND_AUDIO_MIC_GAIN_REQUEST			= '?AUDMIC_GAIN'
cDVX_COMMAND_AUDIO_MIC_GAIN				= 'AUDMIC_GAIN-'
cDVX_COMMAND_AUDIO_MIC_GATING_REQUEST			= '?AUDMIC_GATING'
cDVX_COMMAND_AUDIO_MIC_GATING				= 'AUDMIC_GATING-'
cDVX_COMMAND_AUDIO_MIC_GATING_ATTACK_REQUEST		= '?AUDMIC_GATING_ATTACK'
cDVX_COMMAND_AUDIO_MIC_GATING_ATTACK			= 'AUDMIC_GATING_ATTACK-'
cDVX_COMMAND_AUDIO_MIC_GATING_DEPTH_REQUEST		= '?AUDMIC_GATING_DEPTH'
cDVX_COMMAND_AUDIO_MIC_GATING_DEPTH			= 'AUDMIC_GATING_DEPTH-'
cDVX_COMMAND_AUDIO_MIC_GATING_HOLD_REQUEST		= '?AUDMIC_GATING_HOLD'
cDVX_COMMAND_AUDIO_MIC_GATING_HOLD			= 'AUDMIC_GATING_HOLD-'
cDVX_COMMAND_AUDIO_MIC_GATING_RELEASE_REQUEST		= '?AUDMIC_GATING_RELEASE'
cDVX_COMMAND_AUDIO_MIC_GATING_RELEASE			= 'AUDMIC_GATING_RELEASE-'
cDVX_COMMAND_AUDIO_MIC_GATING_THRESHOLD_REQUEST		= '?AUDMIC_GATING_THRESH'
cDVX_COMMAND_AUDIO_MIC_GATING_THRESHOLD			= 'AUDMIC_GATING_THRESH-'
cDVX_COMMAND_AUDIO_MIC_LIMITER_REQUEST			= '?AUDMIC_LIMITER'
cDVX_COMMAND_AUDIO_MIC_LIMITER				= 'AUDMIC_LIMITER-'
cDVX_COMMAND_AUDIO_MIC_LIMITER_ATTACK_REQUEST		= '?AUDMIC_LIMITER_ATTACK'
cDVX_COMMAND_AUDIO_MIC_LIMITER_ATTACK			= 'AUDMIC_LIMITER_ATTACK-'
cDVX_COMMAND_AUDIO_MIC_LIMITER_RELEASE_REQUEST		= '?AUDMIC_LIMITER_RELEASE'
cDVX_COMMAND_AUDIO_MIC_LIMITER_RELEASE			= 'AUDMIC_LIMITER_RELEASE-'
cDVX_COMMAND_AUDIO_MIC_LIMITER_THRESHOLD_REQUEST	= '?AUDMIC_LIMITER_THRESH'
cDVX_COMMAND_AUDIO_MIC_LIMITER_THRESHOLD		= 'AUDMIC_LIMITER_THRESH-'
cDVX_COMMAND_AUDIO_MIC_ON_REQUEST			= '?AUDMIC_ON'
cDVX_COMMAND_AUDIO_MIC_ON				= 'AUDMIC_ON-'
cDVX_COMMAND_AUDIO_MIC_PHANTOM_POWER_REQUEST		= '?AUDMIC_PHANTOM_PWR'
cDVX_COMMAND_AUDIO_MIC_PHANTOM_POWER			= 'AUDMIC_PHANTOM_PWR-'
cDVX_COMMAND_AUDIO_MIC_PREAMP_GAIN_REQUEST		= '?AUDMIC_PREAMP_GAIN'
cDVX_COMMAND_AUDIO_MIC_PREAMP_GAIN			= 'AUDMIC_PREAMP_GAIN-'
cDVX_COMMAND_AUDIO_MIC_STEREO_REQUEST			= '?AUDMIC_STEREO'
cDVX_COMMAND_AUDIO_MIC_STEREO				= 'AUDMIC_STEREO-'
cDVX_COMMAND_AUDIO_OUT_BALANCE_REQUEST			= '?AUDOUT_BALANCE'
cDVX_COMMAND_AUDIO_OUT_BALANCE				= 'AUDOUT_BALANCE-'
cDVX_COMMAND_AUDIO_OUT_DELAY_REQUEST			= '?AUDOUT_DELAY'
cDVX_COMMAND_AUDIO_OUT_DELAY				= 'AUDOUT_DELAY-'
//cDVX_COMMAND_AUDIO_OUT_DUCKING_ATTACK_REQUEST		= '?AUDOUT_DUCK_ATTACK'
cDVX_COMMAND_AUDIO_OUT_DUCKING_ATTACK			= 'AUDOUT_DUCK_ATTACK-'
//cDVX_COMMAND_AUDIO_OUT_DUCKING_HOLD_REQUEST		= '?AUDOUT_DUCK_HOLD'
cDVX_COMMAND_AUDIO_OUT_DUCKING_HOLD			= 'AUDOUT_DUCK_HOLD-'
//cDVX_COMMAND_AUDIO_OUT_DUCKING_LEVEL_REQUEST		= '?AUDOUT_DUCK_LEVEL'
cDVX_COMMAND_AUDIO_OUT_DUCKING_LEVEL			= 'AUDOUT_DUCK_LEVEL-'
//cDVX_COMMAND_AUDIO_OUT_DUCKING_RELEASE_REQUEST	= '?AUDOUT_DUCK_RELEASE'
cDVX_COMMAND_AUDIO_OUT_DUCKING_RELEASE			= 'AUDOUT_DUCK_RELEASE-'
cDVX_COMMAND_AUDIO_OUT_DUCKING_THRESHOLD_REQUEST	= '?AUDOUT_DUCK_THRESH'
cDVX_COMMAND_AUDIO_OUT_DUCKING_THRESHOLD			= 'AUDOUT_DUCK_THRESH-'
cDVX_COMMAND_AUDIO_OUT_DUCKING_REQUEST			= '?AUDOUT_DUCKING'
cDVX_COMMAND_AUDIO_OUT_DUCKING				= 'AUDOUT_DUCKING-'
cDVX_COMMAND_AUDIO_OUT_EQ_CENTER_FREQUENCY_REQUEST	= '?AUDOUT_EQ_CF-'
cDVX_COMMAND_AUDIO_OUT_EQ_CENTER_FREQUENCY		= 'AUDOUT_EQ_CF-'
cDVX_COMMAND_AUDIO_OUT_EQ_FILTER_TYPE_REQUEST		= '?AUDOUT_EQ_FT-'
cDVX_COMMAND_AUDIO_OUT_EQ_FILTER_TYPE			= 'AUDOUT_EQ_FT-'
cDVX_COMMAND_AUDIO_OUT_EQ_GAIN_REQUEST			= '?AUDOUT_EQ_GAIN-'
cDVX_COMMAND_AUDIO_OUT_EQ_GAIN				= 'AUDOUT_EQ_GAIN-'
cDVX_COMMAND_AUDIO_OUT_EQ_MODE_REQUEST			= '?AUDOUT_EQ_MODE-'
cDVX_COMMAND_AUDIO_OUT_EQ_MODE				= 'AUDOUT_EQ_MODE-'
cDVX_COMMAND_AUDIO_OUT_EQ_QUALITY_FACTOR_REQUEST	= '?AUDOUT_EQ_Q-'
cDVX_COMMAND_AUDIO_OUT_EQ_QUALITY_FACTOR		= 'AUDOUT_EQ_Q-'
cDVX_COMMAND_AUDIO_OUT_MAXIMUM_VOLUME_REQUEST		= '?AUDOUT_MAXVOL'
cDVX_COMMAND_AUDIO_OUT_MAXIMUM_VOLUME			= 'AUDOUT_MAXVOL-'
cDVX_COMMAND_AUDIO_OUT_MINIMUM_VOLUME_REQUEST		= '?AUDOUT_MINVOL'
cDVX_COMMAND_AUDIO_OUT_MINIMUM_VOLUME			= 'AUDOUT_MINVOL-'
cDVX_COMMAND_AUDIO_OUT_MUTE_REQUEST			= '?AUDOUT_MUTE'
cDVX_COMMAND_AUDIO_OUT_MUTE				= 'AUDOUT_MUTE-'
cDVX_COMMAND_AUDIO_OUT_STEREO_REQUEST			= '?AUDOUT_STEREO'
cDVX_COMMAND_AUDIO_OUT_STEREO				= 'AUDOUT_STEREO-'
cDVX_COMMAND_AUDIO_OUT_TEST_TONE_REQUEST		= '?AUDOUT_TESTTONE'
cDVX_COMMAND_AUDIO_OUT_TEST_TONE			= 'AUDOUT_TESTTONE-'
cDVX_COMMAND_AUDIO_OUT_VOLUME_REQUEST			= '?AUDOUT_VOLUME'
cDVX_COMMAND_AUDIO_OUT_VOLUME				= 'AUDOUT_VOLUME-'
//cDVX_COMMAND_AUDIO_GAIN_REQUEST			= '?GAIN-'		// redacted, see ?AUDIN_GAIN
//cDVX_COMMAND_AUDIO_GAIN				= 'GAIN-'		// redacted, see AUDIN_GAIN
cDVX_COMMAND_AUDIO_OUT_HDMI_AUDIO_REQUEST		= '?HDMIOUT_AUDIO'
cDVX_COMMAND_AUDIO_OUT_HDMI_AUDIO			= 'HDMIOUT_AUDIO-'
cDVX_COMMAND_AUDIO_OUT_HDMI_EQ_REQUEST			= '?HDMIOUT_EQ'
cDVX_COMMAND_AUDIO_OUT_HDMI_EQ				= 'HDMIOUT_EQ-'
//cDVX_COMMAND_AUDIO_INPUT_EQ_REQUEST			= '?INPUT_EQ-'		// redacted, see ?AUDMIC_EQ
//cDVX_COMMAND_AUDIO_INPUT_OUT_EQ			= 'INPUT_EQ-'		// redacted, see AUDMIC_EQ
//cDVX_COMMAND_AUDIO_PHANTOM_POWER_REQUEST		= '?PHANTOM_PWR'	// redacted, see ?AUDMIC_PHANTOM_PWR
//cDVX_COMMAND_AUDIO_PHANTOM_POWER			= 'PHANTOM_PWR-'		// redacted, see AUDMIC_PHANTOM_PWR
cDVX_COMMAND_AUDIO_OUT_SPDIF_AUDIO_REQUEST		= '?SPDIFOUT_AUDIO'
cDVX_COMMAND_AUDIO_OUT_SPDIF_AUDIO			= 'SPDIFOUT_AUDIO-'
//cDVX_COMMAND_AUDIO_VOLUME_REQUEST			= '?VOLUME'		// redacted, see ?AUDOUT_VOLUME
//cDVX_COMMAND_AUDIO_VOLUME				= 'VOLUME-'		// redacted, see AUDOUT_VOLUME
cDVX_COMMAND_AUDIO_MIX_LEVEL_REQUEST			= '?XPOINT-'
cDVX_COMMAND_AUDIO_MIX_LEVEL				= 'XPOINT-'
// Video commands
cDVX_COMMAND_SWITCH_AUDIO_AND_VIDEO			= 'CI'		// NOTE: command does not confirm to DVX API (header-parameters)
cDVX_COMMAND_SWITCH_VIDEO				= 'CLVIDEOI'	// NOTE: command does not confirm to DVX API (header-parameters)
cDVX_COMMAND_SWITCH_ALL					= 'CLALLI'	// NOTE: command does not confirm to DVX API (header-parameters)
cDVX_COMMAND_SWITCH_VIDEO_ONLY				= 'VI'		// NOTE: command does not confirm to DVX API (header-parameters)
cDVX_COMMAND_SWITCH_RESPONSE				= 'SWITCH-'
cDVX_COMMAND_INPUT_REQUEST				= '?INPUT-'
cDVX_COMMAND_OSD_REQUEST				= '?OSD'
cDVX_COMMAND_OSD					= 'OSD-'
cDVX_COMMAND_OUTPUT_REQUEST				= '?OUTPUT-'
cDVX_COMMAND_VIDEO_MUTE_REQUEST				= '?VIDEO_MUTE'		// Redacted (see ?VIDOUT_MUTE) (still works)
cDVX_COMMAND_VIDEO_MUTE					= 'VIDEO_MUTE-'		// Redacted (see VIDOUT_MUTE) (still works)
/*cDVX_COMMAND_VIDEO_TEST_PATTERN_REQUEST		= '?VIDEO_TESTPATTERN'	// Redacted (no longer works)
cDVX_COMMAND_VIDEO_TEST_PATTERN				= 'VIDEO_TESTPATTERN-'*/
cDVX_COMMAND_VIDEO_IN_BRIGHTNESS_REQUEST		= '?VIDIN_BRIGHTNESS'
cDVX_COMMAND_VIDEO_IN_BRIGHTNESS			= 'VIDIN_BRIGHTNESS-'
cDVX_COMMAND_VIDEO_IN_BLACK_AND_WHITE_STATE_REQUEST	= '?VIDIN_BW'
cDVX_COMMAND_VIDEO_IN_BLACK_AND_WHITE_STATE		= 'VIDIN_BW-'
cDVX_COMMAND_VIDEO_IN_COLOR_REQUEST			= '?VIDIN_COLOR'	// Redacted (see VIDIN_BW)
cDVX_COMMAND_VIDEO_IN_COLOR				= 'VIDIN_COLOR-'	// Redacted (see ?VIDIN_BW)
cDVX_COMMAND_VIDEO_IN_CONTRAST_REQUEST			= '?VIDIN_CONTRAST'
cDVX_COMMAND_VIDEO_IN_CONTRAST				= 'VIDIN_CONTRAST-'
cDVX_COMMAND_VIDEO_IN_EDID_SOURCE_REQUEST		= '?VIDIN_EDID'
cDVX_COMMAND_VIDEO_IN_EDID_SOURCE			= 'VIDIN_EDID-'
cDVX_COMMAND_VIDEO_IN_EDID_UPDATE_AUTO_REQUEST		= '?VIDIN_EDID_AUTO'
cDVX_COMMAND_VIDEO_IN_EDID_UPDATE_AUTO			= 'VIDIN_EDID_AUTO-'
cDVX_COMMAND_VIDEO_IN_EDID_PREFERRED_RESOLUTION_REQUEST	= '?VIDIN_PREF_EDID'
cDVX_COMMAND_VIDEO_IN_EDID_PREFERRED_RESOLUTION		= 'VIDIN_PREF_EDID-'
cDVX_COMMAND_VIDEO_IN_FORMAT_REQUEST			= '?VIDIN_FORMAT'
cDVX_COMMAND_VIDEO_IN_FORMAT				= 'VIDIN_FORMAT-'
cDVX_COMMAND_VIDEO_IN_HDCP_COMPLIANCE_REQUEST		= '?VIDIN_HDCP'
cDVX_COMMAND_VIDEO_IN_HDCP_COMPLIANCE			= 'VIDIN_HDCP-'
cDVX_COMMAND_VIDEO_IN_HORIZONTAL_SHIFT_REQUEST		= '?VIDIN_HSHIFT'
cDVX_COMMAND_VIDEO_IN_HORIZONTAL_SHIFT			= 'VIDIN_HSHIFT-'
cDVX_COMMAND_VIDEO_IN_HUE_REQUEST			= '?VIDIN_HUE'
cDVX_COMMAND_VIDEO_IN_HUE				= 'VIDIN_HUE-'
cDVX_COMMAND_VIDEO_IN_NAME_REQUEST			= '?VIDIN_NAME'
cDVX_COMMAND_VIDEO_IN_NAME				= 'VIDIN_NAME-'
cDVX_COMMAND_VIDEO_IN_PHASE_REQUEST			= '?VIDIN_PHASE'
cDVX_COMMAND_VIDEO_IN_PHASE				= 'VIDIN_PHASE-'
cDVX_COMMAND_VIDEO_IN_RESOLUTION_AUTO_REQUEST		= '?VIDIN_RES_AUTO'
cDVX_COMMAND_VIDEO_IN_RESOLUTION_AUTO			= 'VIDIN_RES_AUTO-'
cDVX_COMMAND_VIDEO_IN_RESOLUTION_REQUEST		= '?VIDIN_RES_REF'
cDVX_COMMAND_VIDEO_IN_RESOLUTION			= 'VIDIN_RES_REF-'
cDVX_COMMAND_VIDEO_IN_SATURATION_REQUEST		= '?VIDIN_SATURATION'
cDVX_COMMAND_VIDEO_IN_SATURATION			= 'VIDIN_SATURATION-'
cDVX_COMMAND_VIDEO_IN_STATUS_REQUEST			= '?VIDIN_STATUS'
cDVX_COMMAND_VIDEO_IN_STATUS				= 'VIDIN_STATUS-'
cDVX_COMMAND_VIDEO_IN_VERTICAL_SHIFT_REQUEST		= '?VIDIN_VSHIFT'
cDVX_COMMAND_VIDEO_IN_VERTICAL_SHIFT			= 'VIDIN_VSHIFT-'
cDVX_COMMAND_VIDEO_OUT_ASPECT_RATIO_REQUEST		= '?VIDOUT_ASPECT_RATIO'
cDVX_COMMAND_VIDEO_OUT_ASPECT_RATIO			= 'VIDOUT_ASPECT_RATIO-'
cDVX_COMMAND_VIDEO_OUT_BLANK_IMAGE_REQUEST		= '?VIDOUT_BLANK'
cDVX_COMMAND_VIDEO_OUT_BLANK_IMAGE			= 'VIDOUT_BLANK-'
cDVX_COMMAND_VIDEO_OUT_BRIGHTNESS_REQUEST		= '?VIDOUT_BRIGHTNESS'
cDVX_COMMAND_VIDEO_OUT_BRIGHTNESS			= 'VIDOUT_BRIGHTNESS-'
cDVX_COMMAND_VIDEO_OUT_CONTRAST_REQUEST			= '?VIDOUT_CONTRAST'
cDVX_COMMAND_VIDEO_OUT_CONTRAST				= 'VIDOUT_CONTRAST-'
cDVX_COMMAND_VIDEO_OUT_FREEZE_REQUEST			= '?VIDOUT_FREEZE'
cDVX_COMMAND_VIDEO_OUT_FREEZE				= 'VIDOUT_FREEZE-'
cDVX_COMMAND_VIDEO_OUT_HORIZONTAL_SHIFT_REQUEST		= '?VIDOUT_HSHIFT'
cDVX_COMMAND_VIDEO_OUT_HORIZONTAL_SHIFT			= 'VIDOUT_HSHIFT-'
cDVX_COMMAND_VIDEO_OUT_HORIZONTAL_SIZE_REQUEST		= '?VIDOUT_HSIZE'
cDVX_COMMAND_VIDEO_OUT_HORIZONTAL_SIZE			= 'VIDOUT_HSIZE-'
cDVX_COMMAND_VIDEO_OUT_MUTE_REQUEST			= '?VIDOUT_MUTE'
cDVX_COMMAND_VIDEO_OUT_MUTE				= 'VIDOUT_MUTE-'
cDVX_COMMAND_VIDEO_OUT_ON_REQUEST			= '?VIDOUT_ON'
cDVX_COMMAND_VIDEO_OUT_ON				= 'VIDOUT_ON-'
cDVX_COMMAND_VIDEO_OUT_OSD_REQUEST			= '?VIDOUT_OSD'
cDVX_COMMAND_VIDEO_OUT_OSD				= 'VIDOUT_OSD-'
cDVX_COMMAND_VIDEO_OUT_OSD_COLOR_REQUEST		= '?VIDOUT_OSD_COLOR'
cDVX_COMMAND_VIDEO_OUT_OSD_COLOR			= 'VIDOUT_OSD_COLOR-'
cDVX_COMMAND_VIDEO_OUT_OSD_POSITION_REQUEST		= '?VIDOUT_OSD_POS'
cDVX_COMMAND_VIDEO_OUT_OSD_POSITION			= 'VIDOUT_OSD_POS-'
/*cDVX_COMMAND_VIDEO_OUT_RESOLUTION_REQUEST		= '?VIDOUT_RES'	// Redacted (still works)
cDVX_COMMAND_VIDEO_OUT_RESOLUTION			= 'VIDOUT_RES-'*/
cDVX_COMMAND_VIDEO_OUT_RESOLUTION_REQUEST		= '?VIDOUT_RES_REF'
cDVX_COMMAND_VIDEO_OUT_RESOLUTION			= 'VIDOUT_RES_REF-'
//cDVX_COMMAND_VIDEO_OUT_RESOLUTION_AUTO_REQUEST	= '?VIDOUT_RES_AUTO' Redacted (see ?VIDOUT_SCALE)
//cDVX_COMMAND_VIDEO_OUT_RESOLUTION_AUTO		= 'VIDOUT_RES_AUTO-' Redacted (see VIDOUT_SCALE)
cDVX_COMMAND_VIDEO_OUT_SCALE_MODE_REQUEST		= '?VIDOUT_SCALE'
cDVX_COMMAND_VIDEO_OUT_SCALE_MODE			= 'VIDOUT_SCALE-'
cDVX_COMMAND_VIDEO_OUT_TEST_PATTERN_REQUEST		= '?VIDOUT_TESTPAT'
cDVX_COMMAND_VIDEO_OUT_TEST_PATTERN			= 'VIDOUT_TESTPAT-'
cDVX_COMMAND_VIDEO_OUT_VERTICAL_SHIFT_REQUEST		= '?VIDOUT_VSHIFT'
cDVX_COMMAND_VIDEO_OUT_VERTICAL_SHIFT			= 'VIDOUT_VSHIFT-'
cDVX_COMMAND_VIDEO_OUT_VERTICAL_SIZE_REQUEST		= '?VIDOUT_VSIZE'
cDVX_COMMAND_VIDEO_OUT_VERTICAL_SIZE			= 'VIDOUT_VSIZE-'
cDVX_COMMAND_VIDEO_OUT_ZOOM_REQUEST			= '?VIDOUT_ZOOM'
cDVX_COMMAND_VIDEO_OUT_ZOOM				= 'VIDOUT_ZOOM-'
// Front Panel commands
cDVX_COMMAND_FRONT_PANEL_LOCKOUT			= 'FP_LOCKOUT-'
cDVX_COMMAND_FRONT_PANEL_LOCKOUT_REQUEST		= '?FP_LOCKOUT'
cDVX_COMMAND_FRONT_PANEL_LOCKOUT_TYPE			= 'FP_LOCKTYPE-'
cDVX_COMMAND_FRONT_PANEL_LOCKOUT_TYPE_REQUEST		= '?FP_LOCKTYPE'
cDVX_COMMAND_FRONT_PANEL_INTENSITY_LCD			= 'INTENSITY_LCD-'
cDVX_COMMAND_FRONT_PANEL_INTENSITY_LCD_REQUEST		= '?INTENSITY_LCD'
cDVX_COMMAND_FRONT_PANEL_INTENSITY_LEDS			= 'INTENSITY_LEDS-'
cDVX_COMMAND_FRONT_PANEL_INTENSITY_LEDS_REQUEST		= '?INTENSITY_LEDS'
//System commands
cDVX_COMMAND_DXLINK_OUTPUT_ETHERNET_REQUEST		= '?DXLINK_ETH'
cDVX_COMMAND_DXLINK_OUTPUT_ETHERNET			= 'DXLINK_ETH-'
cDVX_COMMAND_DXLINK_INPUT_ETHERNET_REQUEST		= '?DXLINK_IN_ETH'
cDVX_COMMAND_DXLINK_INPUT_ETHERNET			= 'DXLINK_IN_ETH-'
//cDVX_COMMAND_DSP_FIRMWARE_VERSION_REQUEST		= '?DSP_FWVERSION'	// Redacted
//cDVX_COMMAND_DSP_FIRMWARE_VERSION			= 'DSP_FWVERSION-'	// Redacted
cDVX_COMMAND_FAN_SPEED_REQUEST				= '?FAN_SPEED'
cDVX_COMMAND_FAN_SPEED					= 'FAN_SPEED-'
cDVX_COMMAND_TEMPERATURE_REQUEST			= '?TEMP'
cDVX_COMMAND_TEMPERATURE				= 'TEMP-'







///////////////////////////////////////////////////////////////////////////
//////////       DVX command parameter values level codes        //////////
///////////////////////////////////////////////////////////////////////////


// DVX Front Panel Lockout Types
nDVX_LOCKTYPE_ALL_MENUS				= 1
nDVX_LOCKTYPE_RESERVED				= 2
nDVX_LOCKTYPE_CONFIGURE_MENUS_ONLY		= 3



// DVX EDID Sources
cDVX_EDID_SOURCE_ALL_RESOLUTIONS[]		= 'ALL RESOLUTIONS'
cDVX_EDID_SOURCE_WIDE_SCREEN[]			= 'WIDE-SCREEN'
cDVX_EDID_SOURCE_FULL_SCREEN[]			= 'FULL-SCREEN'
cDVX_EDID_SOURCE_MIRROR_OUTPUT_1[]		= 'MIRROR OUT 1'
cDVX_EDID_SOURCE_MIRROR_OUTPUT_2[]		= 'MIRROR OUT 2'
cDVX_EDID_SOURCE_MIRROR_OUTPUT_3[]		= 'MIRROR OUT 3'
cDVX_EDID_SOURCE_MIRROR_OUTPUT_4[]		= 'MIRROR OUT 4'


// DVX Aspect Ratios
cDVX_ASPECT_RATIO_ANAMORPHIC[]			= 'ANAMORPHIC'
cDVX_ASPECT_RATIO_MAINTAIN[]			= 'MAINTAIN'
cDVX_ASPECT_RATIO_STRETCH[]			= 'STRETCH'
cDVX_ASPECT_RATIO_ZOOM[]			= 'ZOOM'


// DVX Blanking Image Options
cDVX_BLANK_IMAGE_BLACK[]			= 'BLACK'
cDVX_BLANK_IMAGE_BLUE[]				= 'BLUE'
cDVX_BLANK_IMAGE_LOGO_1[]			= 'LOGO 1'
cDVX_BLANK_IMAGE_LOGO_2[]			= 'LOGO 2'
cDVX_BLANK_IMAGE_LOGO_3[]			= 'LOGO 3'

// DVX OSD Color Options
cDVX_OSD_COLOR_BLACK[]				= 'BLACK'
cDVX_OSD_COLOR_BLUE[]				= 'BLUE'
cDVX_OSD_COLOR_WHITE[]				= 'WHITE'
cDVX_OSD_COLOR_YELLOW[]				= 'YELLOW'

// DVX OSD Position Options
cDVX_OSD_POSITION_TOP_LEFT[]			= 'TOP LEFT'
cDVX_OSD_POSITION_TOP_RIGHT[]			= 'TOP RIGHT'
cDVX_OSD_POSITION_BOTTOM_LEFT[]			= 'BTM LEFT'
cDVX_OSD_POSITION_BOTTOM_RIGHT[]		= 'BTM RIGHT'

// DVX Scaler Modes
cDVX_SCALE_MODE_AUTO[]				= 'AUTO'
cDVX_SCALE_MODE_BYPASS[]			= 'BYPASS'
cDVX_SCALE_MODE_MANUAL[]			= 'MANUAL'

// DVX Test Patterns
cDVX_TEST_PATTERN_OFF[]				= 'OFF'
cDVX_TEST_PATTERN_COLOR_BAR[]			= 'COLOR BAR'
cDVX_TEST_PATTERN_GRAY_RAMP[]			= 'GRAY RAMP'
cDVX_TEST_PATTERN_HILO_TRACK[]			= 'HILOTRACK'
cDVX_TEST_PATTERN_PLUGE[]			= 'PLUGE'
cDVX_TEST_PATTERN_SMPTE_BAR[]			= 'SMPTE BAR'
cDVX_TEST_PATTERN_X_HATCH[]			= 'X-HATCH'
cDVX_TEST_PATTERN_LOGO_1[]			= 'LOGO 1'
cDVX_TEST_PATTERN_LOGO_2[]			= 'LOGO 2'
cDVX_TEST_PATTERN_LOGO_3[]			= 'LOGO 3'

// DVX Compression Options
cDVX_COMPRESSION_OFF[]				= 'OFF'
cDVX_COMPRESSION_LOW[]				= 'LOW'
cDVX_COMPRESSION_MEDIUM[]			= 'MEDIUM'
cDVX_COMPRESSION_HIGH[]				= 'HIGH'
cDVX_COMPRESSION_CUSTOM[]			= 'CUSTOM'

// DVX Gating Options
cDVX_GATING_OFF[]				= 'OFF'
cDVX_GATING_LOW[]				= 'LOW'
cDVX_GATING_MEDIUM[]				= 'MEDIUM'
cDVX_GATING_HIGH[]				= 'HIGH'
cDVX_GATING_CUSTOM[]				= 'CUSTOM'

// DVX Limiting Options
cDVX_LIMITER_OFF[]				= 'OFF'
cDVX_LIMITER_LOW[]				= 'LOW'
cDVX_LIMITER_MEDIUM[]				= 'MEDIUM'
cDVX_LIMITER_HIGH[]				= 'HIGH'
cDVX_LIMITER_CUSTOM[]				= 'CUSTOM'

// DVX Ducking Options
cDVX_DUCKING_OFF[]				= 'OFF'
cDVX_DUCKING_LOW[]				= 'LOW'
cDVX_DUCKING_MEDIUM[]				= 'MEDIUM'
cDVX_DUCKING_HIGH[]				= 'HIGH'
cDVX_DUCKING_CUSTOM[]				= 'CUSTOM'

// DVX Stereo/Mono Audio Options
cDVX_AUDIO_STEREO[]				= 'STEREO'
cDVX_AUDIO_MONO[]				= 'MONO'

// DVX Microphone Types
cDVX_MIC_TYPE_DUAL_MONO[]			= 'DUAL MONO'
cDVX_MIC_TYPE_SINGLE_STEREO[]			= 'SINGLE STEREO'


// DVX Filter Types
cDVX_EQ_FILTER_TYPE_BELL[]			= 'BELL'
cDVX_EQ_FILTER_TYPE_BAND_PASS[]			= 'BAND PASS'
cDVX_EQ_FILTER_TYPE_BAND_STOP[]			= 'BAND STOP'
cDVX_EQ_FILTER_TYPE_HIGH_PASS[]			= 'HIGH PASS'
cDVX_EQ_FILTER_TYPE_LOW_PASS[]			= 'LOW PASS'
cDVX_EQ_FILTER_TYPE_TREBLE_SHELF[]		= 'TREBLE SHELF'
cDVX_EQ_FILTER_TYPE_BASS_SHELF[]		= 'BASS SHELF'

// DVX EQ Modes
cDVX_EQ_MODE_OFF[]				= 'OFF'
cDVX_EQ_MODE_VOICE[]				= 'VOICE'
cDVX_EQ_MODE_MUSIC[]				= 'MUSIC'
cDVX_EQ_MODE_MOVIE[]				= 'MOVIE'

// DVX Test Tones
cDVX_TEST_TONE_FREQUENCY_OFF[]			= 'OFF'
cDVX_TEST_TONE_FREQUENCY_60_HZ[]		= '60Hz'
cDVX_TEST_TONE_FREQUENCY_250_HZ[]		= '250Hz'
cDVX_TEST_TONE_FREQUENCY_400_HZ[]		= '400Hz'
cDVX_TEST_TONE_FREQUENCY_1_KHZ[]		= '1KHz'
cDVX_TEST_TONE_FREQUENCY_3_KHZ[]		= '3KHz'
cDVX_TEST_TONE_FREQUENCY_5_KHZ[]		= '5KHz'
cDVX_TEST_TONE_FREQUENCY_10_KHZ[]		= '10KHz'
cDVX_TEST_TONE_FREQUENCY_PINK_NOISE[]		= 'PINK NOISE'
cDVX_TEST_TONE_FREQUENCY_WHITE_NOISE[]		= 'WHITE NOISE'

// DVX HDMI Audio Output Options
cDVX_HDMI_AUDIO_OUTPUT_OFF[]			= 'OFF'
cDVX_HDMI_AUDIO_OUTPUT_INPUT_PASS_THRU[]	= 'INPUT PASS-THRU'
cDVX_HDMI_AUDIO_OUTPUT_ANALOG_OUT_1[]		= 'ANALOG OUT 1'
cDVX_HDMI_AUDIO_OUTPUT_ANALOG_OUT_2[]		= 'ANALOG OUT 2'
cDVX_HDMI_AUDIO_OUTPUT_ANALOG_OUT_3[]		= 'ANALOG OUT 3'
cDVX_HDMI_AUDIO_OUTPUT_ANALOG_OUT_4[]		= 'ANALOG OUT 4'

// DVX SP/DIF Audio Output Options
cDVX_SPDIF_AUDIO_OUTPUT_OFF[]			= 'OFF'
cDVX_SPDIF_AUDIO_OUTPUT_HDMI_OUT_1[]		= 'HDMI OUT 1'
cDVX_SPDIF_AUDIO_OUTPUT_HDMI_OUT_2[]		= 'HDMI OUT 2'
cDVX_SPDIF_AUDIO_OUTPUT_HDMI_OUT_3[]		= 'HDMI OUT 3'
cDVX_SPDIF_AUDIO_OUTPUT_HDMI_OUT_4[]		= 'HDMI OUT 4'
cDVX_SPDIF_AUDIO_OUTPUT_ANALOG_OUT_1[]		= 'ANALOG OUT 1'
cDVX_SPDIF_AUDIO_OUTPUT_ANALOG_OUT_2[]		= 'ANALOG OUT 2'
cDVX_SPDIF_AUDIO_OUTPUT_ANALOG_OUT_3[]		= 'ANALOG OUT 3'
cDVX_SPDIF_AUDIO_OUTPUT_ANALOG_OUT_4[]		= 'ANALOG OUT 4'

// DVX Mix Input
//cDVX_MIX_INPUT_LINE[]				= 'LINE'
//cDVX_MIX_INPUT_MIC1[]				= 'MIC1'
//cDVX_MIX_INPUT_MIC2[]				= 'MIC2'
// DVX Mix Input
nDVX_MIX_INPUT_LINE				= 1
nDVX_MIX_INPUT_MIC1				= 2
nDVX_MIX_INPUT_MIC2				= 3

nDVX_MIX_OUTPUT_1_AMP				= 1
nDVX_MIX_OUTPUT_2_LINE				= 2
nDVX_MIX_OUTPUT_3_LINE				= 3
nDVX_MIX_OUTPUT_4_LINE				= 4

// DVX Signal Status
cDVX_SIGNAL_STATUS_NO_SIGNAL[]			= 'NO SIGNAL'
cDVX_SIGNAL_STATUS_UNKNOWN[]			= 'UNKNOWN'
cDVX_SIGNAL_STATUS_VALID_SIGNAL[]		= 'VALID SIGNAL'


// DVX DXLink Ethernet Modes
cDVX_DXLINK_ETHERNET_OFF[]			= 'off'
cDVX_DXLINK_ETHERNET_AUTO[]			= 'auto'








///////////////////////////////////////////////
//////////       Signal types        //////////
///////////////////////////////////////////////
#if_not_defined cSIGNAL_TYPE_AUDIO
cSIGNAL_TYPE_AUDIO[]				= 'AUDIO'
#end_if

#if_not_defined cSIGNAL_TYPE_VIDEO
cSIGNAL_TYPE_VIDEO[]				= 'VIDEO'
#end_if

#if_not_defined cSIGNAL_TYPE_ALL
cSIGNAL_TYPE_ALL[]				= 'ALL'
#end_if

/////////////////////////////////////////////////////
//////////       Video signal types        //////////
/////////////////////////////////////////////////////
#if_not_defined cVIDEO_SIGNAL_FORMAT_HDMI
cVIDEO_SIGNAL_FORMAT_HDMI[]			= 'HDMI'
#end_if

#if_not_defined cVIDEO_SIGNAL_FORMAT_VGA
cVIDEO_SIGNAL_FORMAT_VGA[]			= 'VGA'
#end_if

#if_not_defined cVIDEO_SIGNAL_FORMAT_DVI
cVIDEO_SIGNAL_FORMAT_DVI[]			= 'DVI'
#end_if

#if_not_defined cVIDEO_SIGNAL_FORMAT_COMPOSITE
cVIDEO_SIGNAL_FORMAT_COMPOSITE[]		= 'COMPOSITE'
#end_if

#if_not_defined cVIDEO_SIGNAL_FORMAT_COMPONENT
cVIDEO_SIGNAL_FORMAT_COMPONENT[]		= 'COMPONENT'
#end_if

#if_not_defined cVIDEO_SIGNAL_FORMAT_SVIDEO
cVIDEO_SIGNAL_FORMAT_SVIDEO[]			= 'S-VIDEO'
#end_if

#if_not_defined cVIDEO_SIGNAL_FORMAT_RGB
cVIDEO_SIGNAL_FORMAT_RGB[]			= 'RGB'
#end_if

/////////////////////////////////////////////////////
//////////       Audio signal types        //////////
/////////////////////////////////////////////////////
#if_not_defined cAUDIO_SIGNAL_FORMAT_ANALOG
cAUDIO_SIGNAL_FORMAT_ANALOG[]			= 'ANALOG'
#end_if

#if_not_defined cVIDEO_SIGNAL_FORMAT_DIGITAL
cVIDEO_SIGNAL_FORMAT_DIGITAL[]			= 'DIGITAL'
#end_if




/////////////////////////////////////////////////////
//////////       Other useful values       //////////
/////////////////////////////////////////////////////

// Enable/Disable
#if_not_defined cENABLE
cENABLE[]					= 'ENABLE'
#end_if

#if_not_defined cDISABLE
cDISABLE[]					= 'DISABLE'
#end_if

// Enabled/Disabled
#if_not_defined cENABLED
cENABLED[]					= 'ENABLED'
#end_if

#if_not_defined cDISABLED
cDISABLED[]					= 'DISABLED'
#end_if

// Off/On
#if_not_defined cOFF
cOFF[]						= 'OFF'
#end_if

#if_not_defined cON
cON[]						= 'ON'
#end_if








define_constant

char cDvxCmdHeaderSeperator[] = '-'
char cDvxCmdParamaterSeperator[] = ','




// Name   : ==== DvxParseCmdHeader ====
// Purpose: To parse out parameters from module send_command or send_string
// Params : (1) IN/OUT  - sndcmd/str data
// Returns: parsed property/method name, still includes the leading '?' and/or trailing command seperating caharacter if present
// Notes  : Parses the strings sent to or from modules extracting the command header.
//          Command separating character assumed to be '-'
//
define_function char[100] fnDvxParseCmdHeader(CHAR cCmd[])
{
  stack_var char cCmdHeader[100]
  
  cCmdHeader = remove_string(cCmd,cDvxCmdHeaderSeperator,1)
  
  return cCmdHeader
}





// Name   : ==== DvxParseCmdParam ====
// Purpose: To parse out parameters from received DVX send_command or send_string
// Params : (1) IN/OUT  - sndcmd/str data
// Returns: Parse parameter from the front of the string not including the separator
// Notes  : Parses the strings sent to or from modules extracting the parameters.
//          A single param is picked of the cmd string and removed, through the separator.
//          The separator is NOT returned from the function.
//          If the first character of the param is a double quote, the function will 
//          remove up to (and including) the next double-quote and the separator without spaces.
//          The double quotes will then be stripped from the parameter before it is returned.
//          If the double-quote/separator sequence is not found, the function will remove up to (and including)
//          the separator character and the leading double quote will NOT be removed.
//          If the separator is not found, the entire remained of the command is removed.
//          Parameter separating character assumed to be ','
//
define_function char[100] fnDvxParseCmdParam(CHAR cCmd[])
{
    stack_var char cTemp[100]
    stack_var char cSep[1]
    stack_var char chC
    stack_var integer nLoop
    stack_var integer nState
    stack_var char bInquotes
    stack_var char bDone
    
    // Reset state
    nState = 1; //ST_START
    bInquotes = FALSE;
    bDone = FALSE;

    // Loop the command and escape it
    for (nLoop = 1; nLoop <= length_array(cCmd); nLoop++)
    {
	// Grab characters and process it based on state machine
	chC = cCmd[nLoop];
	switch (nState)
	{
	    // Start or string: end of string bails us out
	    case 1: //ST_START
	    {
		// Starts with a quote?
		// If so, skip it, set flag and move to collect.
		if (chC == '"')
		{
		    nState = 2; //ST_COLLECT
		    bInquotes = TRUE;
		}
		
		// Starts with a comma?  Empty param
		else if (chC == cDvxCmdParamaterSeperator)
		{
		    // I am done
		    bDone = TRUE;
		}
		
		// Not a quote or a comma?  Add it to the string and move to collection
		else
		{
		    cTemp = "cTemp, chC"
		    nState = 2; //ST_COLLECT
		}
		break;
	    }
	    
	    // Collect string.
	    case 2: //ST_COLLECT
	    {
		// If in quotes, just grab the characters
		if (bInquotes)
		{
		    // Ah...found a quote, jump to end quote state
		    if (chC == '"' )
		    {
			nState = 3; //ST_END_QUOTE
			break;
		    }
		}
		
		// Not in quotes, look for commas
		else if (chC == cDvxCmdParamaterSeperator)
		{
		    // I am done
		    bDone = TRUE;
		    break;
		}
		
		// Not in quotes, look for quotes (this would be wrong)
		// But instead of barfing, I will just add the quote (below)
		else if (chC == '"' )
		{
		    // I will check to see if it should be escaped
		    if (nLoop < length_array(cCmd))
		    {
			// If this is 2 uqotes back to back, just include the one
			if (cCmd[nLoop+1] = '"')
			    nLoop++;
		    }
		}
		
		// Add character to collection
		cTemp = "cTemp,chC"
		break;
	    }
	    
	    // End Quote
	    case 3: //ST_END_QUOTE
	    {
		// Hit a comma
		if (chC == cDvxCmdParamaterSeperator)
		{
		    // I am done
		    bDone = TRUE;
		}
		
		// OK, found a quote right after another quote.  So this is escaped.
		else if (chC == '"')
		{
		    cTemp = "cTemp,chC"
		    nState = 2; //ST_COLLECT
		}
		break;
	    }
	}

	// OK, if end of string or done, process and exit
	IF (bDone == TRUE || nLoop >= length_array(cCmd))
	{
	    // remove cTemp from cCmd
	    cCmd = mid_string(cCmd, nLoop + 1, length_string(cCmd) - nLoop)
	    
	    // cTemp is done
	    return cTemp;
	}
    }

  // Well...we should never hit this
  return "";
}





















#end_if // __DVX_API__