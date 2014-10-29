// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.realtimeclient;

import android.os.Handler;
import com.facebook.e.a.a;
import com.fasterxml.jackson.databind.ObjectMapper;
import java.io.IOException;

// Referenced classes of package com.instagram.realtimeclient:
//            RealtimeClient, RealtimeEvent

class val.message
    implements Runnable
{

    final RealtimeClient this$0;
    final String val$message;

    public void run()
    {
        try
        {
            final RealtimeEvent event = (RealtimeEvent)RealtimeClient.access$300().readValue(val$message, com/instagram/realtimeclient/RealtimeEvent);
            class _cls1
                implements Runnable
            {

                final RealtimeClient._cls7 this$1;
                final RealtimeEvent val$event;

                public void run()
                {
                    RealtimeClient.access$400(this$0, event);
                }

            _cls1()
            {
                this$1 = RealtimeClient._cls7.this;
                event = realtimeevent;
                super();
            }
            }

            RealtimeClient.access$500(RealtimeClient.this).post(new _cls1());
            return;
        }
        catch (IOException ioexception)
        {
            a.a(getClass(), "Could not parse message", ioexception);
        }
    }

    _cls1()
    {
        this$0 = final_realtimeclient;
        val$message = String.this;
        super();
    }
}
