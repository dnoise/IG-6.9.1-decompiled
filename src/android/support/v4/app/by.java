// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.app;


// Referenced classes of package android.support.v4.app:
//            ch, ah

final class by
    implements ch
{

    final String a;
    final int b;
    final String c;
    final boolean d = false;

    public by(String s, int i, String s1)
    {
        a = s;
        b = i;
        c = s1;
    }

    public final void a(ah ah1)
    {
        if (d)
        {
            ah1.a(a);
            return;
        } else
        {
            ah1.a(a, b, c);
            return;
        }
    }

    public final String toString()
    {
        StringBuilder stringbuilder = new StringBuilder("CancelTask[");
        stringbuilder.append("packageName:").append(a);
        stringbuilder.append(", id:").append(b);
        stringbuilder.append(", tag:").append(c);
        stringbuilder.append(", all:").append(d);
        stringbuilder.append("]");
        return stringbuilder.toString();
    }
}
