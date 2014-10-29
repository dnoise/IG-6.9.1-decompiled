// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.edit.photo.straightening;


// Referenced classes of package com.instagram.cliffjumper.edit.photo.straightening:
//            e

class d extends Enum
{

    public static final d a;
    public static final d b;
    public static final d c;
    private static final d d[];

    private d(String s, int i)
    {
        super(s, i);
    }

    d(String s, int i, byte byte0)
    {
        this(s, 2);
    }

    public static d valueOf(String s)
    {
        return (d)Enum.valueOf(com/instagram/cliffjumper/edit/photo/straightening/d, s);
    }

    public static d[] values()
    {
        return (d[])d.clone();
    }

    public d a()
    {
        return values()[1 + ordinal()];
    }

    static 
    {
        a = new d("THREE", 0);
        b = new d("SIX", 1);
        c = new e("NONE");
        d ad[] = new d[3];
        ad[0] = a;
        ad[1] = b;
        ad[2] = c;
        d = ad;
    }
}
