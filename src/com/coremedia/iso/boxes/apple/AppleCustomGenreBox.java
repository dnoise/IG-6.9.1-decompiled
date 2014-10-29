// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes.apple;

import com.coremedia.iso.k;

// Referenced classes of package com.coremedia.iso.boxes.apple:
//            AbstractAppleMetaDataBox, AppleDataBox

public final class AppleCustomGenreBox extends AbstractAppleMetaDataBox
{

    public static final String TYPE = "\251gen";

    public AppleCustomGenreBox()
    {
        super("\251gen");
        appleDataBox = AppleDataBox.getStringAppleDataBox();
    }

    public final String getGenre()
    {
        return k.a(appleDataBox.getData());
    }

    public final void setGenre(String s)
    {
        appleDataBox = new AppleDataBox();
        appleDataBox.setVersion(0);
        appleDataBox.setFlags(1);
        appleDataBox.setFourBytes(new byte[4]);
        appleDataBox.setData(k.a(s));
    }
}
