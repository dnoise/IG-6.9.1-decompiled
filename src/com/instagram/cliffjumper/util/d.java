// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.util;

import android.graphics.Rect;

public final class d
{

    public static Rect a(int i, int j, int k, boolean flag, int l, int i1, int j1)
    {
        if (flag)
        {
            switch (k)
            {
            default:
                return new Rect(i1, 0, i, l);

            case 180: 
            case 270: 
                return new Rect(i1, j1, i, j);
            }
        }
        switch (k)
        {
        default:
            return new Rect(0, 0, l, l);

        case 180: 
        case 270: 
            return new Rect(0, j1, l, j);
        }
    }

    public static Rect b(int i, int j, int k, boolean flag, int l, int i1, int j1)
    {
        if (flag)
        {
            switch (k)
            {
            default:
                return new Rect(0, 0, l, l);

            case 90: // 'Z'
                return new Rect(i1, j1, i, j);

            case 0: // '\0'
            case 270: 
                return new Rect(i1, 0, i, l);
            }
        }
        switch (k)
        {
        default:
            return new Rect(0, 0, l, l);

        case 180: 
            return new Rect(i1, 0, i, l);

        case 270: 
            return new Rect(0, j1, l, j);
        }
    }
}
