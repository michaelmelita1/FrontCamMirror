%hook CAMCaptureCapabilities
-(BOOL)isMirroredFrontCapturesSupported {
    return YES;
}
%end
