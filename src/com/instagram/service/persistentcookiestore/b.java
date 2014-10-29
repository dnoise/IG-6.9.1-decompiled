// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.service.persistentcookiestore;

import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;

final class b extends ObjectInputStream
{

    public b(InputStream inputstream)
    {
        super(inputstream);
    }

    protected final ObjectStreamClass readClassDescriptor()
    {
        ObjectStreamClass objectstreamclass = super.readClassDescriptor();
        if (objectstreamclass.getName().equals("com.instagram.api.SerializableCookie") || objectstreamclass.getName().equals("com.instagram.service.PersistentCookieStore$SerializableCookie"))
        {
            objectstreamclass = ObjectStreamClass.lookup(com/instagram/service/persistentcookiestore/PersistentCookieStore$SerializableCookie);
        }
        return objectstreamclass;
    }
}
