CustomDisplay is based on [nvapi](https://github.com/NVIDIA/nvapi) project. It can custom the display resolustion of the Nvidia gpu. **It only works on Nvidia gpu including vgpu types**.

## Build

This project is powerd by CMake. Install CMake first.

```powershell
$ .\build.bat -b
```

Change TOOLSET、VS_VER or SDK_VER as you want.
## Usage

```powershell
$ CustomDisplay.exe [width]x[height] [--revert]
    example: CustomTiming.exe 3000x2000
    example: CustomTiming.exe 3000x2000 --revert

$ CustomDisplay.exe 3000x2000 --revert
Applying custom display settings for 2100x1200
Reverting back to default display settings
//////////////////////////////////////////////////

Number of Displays in the system =  1
Custom Timing to be tried: 2100 X 1200 @ 60.00 hz
NvAPI_DISP_TryCustomDisplay().....Success!

NvAPI_DISP_SaveCustomDisplay().....Success!
NvAPI_DISP_RevertCustomDisplayTrial().....Success!
//////////////////////////////////////////////////

Custom_Timing successful!
Press any key to exit...
```

The resolution will save to display configuration. If you want revert back to previous display configuration use `--revert` option.
## REFERENCE

https://forums.developer.nvidia.com/t/custom-timings-resolution-via-nvapi-not-working/69763