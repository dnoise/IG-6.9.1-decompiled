// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.realtimeclient;

import java.util.Collection;

// Referenced classes of package com.instagram.realtimeclient:
//            RealtimeEvent

public class RealtimePatchEvent extends RealtimeEvent
{

    public String id;
    public Collection operations;
    public String sequence;
    public String topic;

    public RealtimePatchEvent()
    {
    }

    public static int compareSequences(String s, String s1)
    {
        if (s != null) goto _L2; else goto _L1
_L1:
        if (s1 != null) goto _L4; else goto _L3
_L3:
        int i = 0;
_L6:
        return i;
_L4:
        return -1;
_L2:
        if (s1 == null)
        {
            return 1;
        }
        i = s.length() - s1.length();
        if (i == 0)
        {
            return s.compareTo(s1);
        }
        if (true) goto _L6; else goto _L5
_L5:
    }
}
