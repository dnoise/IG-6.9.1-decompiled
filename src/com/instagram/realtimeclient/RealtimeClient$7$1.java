// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.realtimeclient;


// Referenced classes of package com.instagram.realtimeclient:
//            RealtimeClient, RealtimeEvent

class val.event
    implements Runnable
{

    final val.event this$1;
    final RealtimeEvent val$event;

    public void run()
    {
        RealtimeClient.access$400(_fld0, val$event);
    }

    ()
    {
        this$1 = final_;
        val$event = RealtimeEvent.this;
        super();
    }
}
