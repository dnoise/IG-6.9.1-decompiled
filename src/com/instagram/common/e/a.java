// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.e;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.net.Uri;
import android.view.View;
import android.view.Window;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public final class a
{

    public static Bitmap a(Activity activity)
    {
        if (activity.isChild())
        {
            activity = activity.getParent();
        }
        View view = activity.getWindow().getDecorView().findViewById(0x1020002);
        Bitmap bitmap;
        try
        {
            bitmap = Bitmap.createBitmap(view.getWidth(), view.getHeight(), android.graphics.Bitmap.Config.RGB_565);
            Canvas canvas = new Canvas(bitmap);
            canvas.drawColor(-1);
            view.draw(canvas);
        }
        catch (OutOfMemoryError outofmemoryerror)
        {
            return null;
        }
        return bitmap;
    }

    public static Uri a(Bitmap bitmap, File file)
    {
        FileOutputStream fileoutputstream = new FileOutputStream(file);
        Uri uri;
        bitmap.compress(android.graphics.Bitmap.CompressFormat.PNG, 100, fileoutputstream);
        fileoutputstream.flush();
        uri = Uri.fromFile(file);
        com.instagram.common.l.c.a.a(fileoutputstream, false);
        return uri;
        Exception exception;
        exception;
        try
        {
            com.instagram.common.l.c.a.a(fileoutputstream, false);
            throw exception;
        }
        catch (Exception exception1)
        {
            com.facebook.e.a.a.a("FlyTrapUtil", "Couldn't save screenshot", exception1);
        }
        return null;
    }

    public static Uri a(File file)
    {
        FileOutputStream fileoutputstream = new FileOutputStream(file);
        Uri uri;
        a(((OutputStream) (fileoutputstream)));
        uri = Uri.fromFile(file);
        com.instagram.common.l.c.a.a(fileoutputstream, false);
        return uri;
        Exception exception;
        exception;
        try
        {
            com.instagram.common.l.c.a.a(fileoutputstream, false);
            throw exception;
        }
        catch (Exception exception1)
        {
            com.facebook.e.a.a.a("FlyTrapUtil", "Unable to dump logcat", exception1);
        }
        return null;
    }

    private static void a(OutputStream outputstream)
    {
        PrintWriter printwriter = new PrintWriter(outputstream);
        BufferedReader bufferedreader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec("logcat -d -v time CurlLogger ApiHttpClient *:S").getInputStream()));
_L1:
        String s = bufferedreader.readLine();
label0:
        {
            if (s == null)
            {
                break label0;
            }
            try
            {
                printwriter.println(s);
            }
            catch (IOException ioexception)
            {
                com.facebook.e.a.a.a("FlyTrapUtil", "collectLogcat could not retrieve data.", ioexception);
                return;
            }
        }
          goto _L1
        printwriter.flush();
        return;
    }

    public static Uri b(File file)
    {
        FileOutputStream fileoutputstream = new FileOutputStream(file);
        Uri uri;
        b(((OutputStream) (fileoutputstream)));
        uri = Uri.fromFile(file);
        com.instagram.common.l.c.a.a(fileoutputstream, false);
        return uri;
        Exception exception;
        exception;
        try
        {
            com.instagram.common.l.c.a.a(fileoutputstream, false);
            throw exception;
        }
        catch (Exception exception1)
        {
            com.facebook.e.a.a.a("FlyTrapUtil", "Unable to dump stack trace", exception1);
        }
        return null;
    }

    private static void b(OutputStream outputstream)
    {
        PrintWriter printwriter = new PrintWriter(outputstream);
        for (Iterator iterator = Thread.getAllStackTraces().entrySet().iterator(); iterator.hasNext(); printwriter.println())
        {
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            printwriter.print(entry.getKey());
            printwriter.print(" ");
            printwriter.print(((Thread)entry.getKey()).getState());
            printwriter.println(":");
            StackTraceElement astacktraceelement[] = (StackTraceElement[])entry.getValue();
            int i = astacktraceelement.length;
            for (int j = 0; j < i; j++)
            {
                printwriter.println(astacktraceelement[j]);
            }

        }

        printwriter.flush();
    }
}
