// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.i;

import java.io.Externalizable;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.ArrayList;
import java.util.List;

public final class h
    implements Externalizable
{

    private boolean a;
    private String b;
    private boolean c;
    private String d;
    private List e;
    private boolean f;
    private String g;
    private boolean h;
    private boolean i;
    private boolean j;
    private String k;

    public h()
    {
        b = "";
        d = "";
        e = new ArrayList();
        g = "";
        i = false;
        k = "";
    }

    private int a()
    {
        return e.size();
    }

    private h a(String s)
    {
        a = true;
        b = s;
        return this;
    }

    private h a(boolean flag)
    {
        h = true;
        i = flag;
        return this;
    }

    private h b(String s)
    {
        c = true;
        d = s;
        return this;
    }

    private h c(String s)
    {
        f = true;
        g = s;
        return this;
    }

    private h d(String s)
    {
        j = true;
        k = s;
        return this;
    }

    public final void readExternal(ObjectInput objectinput)
    {
        a(objectinput.readUTF());
        b(objectinput.readUTF());
        int l = objectinput.readInt();
        for (int i1 = 0; i1 < l; i1++)
        {
            e.add(objectinput.readUTF());
        }

        if (objectinput.readBoolean())
        {
            c(objectinput.readUTF());
        }
        if (objectinput.readBoolean())
        {
            d(objectinput.readUTF());
        }
        a(objectinput.readBoolean());
    }

    public final void writeExternal(ObjectOutput objectoutput)
    {
        objectoutput.writeUTF(b);
        objectoutput.writeUTF(d);
        int l = a();
        objectoutput.writeInt(l);
        for (int i1 = 0; i1 < l; i1++)
        {
            objectoutput.writeUTF((String)e.get(i1));
        }

        objectoutput.writeBoolean(f);
        if (f)
        {
            objectoutput.writeUTF(g);
        }
        objectoutput.writeBoolean(j);
        if (j)
        {
            objectoutput.writeUTF(k);
        }
        objectoutput.writeBoolean(i);
    }
}
