// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.a.b;

import ch.boye.httpclientandroidlib.client.methods.HttpEntityEnclosingRequestBase;
import java.net.URI;

public final class d extends HttpEntityEnclosingRequestBase
{

    public d()
    {
    }

    public d(String s)
    {
        setURI(URI.create(s));
    }

    public final String getMethod()
    {
        return "PATCH";
    }
}
