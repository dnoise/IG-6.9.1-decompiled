// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.realtimeclient;


// Referenced classes of package com.instagram.realtimeclient:
//            RealtimeSubscription

class RealtimeSubscribeCommand
{

    String auth;
    String command;
    String sequence;
    String topic;

    RealtimeSubscribeCommand()
    {
    }

    public RealtimeSubscribeCommand(RealtimeSubscription realtimesubscription)
    {
        command = "subscribe";
        topic = realtimesubscription.getTopic();
        sequence = realtimesubscription.getSequence();
        auth = realtimesubscription.getAuthToken();
    }
}
