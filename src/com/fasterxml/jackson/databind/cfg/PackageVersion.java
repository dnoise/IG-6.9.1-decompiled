// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.cfg;

import com.fasterxml.jackson.a.g.p;
import com.fasterxml.jackson.a.w;
import com.fasterxml.jackson.a.x;

public final class PackageVersion
    implements x
{

    public static final w VERSION = p.a("2.2.3", "com.fasterxml.jackson.core", "jackson-databind");

    public PackageVersion()
    {
    }

    public final w version()
    {
        return VERSION;
    }

}
