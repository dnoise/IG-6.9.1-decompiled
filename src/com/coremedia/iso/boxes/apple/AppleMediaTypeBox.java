// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes.apple;

import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.coremedia.iso.boxes.apple:
//            AbstractAppleMetaDataBox, AppleDataBox

public class AppleMediaTypeBox extends AbstractAppleMetaDataBox
{

    public static final String TYPE = "stik";
    private static Map mediaTypes;

    public AppleMediaTypeBox()
    {
        super("stik");
        appleDataBox = AppleDataBox.getUint8AppleDataBox();
    }

    public String getReadableValue()
    {
        if (mediaTypes.containsKey(getValue()))
        {
            return (String)mediaTypes.get(getValue());
        } else
        {
            return (new StringBuilder("unknown media type ")).append(getValue()).toString();
        }
    }

    static 
    {
        HashMap hashmap = new HashMap();
        mediaTypes = hashmap;
        hashmap.put("0", "Movie (is now 9)");
        mediaTypes.put("1", "Normal (Music)");
        mediaTypes.put("2", "Audiobook");
        mediaTypes.put("6", "Music Video");
        mediaTypes.put("9", "Movie");
        mediaTypes.put("10", "TV Show");
        mediaTypes.put("11", "Booklet");
        mediaTypes.put("14", "Ringtone");
    }
}
