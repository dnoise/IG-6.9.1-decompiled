// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes.apple;


// Referenced classes of package com.coremedia.iso.boxes.apple:
//            AbstractAppleMetaDataBox, AppleDataBox

public class AppleStoreAccountTypeBox extends AbstractAppleMetaDataBox
{

    public static final String TYPE = "akID";

    public AppleStoreAccountTypeBox()
    {
        super("akID");
        appleDataBox = AppleDataBox.getUint8AppleDataBox();
    }

    public String getReadableValue()
    {
        switch (appleDataBox.getData()[0])
        {
        default:
            return "unknown Account";

        case 0: // '\0'
            return "iTunes Account";

        case 1: // '\001'
            return "AOL Account";
        }
    }
}
