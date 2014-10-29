// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.realtimeclient;


// Referenced classes of package com.instagram.realtimeclient:
//            RealtimePatchEvent

public interface RealtimeEventHandler
{

    public abstract void onConnectionStatusChanged(Status status);

    public abstract void onFeedRefreshRequested();

    public abstract void onPatchEvent(RealtimePatchEvent realtimepatchevent);
}
