// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes.apple;


// Referenced classes of package com.coremedia.iso.boxes.apple:
//            AbstractAppleMetaDataBox, AppleDataBox

public final class AppleArtistBox extends AbstractAppleMetaDataBox
{

    public static final String TYPE = "\251ART";

    public AppleArtistBox()
    {
        super("\251ART");
        appleDataBox = AppleDataBox.getStringAppleDataBox();
    }
}
