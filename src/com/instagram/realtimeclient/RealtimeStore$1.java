// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.realtimeclient;

import java.util.Comparator;

// Referenced classes of package com.instagram.realtimeclient:
//            RealtimeOperation, RealtimeStore

class this._cls0
    implements Comparator
{

    final RealtimeStore this$0;

    public int compare(RealtimeOperation realtimeoperation, RealtimeOperation realtimeoperation1)
    {
        return realtimeoperation.path.length() - realtimeoperation1.path.length();
    }

    public volatile int compare(Object obj, Object obj1)
    {
        return compare((RealtimeOperation)obj, (RealtimeOperation)obj1);
    }

    n()
    {
        this$0 = RealtimeStore.this;
        super();
    }
}
