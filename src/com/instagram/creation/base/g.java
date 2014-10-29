// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.base;

import android.content.Context;
import android.media.MediaScannerConnection;
import android.net.Uri;
import java.util.Queue;

final class g
    implements android.media.MediaScannerConnection.MediaScannerConnectionClient
{

    private Queue a;
    private String b;
    private MediaScannerConnection c;

    public g(Queue queue, String s)
    {
        a = queue;
        b = s;
    }

    private void a()
    {
        if (a.isEmpty())
        {
            c.disconnect();
            return;
        } else
        {
            String s = (String)a.remove();
            c.scanFile(s, b);
            return;
        }
    }

    public final void a(Context context)
    {
        c = new MediaScannerConnection(context, this);
        c.connect();
    }

    public final void onMediaScannerConnected()
    {
        a();
    }

    public final void onScanCompleted(String s, Uri uri)
    {
        a();
    }
}
