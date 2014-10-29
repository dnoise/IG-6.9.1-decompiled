// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.photo.crop;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;

public final class a
{

    private final Bundle a = new Bundle();

    private a(Context context)
    {
        a.putBoolean("isCrop", true);
        Uri uri = Uri.fromFile(com.instagram.common.y.a.b(context));
        a.putParcelable("output", uri);
    }

    public static a a(Context context, Uri uri)
    {
        a a1 = (new a(context)).a(uri).b(true);
        char c1;
        if (com.instagram.cliffjumper.util.a.a.a())
        {
            c1 = '\u0400';
        } else
        {
            c1 = '\u0800';
        }
        return a1.b(c1).b();
    }

    private a a(Uri uri)
    {
        a.putParcelable("CropFragment.imageUri", uri);
        return this;
    }

    private a b()
    {
        a.putInt("CropFragment.smallestDimension", 200);
        return this;
    }

    public static a b(Context context, Uri uri)
    {
        return (new a(context)).a(uri).b(false).c();
    }

    private a b(boolean flag)
    {
        a.putBoolean("CropFragment.requestCropRect", flag);
        return this;
    }

    private a c()
    {
        a.putBoolean("CropFragment.isAvatar", true);
        return this;
    }

    public final Bundle a()
    {
        return a;
    }

    public final a a(int i)
    {
        a.putInt("mediaSource", i);
        return this;
    }

    public final a a(String s)
    {
        a.putString("pendingMediaKey", s);
        return this;
    }

    public final a a(boolean flag)
    {
        a.putBoolean("directShare", flag);
        return this;
    }

    public final a b(int i)
    {
        a.putInt("CropFragment.largestDimension", i);
        return this;
    }
}
