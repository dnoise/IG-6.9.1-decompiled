// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.util;


// Referenced classes of package com.fasterxml.jackson.databind.util:
//            NameTransformer

public class _t2 extends NameTransformer
{

    protected final NameTransformer _t1;
    protected final NameTransformer _t2;

    public String reverse(String s)
    {
        String s1 = _t1.reverse(s);
        if (s1 != null)
        {
            s1 = _t2.reverse(s1);
        }
        return s1;
    }

    public String toString()
    {
        return (new StringBuilder("[ChainedTransformer(")).append(_t1).append(", ").append(_t2).append(")]").toString();
    }

    public String transform(String s)
    {
        return _t1.transform(_t2.transform(s));
    }

    public A(NameTransformer nametransformer, NameTransformer nametransformer1)
    {
        _t1 = nametransformer;
        _t2 = nametransformer1;
    }
}
