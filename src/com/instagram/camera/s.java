// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.camera;

import android.content.res.AssetFileDescriptor;
import android.media.MediaPlayer;
import com.facebook.e.a.a;
import java.io.IOException;

public final class s
    implements Runnable
{

    private Thread a;
    private MediaPlayer b;
    private int c;
    private boolean d;
    private AssetFileDescriptor e;
    private int f;

    public s(AssetFileDescriptor assetfiledescriptor)
    {
        c = 0;
        e = assetfiledescriptor;
        f = 3;
    }

    public final void a()
    {
        if (a == null)
        {
            a = new Thread(this);
            a.start();
        }
        this;
        JVM INSTR monitorenter ;
        c = 1 + c;
        notifyAll();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public final void b()
    {
        if (a == null)
        {
            break MISSING_BLOCK_LABEL_32;
        }
        this;
        JVM INSTR monitorenter ;
        d = true;
        notifyAll();
        this;
        JVM INSTR monitorexit ;
        IOException ioexception;
        Exception exception;
        try
        {
            a.join();
        }
        catch (InterruptedException interruptedexception) { }
        a = null;
        if (e != null)
        {
            try
            {
                e.close();
            }
            // Misplaced declaration of an exception variable
            catch (IOException ioexception) { }
            e = null;
        }
        if (b != null)
        {
            b.release();
            b = null;
        }
        return;
        exception;
        throw exception;
    }

    public final void run()
    {
_L4:
        if (b != null)
        {
            break MISSING_BLOCK_LABEL_74;
        }
        MediaPlayer mediaplayer = new MediaPlayer();
        mediaplayer.setAudioStreamType(f);
        mediaplayer.setDataSource(e.getFileDescriptor(), e.getStartOffset(), e.getLength());
        mediaplayer.setLooping(false);
        mediaplayer.prepare();
        b = mediaplayer;
        e.close();
        e = null;
        this;
        JVM INSTR monitorenter ;
_L2:
        if (!d)
        {
            break MISSING_BLOCK_LABEL_86;
        }
        this;
        JVM INSTR monitorexit ;
        return;
        if (c > 0)
        {
            break MISSING_BLOCK_LABEL_117;
        }
        wait();
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception1;
        exception1;
        this;
        JVM INSTR monitorexit ;
        Exception exception;
        throw exception1;
        c = -1 + c;
        this;
        JVM INSTR monitorexit ;
        try
        {
            b.start();
        }
        // Misplaced declaration of an exception variable
        catch (Exception exception)
        {
            com.facebook.e.a.a.a("SoundPlayer", "Error playing sound", exception);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }
}
