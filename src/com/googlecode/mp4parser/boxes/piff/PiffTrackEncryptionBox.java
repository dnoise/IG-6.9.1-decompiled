// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.piff;

import com.googlecode.mp4parser.boxes.AbstractTrackEncryptionBox;

public class PiffTrackEncryptionBox extends AbstractTrackEncryptionBox
{

    public PiffTrackEncryptionBox()
    {
        super("uuid");
    }

    public int getFlags()
    {
        return 0;
    }

    public byte[] getUserType()
    {
        return (new byte[] {
            -119, 116, -37, -50, 123, -25, 76, 81, -124, -7, 
            113, 72, -7, -120, 37, 84
        });
    }
}
