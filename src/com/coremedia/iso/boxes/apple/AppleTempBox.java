// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes.apple;


// Referenced classes of package com.coremedia.iso.boxes.apple:
//            AbstractAppleMetaDataBox, AppleDataBox

public final class AppleTempBox extends AbstractAppleMetaDataBox
{

    public static final String TYPE = "tmpo";

    public AppleTempBox()
    {
        super("tmpo");
        appleDataBox = AppleDataBox.getUint16AppleDataBox();
    }

    public final int getTempo()
    {
        return appleDataBox.getData()[1];
    }

    public final void setTempo(int i)
    {
        appleDataBox = new AppleDataBox();
        appleDataBox.setVersion(0);
        appleDataBox.setFlags(21);
        appleDataBox.setFourBytes(new byte[4]);
        AppleDataBox appledatabox = appleDataBox;
        byte abyte0[] = new byte[2];
        abyte0[0] = 0;
        abyte0[1] = (byte)(i & 0xff);
        appledatabox.setData(abyte0);
    }
}
