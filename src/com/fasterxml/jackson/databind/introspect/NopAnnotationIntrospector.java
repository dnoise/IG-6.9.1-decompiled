// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.a.w;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import java.io.Serializable;

public abstract class NopAnnotationIntrospector extends AnnotationIntrospector
    implements Serializable
{

    public static final NopAnnotationIntrospector instance = new _cls1();
    private static final long serialVersionUID = 1L;

    public NopAnnotationIntrospector()
    {
    }

    public w version()
    {
        return w.a();
    }


    private class _cls1 extends NopAnnotationIntrospector
    {

        private static final long serialVersionUID = 1L;

        public final w version()
        {
            return PackageVersion.VERSION;
        }

        _cls1()
        {
        }
    }

}
