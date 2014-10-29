// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.util;


// Referenced classes of package com.instagram.cliffjumper.util:
//            Matrix3

public final class c
{

    public static void a(float f, Matrix3 matrix3)
    {
        float f1 = 0.01745329F * f;
        float f2 = 1.0F - Math.abs(0.4142136F * (float)Math.sin(2.0F * f1));
        matrix3.a();
        matrix3.b(0.5F, 0.5F);
        matrix3.a(f1);
        matrix3.a(f2, f2);
        matrix3.b(-0.5F, -0.5F);
    }
}
