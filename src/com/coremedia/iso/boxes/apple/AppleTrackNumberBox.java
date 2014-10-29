// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes.apple;


// Referenced classes of package com.coremedia.iso.boxes.apple:
//            AbstractAppleMetaDataBox, AppleDataBox

public final class AppleTrackNumberBox extends AbstractAppleMetaDataBox
{

    public static final String TYPE = "trkn";

    public AppleTrackNumberBox()
    {
        super("trkn");
    }

    public final byte getNumberOfTracks()
    {
        return appleDataBox.getData()[5];
    }

    public final byte getTrackNumber()
    {
        return appleDataBox.getData()[3];
    }

    public final void setNumberOfTracks(byte byte0)
    {
        byte abyte0[] = appleDataBox.getData();
        abyte0[5] = byte0;
        appleDataBox.setData(abyte0);
    }

    public final void setTrackNumber(byte byte0)
    {
        byte abyte0[] = appleDataBox.getData();
        abyte0[3] = byte0;
        appleDataBox.setData(abyte0);
    }

    public final void setTrackNumber(byte byte0, byte byte1)
    {
        appleDataBox = new AppleDataBox();
        appleDataBox.setVersion(0);
        appleDataBox.setFlags(0);
        appleDataBox.setFourBytes(new byte[4]);
        appleDataBox.setData(new byte[] {
            0, 0, 0, byte0, 0, byte1, 0, 0
        });
    }
}
