// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes.apple;


// Referenced classes of package com.coremedia.iso.boxes.apple:
//            AbstractAppleMetaDataBox, AppleDataBox

public final class AppleTrackAuthorBox extends AbstractAppleMetaDataBox
{

    public static final String TYPE = "\251wrt";

    public AppleTrackAuthorBox()
    {
        super("\251wrt");
        appleDataBox = AppleDataBox.getStringAppleDataBox();
    }
}
