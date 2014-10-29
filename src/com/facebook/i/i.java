// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.i;

import java.io.Externalizable;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.facebook.i:
//            k, h

public final class i
    implements Externalizable
{

    private boolean A;
    private k B;
    private boolean C;
    private k D;
    private boolean E;
    private k F;
    private boolean G;
    private String H;
    private boolean I;
    private int J;
    private boolean K;
    private String L;
    private boolean M;
    private String N;
    private boolean O;
    private String P;
    private boolean Q;
    private String R;
    private boolean S;
    private String T;
    private boolean U;
    private String V;
    private boolean W;
    private boolean X;
    private List Y;
    private List Z;
    private boolean a;
    private boolean aa;
    private boolean ab;
    private boolean ac;
    private String ad;
    private boolean ae;
    private boolean af;
    private k b;
    private boolean c;
    private k d;
    private boolean e;
    private k f;
    private boolean g;
    private k h;
    private boolean i;
    private k j;
    private boolean k;
    private k l;
    private boolean m;
    private k n;
    private boolean o;
    private k p;
    private boolean q;
    private k r;
    private boolean s;
    private k t;
    private boolean u;
    private k v;
    private boolean w;
    private k x;
    private boolean y;
    private k z;

    public i()
    {
        b = null;
        d = null;
        f = null;
        h = null;
        j = null;
        l = null;
        n = null;
        p = null;
        r = null;
        t = null;
        v = null;
        x = null;
        z = null;
        B = null;
        D = null;
        F = null;
        H = "";
        J = 0;
        L = "";
        N = "";
        P = "";
        R = "";
        T = "";
        V = "";
        X = false;
        Y = new ArrayList();
        Z = new ArrayList();
        ab = false;
        ad = "";
        af = false;
    }

    private i a(int i1)
    {
        I = true;
        J = i1;
        return this;
    }

    private i a(k k1)
    {
        a = true;
        b = k1;
        return this;
    }

    private i a(String s1)
    {
        G = true;
        H = s1;
        return this;
    }

    private i a(boolean flag)
    {
        W = true;
        X = flag;
        return this;
    }

    private i b(k k1)
    {
        c = true;
        d = k1;
        return this;
    }

    private i b(String s1)
    {
        K = true;
        L = s1;
        return this;
    }

    private i b(boolean flag)
    {
        aa = true;
        ab = flag;
        return this;
    }

    private i c(k k1)
    {
        e = true;
        f = k1;
        return this;
    }

    private i c(String s1)
    {
        M = true;
        N = s1;
        return this;
    }

    private i c(boolean flag)
    {
        ae = true;
        af = flag;
        return this;
    }

    private i d(k k1)
    {
        g = true;
        h = k1;
        return this;
    }

    private i d(String s1)
    {
        O = true;
        P = s1;
        return this;
    }

    private i e(k k1)
    {
        i = true;
        j = k1;
        return this;
    }

    private i e(String s1)
    {
        Q = true;
        R = s1;
        return this;
    }

    private i f(k k1)
    {
        k = true;
        l = k1;
        return this;
    }

    private i f(String s1)
    {
        S = true;
        T = s1;
        return this;
    }

    private i g(k k1)
    {
        m = true;
        n = k1;
        return this;
    }

    private i g(String s1)
    {
        U = true;
        V = s1;
        return this;
    }

    private i h(k k1)
    {
        o = true;
        p = k1;
        return this;
    }

    private i h(String s1)
    {
        ac = true;
        ad = s1;
        return this;
    }

    private i i(k k1)
    {
        q = true;
        r = k1;
        return this;
    }

    private i j(k k1)
    {
        s = true;
        t = k1;
        return this;
    }

    private i k(k k1)
    {
        u = true;
        v = k1;
        return this;
    }

    private i l(k k1)
    {
        w = true;
        x = k1;
        return this;
    }

    private i m(k k1)
    {
        y = true;
        z = k1;
        return this;
    }

    private i n(k k1)
    {
        A = true;
        B = k1;
        return this;
    }

    private i o(k k1)
    {
        C = true;
        D = k1;
        return this;
    }

    private i p(k k1)
    {
        E = true;
        F = k1;
        return this;
    }

    private int s()
    {
        return Y.size();
    }

    private int t()
    {
        return Z.size();
    }

    public final k a()
    {
        return b;
    }

    public final k b()
    {
        return d;
    }

    public final k c()
    {
        return f;
    }

    public final k d()
    {
        return h;
    }

    public final k e()
    {
        return j;
    }

    public final k f()
    {
        return l;
    }

    public final k g()
    {
        return n;
    }

    public final k h()
    {
        return p;
    }

    public final k i()
    {
        return r;
    }

    public final k j()
    {
        return t;
    }

    public final k k()
    {
        return x;
    }

    public final int l()
    {
        return J;
    }

    public final String m()
    {
        return L;
    }

    public final String n()
    {
        return T;
    }

    public final String o()
    {
        return V;
    }

    public final boolean p()
    {
        return X;
    }

    public final boolean q()
    {
        return ac;
    }

    public final String r()
    {
        return ad;
    }

    public final void readExternal(ObjectInput objectinput)
    {
        int i1 = 0;
        if (objectinput.readBoolean())
        {
            k k1 = new k();
            k1.readExternal(objectinput);
            a(k1);
        }
        if (objectinput.readBoolean())
        {
            k k2 = new k();
            k2.readExternal(objectinput);
            b(k2);
        }
        if (objectinput.readBoolean())
        {
            k k3 = new k();
            k3.readExternal(objectinput);
            c(k3);
        }
        if (objectinput.readBoolean())
        {
            k k4 = new k();
            k4.readExternal(objectinput);
            d(k4);
        }
        if (objectinput.readBoolean())
        {
            k k5 = new k();
            k5.readExternal(objectinput);
            e(k5);
        }
        if (objectinput.readBoolean())
        {
            k k6 = new k();
            k6.readExternal(objectinput);
            f(k6);
        }
        if (objectinput.readBoolean())
        {
            k k7 = new k();
            k7.readExternal(objectinput);
            g(k7);
        }
        if (objectinput.readBoolean())
        {
            k k8 = new k();
            k8.readExternal(objectinput);
            h(k8);
        }
        if (objectinput.readBoolean())
        {
            k k9 = new k();
            k9.readExternal(objectinput);
            i(k9);
        }
        if (objectinput.readBoolean())
        {
            k k10 = new k();
            k10.readExternal(objectinput);
            j(k10);
        }
        if (objectinput.readBoolean())
        {
            k k11 = new k();
            k11.readExternal(objectinput);
            k(k11);
        }
        if (objectinput.readBoolean())
        {
            k k12 = new k();
            k12.readExternal(objectinput);
            l(k12);
        }
        if (objectinput.readBoolean())
        {
            k k13 = new k();
            k13.readExternal(objectinput);
            m(k13);
        }
        if (objectinput.readBoolean())
        {
            k k14 = new k();
            k14.readExternal(objectinput);
            n(k14);
        }
        if (objectinput.readBoolean())
        {
            k k15 = new k();
            k15.readExternal(objectinput);
            o(k15);
        }
        if (objectinput.readBoolean())
        {
            k k16 = new k();
            k16.readExternal(objectinput);
            p(k16);
        }
        a(objectinput.readUTF());
        a(objectinput.readInt());
        b(objectinput.readUTF());
        if (objectinput.readBoolean())
        {
            c(objectinput.readUTF());
        }
        if (objectinput.readBoolean())
        {
            d(objectinput.readUTF());
        }
        if (objectinput.readBoolean())
        {
            e(objectinput.readUTF());
        }
        if (objectinput.readBoolean())
        {
            f(objectinput.readUTF());
        }
        if (objectinput.readBoolean())
        {
            g(objectinput.readUTF());
        }
        a(objectinput.readBoolean());
        int j1 = objectinput.readInt();
        for (int l1 = 0; l1 < j1; l1++)
        {
            h h1 = new h();
            h1.readExternal(objectinput);
            Y.add(h1);
        }

        for (int i2 = objectinput.readInt(); i1 < i2; i1++)
        {
            h h2 = new h();
            h2.readExternal(objectinput);
            Z.add(h2);
        }

        b(objectinput.readBoolean());
        if (objectinput.readBoolean())
        {
            h(objectinput.readUTF());
        }
        c(objectinput.readBoolean());
    }

    public final void writeExternal(ObjectOutput objectoutput)
    {
        int i1 = 0;
        objectoutput.writeBoolean(a);
        if (a)
        {
            b.writeExternal(objectoutput);
        }
        objectoutput.writeBoolean(c);
        if (c)
        {
            d.writeExternal(objectoutput);
        }
        objectoutput.writeBoolean(e);
        if (e)
        {
            f.writeExternal(objectoutput);
        }
        objectoutput.writeBoolean(g);
        if (g)
        {
            h.writeExternal(objectoutput);
        }
        objectoutput.writeBoolean(i);
        if (i)
        {
            j.writeExternal(objectoutput);
        }
        objectoutput.writeBoolean(k);
        if (k)
        {
            l.writeExternal(objectoutput);
        }
        objectoutput.writeBoolean(m);
        if (m)
        {
            n.writeExternal(objectoutput);
        }
        objectoutput.writeBoolean(o);
        if (o)
        {
            p.writeExternal(objectoutput);
        }
        objectoutput.writeBoolean(q);
        if (q)
        {
            r.writeExternal(objectoutput);
        }
        objectoutput.writeBoolean(s);
        if (s)
        {
            t.writeExternal(objectoutput);
        }
        objectoutput.writeBoolean(u);
        if (u)
        {
            v.writeExternal(objectoutput);
        }
        objectoutput.writeBoolean(w);
        if (w)
        {
            x.writeExternal(objectoutput);
        }
        objectoutput.writeBoolean(y);
        if (y)
        {
            z.writeExternal(objectoutput);
        }
        objectoutput.writeBoolean(A);
        if (A)
        {
            B.writeExternal(objectoutput);
        }
        objectoutput.writeBoolean(C);
        if (C)
        {
            D.writeExternal(objectoutput);
        }
        objectoutput.writeBoolean(E);
        if (E)
        {
            F.writeExternal(objectoutput);
        }
        objectoutput.writeUTF(H);
        objectoutput.writeInt(J);
        objectoutput.writeUTF(L);
        objectoutput.writeBoolean(M);
        if (M)
        {
            objectoutput.writeUTF(N);
        }
        objectoutput.writeBoolean(O);
        if (O)
        {
            objectoutput.writeUTF(P);
        }
        objectoutput.writeBoolean(Q);
        if (Q)
        {
            objectoutput.writeUTF(R);
        }
        objectoutput.writeBoolean(S);
        if (S)
        {
            objectoutput.writeUTF(T);
        }
        objectoutput.writeBoolean(U);
        if (U)
        {
            objectoutput.writeUTF(V);
        }
        objectoutput.writeBoolean(X);
        int j1 = s();
        objectoutput.writeInt(j1);
        for (int k1 = 0; k1 < j1; k1++)
        {
            ((h)Y.get(k1)).writeExternal(objectoutput);
        }

        int l1 = t();
        objectoutput.writeInt(l1);
        for (; i1 < l1; i1++)
        {
            ((h)Z.get(i1)).writeExternal(objectoutput);
        }

        objectoutput.writeBoolean(ab);
        objectoutput.writeBoolean(ac);
        if (ac)
        {
            objectoutput.writeUTF(ad);
        }
        objectoutput.writeBoolean(af);
    }
}
