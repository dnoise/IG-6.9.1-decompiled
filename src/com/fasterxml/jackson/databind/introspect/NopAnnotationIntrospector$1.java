// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.a.w;
import com.fasterxml.jackson.databind.cfg.PackageVersion;

// Referenced classes of package com.fasterxml.jackson.databind.introspect:
//            NopAnnotationIntrospector

final class  extends NopAnnotationIntrospector
{

    private static final long serialVersionUID = 1L;

    public final w version()
    {
        return PackageVersion.VERSION;
    }

    ()
    {
    }
}
