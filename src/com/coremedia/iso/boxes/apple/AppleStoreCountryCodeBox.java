// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes.apple;

import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.coremedia.iso.boxes.apple:
//            AbstractAppleMetaDataBox, AppleDataBox

public class AppleStoreCountryCodeBox extends AbstractAppleMetaDataBox
{

    public static final String TYPE = "sfID";
    private static Map countryCodes;

    public AppleStoreCountryCodeBox()
    {
        super("sfID");
        appleDataBox = AppleDataBox.getUint32AppleDataBox();
    }

    public String getReadableValue()
    {
        if (countryCodes.containsKey(getValue()))
        {
            return (String)countryCodes.get(getValue());
        } else
        {
            return (new StringBuilder("unknown country code ")).append(getValue()).toString();
        }
    }

    static 
    {
        HashMap hashmap = new HashMap();
        countryCodes = hashmap;
        hashmap.put("143460", "Australia");
        countryCodes.put("143445", "Austria");
        countryCodes.put("143446", "Belgium");
        countryCodes.put("143455", "Canada");
        countryCodes.put("143458", "Denmark");
        countryCodes.put("143447", "Finland");
        countryCodes.put("143442", "France");
        countryCodes.put("143443", "Germany");
        countryCodes.put("143448", "Greece");
        countryCodes.put("143449", "Ireland");
        countryCodes.put("143450", "Italy");
        countryCodes.put("143462", "Japan");
        countryCodes.put("143451", "Luxembourg");
        countryCodes.put("143452", "Netherlands");
        countryCodes.put("143461", "New Zealand");
        countryCodes.put("143457", "Norway");
        countryCodes.put("143453", "Portugal");
        countryCodes.put("143454", "Spain");
        countryCodes.put("143456", "Sweden");
        countryCodes.put("143459", "Switzerland");
        countryCodes.put("143444", "United Kingdom");
        countryCodes.put("143441", "United States");
    }
}
