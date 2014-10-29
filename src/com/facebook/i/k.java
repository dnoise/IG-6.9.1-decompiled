// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.i;

import java.io.Externalizable;
import java.io.ObjectInput;
import java.io.ObjectOutput;

public final class k
    implements Externalizable
{

    private boolean a;
    private String b;
    private boolean c;
    private String d;
    private boolean e;
    private String f;

    public k()
    {
        b = "";
        d = "";
        f = "";
    }

    private k a(String s)
    {
        a = true;
        b = s;
        return this;
    }

    private k b(String s)
    {
        c = true;
        d = s;
        return this;
    }

    private k c(String s)
    {
        e = true;
        f = s;
        return this;
    }

    public final boolean a()
    {
        return a;
    }

    public final String b()
    {
        return b;
    }

    public final String c()
    {
        return d;
    }

    public final void readExternal(ObjectInput objectinput)
    {
        if (objectinput.readBoolean())
        {
            a(objectinput.readUTF());
        }
        if (objectinput.readBoolean())
        {
            b(objectinput.readUTF());
        }
        if (objectinput.readBoolean())
        {
            c(objectinput.readUTF());
        }
    }

    public final void writeExternal(ObjectOutput objectoutput)
    {
        objectoutput.writeBoolean(a);
        if (a)
        {
            objectoutput.writeUTF(b);
        }
        objectoutput.writeBoolean(c);
        if (c)
        {
            objectoutput.writeUTF(d);
        }
        objectoutput.writeBoolean(e);
        if (e)
        {
            objectoutput.writeUTF(f);
        }
    }
}
