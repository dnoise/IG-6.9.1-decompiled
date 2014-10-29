// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes.apple;

import java.util.logging.Logger;

// Referenced classes of package com.coremedia.iso.boxes.apple:
//            AbstractAppleMetaDataBox, AppleDataBox

public final class AppleCoverBox extends AbstractAppleMetaDataBox
{

    private static Logger LOG = Logger.getLogger(com/coremedia/iso/boxes/apple/AppleCoverBox.getName());
    public static final String TYPE = "covr";

    public AppleCoverBox()
    {
        super("covr");
    }

    public final String getValue()
    {
        return "---";
    }

    public final void setJpg(byte abyte0[])
    {
        appleDataBox = new AppleDataBox();
        appleDataBox.setVersion(0);
        appleDataBox.setFlags(13);
        appleDataBox.setFourBytes(new byte[4]);
        appleDataBox.setData(abyte0);
    }

    public final void setPng(byte abyte0[])
    {
        appleDataBox = new AppleDataBox();
        appleDataBox.setVersion(0);
        appleDataBox.setFlags(14);
        appleDataBox.setFourBytes(new byte[4]);
        appleDataBox.setData(abyte0);
    }

    public final void setValue(String s)
    {
        LOG.warning("---");
    }

}
