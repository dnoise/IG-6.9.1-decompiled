// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.realtimeclient;


// Referenced classes of package com.instagram.realtimeclient:
//            RealtimeClient, RealtimeEventHandler

class this._cls0
    implements Runnable
{

    final RealtimeClient this$0;

    public void run()
    {
        RealtimeClient.access$100(RealtimeClient.this).onFeedRefreshRequested();
    }

    ler()
    {
        this$0 = RealtimeClient.this;
        super();
    }
}
