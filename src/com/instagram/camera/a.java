// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.camera;

import android.content.pm.PackageManager;

public final class a
{

    public static boolean a(PackageManager packagemanager)
    {
        return packagemanager.hasSystemFeature("android.hardware.camera") || packagemanager.hasSystemFeature("android.hardware.camera.front");
    }
}
