// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.maps.b;

import android.graphics.Point;
import android.location.Location;
import com.facebook.e.a.a;
import com.google.android.maps.Projection;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

// Referenced classes of package com.instagram.android.maps.b:
//            i, h, c, f, 
//            a, d, e

public class b
{

    static final boolean a;
    private i b;
    private ArrayList c;
    private ArrayList d;
    private h e;
    private h f;
    private b g;
    private b h;
    private b i;
    private b j;
    private int k;

    public b()
    {
        this(com.instagram.android.maps.b.i.c());
    }

    private b(i l)
    {
        k = 4;
        b = l.a();
        c = new ArrayList();
        d = new ArrayList();
    }

    public static b a()
    {
        return new b(com.instagram.android.maps.b.i.c());
    }

    private ArrayList a(h h1, int l)
    {
        float af[] = new float[1];
        double d1 = 0.0025000000000000001D;
        double d2 = 0.0025000000000000001D;
        do
        {
            Location.distanceBetween(h1.c(), h1.f(), d2 + h1.c(), d1 + h1.f(), af);
            if ((double)af[0] < (double)l)
            {
                double d3 = d2 * 2D;
                d1 = 2D * d1;
                d2 = d3;
            } else
            {
                return a(new i(h1, new h(d2, d1)));
            }
        } while (true);
    }

    private ArrayList a(i l)
    {
        return a(l, false);
    }

    private ArrayList a(i l, boolean flag)
    {
        ArrayList arraylist = new ArrayList();
        if (!l.b(b)) goto _L2; else goto _L1
_L1:
        arraylist.addAll(d);
_L4:
        if (flag)
        {
            Collections.sort(arraylist, new c(this));
        }
        return arraylist;
_L2:
        if (b.a(l))
        {
            Iterator iterator = c.iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                h h1 = (h)iterator.next();
                if (l.a(h1))
                {
                    arraylist.add(h1.b());
                }
            } while (true);
            if (g != null)
            {
                arraylist.addAll(g.a(l));
                arraylist.addAll(h.a(l));
                arraylist.addAll(i.a(l));
                arraylist.addAll(j.a(l));
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    private ArrayList e()
    {
        return d;
    }

    private void f()
    {
        h h1 = new h(b.e().c() + b.f().c() / 2D, b.e().f() + b.f().f() / 2D);
        h h2 = new h(b.e().c() + b.f().c() / 2D, b.e().f() - b.f().f() / 2D);
        h h3 = new h(b.e().c() - b.f().c() / 2D, b.e().f() - b.f().f() / 2D);
        h h4 = new h(b.e().c() - b.f().c() / 2D, b.e().f() + b.f().f() / 2D);
        h h5 = b.f().a(0.5D);
        g = new b(new i(h1, h5));
        h = new b(new i(h2, h5));
        i = new b(new i(h3, h5));
        j = new b(new i(h4, h5));
    }

    public final ArrayList a(i l, int i1, Projection projection)
    {
        ArrayList arraylist = new ArrayList();
        ArrayList arraylist1 = a(l, true);
        com.facebook.e.a.a.a("PhotoMap", (new StringBuilder("Clustering ")).append(arraylist1.size()).append(" points").toString());
        ArrayList arraylist2 = arraylist1;
        while (arraylist2.size() > 0) 
        {
            h h1 = (h)arraylist2.get(0);
            arraylist2.remove(0);
            Point point = h1.a(projection);
            f f1 = null;
            double d1 = 0.0D;
            Iterator iterator = arraylist.iterator();
            while (iterator.hasNext()) 
            {
                f f3 = (f)iterator.next();
                Point point1 = f3.f().a(projection);
                double d2 = point.x - point1.x;
                double d3 = point.y - point1.y;
                double d4 = d2 * d2 + d3 * d3;
                boolean flag;
                ArrayList arraylist3;
                ArrayList arraylist4;
                Iterator iterator1;
                f f2;
                ArrayList arraylist5;
                h h2;
                if (d4 < (double)i1 && (f1 == null || d4 < d1))
                {
                    d1 = d4;
                } else
                {
                    f3 = f1;
                }
                f1 = f3;
            }
            if (f1 != null)
            {
                f1.a(h1);
                flag = true;
            } else
            {
                flag = false;
            }
            if (!flag)
            {
                arraylist3 = new ArrayList();
                arraylist4 = new ArrayList();
                for (iterator1 = arraylist2.iterator(); iterator1.hasNext();)
                {
                    h2 = (h)iterator1.next();
                    if (h1.a(h2, projection, point) < (double)i1)
                    {
                        arraylist3.add(h2);
                    } else
                    {
                        arraylist4.add(h2);
                    }
                }

                f2 = new f();
                f2.a(h1);
                f2.a(arraylist3);
                arraylist.add(f2);
                arraylist5 = arraylist4;
            } else
            {
                arraylist5 = arraylist2;
            }
            arraylist2 = arraylist5;
        }
        return arraylist;
    }

    public final boolean a(h h1)
    {
        if (b.a(h1))
        {
            d.add(h1);
            if (e == null)
            {
                e = h1.b();
            } else
            {
                e.b(Math.min(h1.c(), e.c()));
                e.c(Math.min(h1.f(), e.f()));
            }
            if (f == null)
            {
                f = h1.b();
            } else
            {
                f.b(Math.max(h1.c(), f.c()));
                f.c(Math.max(h1.f(), f.f()));
            }
            if (c.size() < k)
            {
                c.add(h1);
                return true;
            }
            if (g == null)
            {
                f();
            }
            if (g.a(h1))
            {
                return true;
            }
            if (h.a(h1))
            {
                return true;
            }
            if (i.a(h1))
            {
                return true;
            }
            if (j.a(h1))
            {
                return true;
            }
            if (!a)
            {
                throw new AssertionError();
            }
        }
        return false;
    }

    public final ArrayList b()
    {
        ArrayList arraylist;
        ArrayList arraylist1;
        ArrayList arraylist2;
        b b1;
        Iterator iterator1;
        arraylist = new ArrayList();
        arraylist1 = new ArrayList();
        new ArrayList();
        arraylist2 = new ArrayList();
        HashMap hashmap = new HashMap();
        b1 = new b();
        for (Iterator iterator = e().iterator(); iterator.hasNext();)
        {
            h h7 = (h)iterator.next();
            com.instagram.android.maps.b.a a2 = (com.instagram.android.maps.b.a)h7.g();
            if (a2.d() != null)
            {
                ArrayList arraylist11 = (ArrayList)hashmap.get(a2.d());
                if (arraylist11 == null)
                {
                    arraylist11 = new ArrayList();
                    hashmap.put(a2.d(), arraylist11);
                }
                arraylist11.add(h7);
            } else
            {
                arraylist2.add(h7);
            }
        }

        iterator1 = hashmap.entrySet().iterator();
_L3:
        if (!iterator1.hasNext()) goto _L2; else goto _L1
_L1:
        h h5;
        f f12;
        Iterator iterator9;
        ArrayList arraylist9 = (ArrayList)((java.util.Map.Entry)iterator1.next()).getValue();
        h5 = (h)arraylist9.get(0);
        f12 = new f();
        f12.a(true);
        b1.a(new h(h5.c(), h5.f(), f12));
        iterator9 = arraylist9.iterator();
_L4:
        h h6;
        float af3[];
        while (iterator9.hasNext()) 
        {
label0:
            {
                h6 = (h)iterator9.next();
                af3 = new float[1];
                boolean flag1;
                if (h6 == h5)
                {
                    flag1 = true;
                } else
                {
                    Location.distanceBetween(h5.c(), h5.f(), h6.c(), h6.f(), af3);
                    int l = af3[0] != 500F;
                    flag1 = false;
                    if (l < 0)
                    {
                        flag1 = true;
                    }
                }
                if (!flag1)
                {
                    break label0;
                }
                f12.a(h6);
            }
        }
          goto _L3
        boolean flag2;
        ArrayList arraylist10 = b1.a(com.instagram.android.maps.b.i.c());
        com.instagram.android.maps.b.a a1 = (com.instagram.android.maps.b.a)h6.g();
        Iterator iterator10 = arraylist10.iterator();
        f f14;
        do
        {
            do
            {
                if (!iterator10.hasNext())
                {
                    break MISSING_BLOCK_LABEL_1375;
                }
                f14 = (f)((h)iterator10.next()).g();
            } while (!((com.instagram.android.maps.b.a)f14.f().g()).d().equals(a1.d()));
            Location.distanceBetween(h6.c(), h6.f(), f14.f().c(), f14.f().f(), af3);
        } while (af3[0] >= 500F);
        f14.a(h6);
        flag2 = true;
_L10:
        if (!flag2)
        {
            f f13 = new f();
            f13.a(true);
            f13.a(h6);
            b1.a(new h(h6.c(), h6.f(), f13));
        }
          goto _L4
          goto _L3
_L2:
        ArrayList arraylist3 = new ArrayList();
        while (arraylist2.size() > 0) 
        {
            h h4 = (h)arraylist2.get(0);
            ArrayList arraylist8 = b1.a(h4, 250);
            h4.g();
            f f8 = null;
            float f9 = 0.0F;
            float af2[] = new float[1];
            Iterator iterator8 = arraylist8.iterator();
            while (iterator8.hasNext()) 
            {
                f f10 = (f)((h)iterator8.next()).g();
                Location.distanceBetween(h4.c(), h4.f(), f10.f().c(), f10.f().f(), af2);
                float f11 = af2[0];
                Iterator iterator2;
                Iterator iterator3;
                ArrayList arraylist4;
                Iterator iterator4;
                h h1;
                float af[];
                ArrayList arraylist5;
                ArrayList arraylist6;
                Iterator iterator5;
                f f1;
                h h2;
                f f2;
                h h3;
                f f3;
                ArrayList arraylist7;
                f f4;
                float f5;
                float af1[];
                Iterator iterator6;
                Iterator iterator7;
                f f6;
                float f7;
                boolean flag;
                if (f11 >= 250F || f8 != null && f11 >= f9)
                {
                    f11 = f9;
                    f10 = f8;
                }
                f9 = f11;
                f8 = f10;
            }
            if (f8 != null)
            {
                f8.a(h4);
                flag = true;
            } else
            {
                flag = false;
            }
            if (!flag)
            {
                arraylist3.add(h4);
            }
            arraylist2.remove(0);
        }
        iterator2 = b1.e().iterator();
        if (!iterator2.hasNext())
        {
            break; /* Loop/switch isn't completed */
        }
        h3 = (h)iterator2.next();
        f3 = (f)h3.g();
        if (!f3.h())
        {
            continue; /* Loop/switch isn't completed */
        }
        arraylist7 = b1.a(h3, 100);
        f4 = null;
        f5 = 0.0F;
        af1 = new float[1];
        iterator6 = arraylist7.iterator();
_L7:
        if (!iterator6.hasNext()) goto _L6; else goto _L5
_L5:
        f6 = (f)((h)iterator6.next()).g();
        if (f6.h() && f6 != f3)
        {
            Location.distanceBetween(f3.f().c(), f3.f().f(), f6.f().c(), f6.f().f(), af1);
            f7 = af1[0];
            if (f7 >= 100F || f4 != null && f7 >= f5)
            {
                f7 = f5;
                f6 = f4;
            }
            f5 = f7;
            f4 = f6;
        }
        if (true) goto _L7; else goto _L6
_L6:
        if (f4 != null)
        {
            iterator7 = f4.c().iterator();
            while (iterator7.hasNext()) 
            {
                f3.a((h)iterator7.next());
                f4.a(false);
            }
        }
        if (true) goto _L9; else goto _L8
_L9:
        break MISSING_BLOCK_LABEL_772;
_L8:
        iterator3 = b1.e().iterator();
        do
        {
            if (!iterator3.hasNext())
            {
                break;
            }
            f2 = (f)((h)iterator3.next()).g();
            if (f2.h())
            {
                if (f2.c().size() >= 4)
                {
                    arraylist1.add(f2);
                } else
                {
                    arraylist3.addAll(f2.c());
                }
            }
        } while (true);
        Collections.sort(arraylist1, new d(this));
        for (arraylist4 = arraylist3; arraylist4.size() > 0; arraylist4 = arraylist6)
        {
            h1 = (h)arraylist4.get(0);
            arraylist4.remove(0);
            af = new float[1];
            arraylist5 = new ArrayList();
            arraylist6 = new ArrayList();
            iterator5 = arraylist4.iterator();
            do
            {
                if (!iterator5.hasNext())
                {
                    break;
                }
                h2 = (h)iterator5.next();
                if (h2 != h1)
                {
                    Location.distanceBetween(h2.c(), h2.f(), h1.c(), h1.f(), af);
                    if (af[0] < 25000F)
                    {
                        arraylist5.add(h2);
                    } else
                    {
                        arraylist6.add(h2);
                    }
                }
            } while (true);
            f1 = new f();
            if (arraylist5.size() > 0)
            {
                f1.a(arraylist5);
            }
            f1.a(h1);
            arraylist.add(f1);
        }

        Collections.sort(arraylist, new e(this));
        arraylist1.addAll(arraylist);
        for (iterator4 = arraylist1.iterator(); iterator4.hasNext(); ((f)iterator4.next()).a()) { }
        return arraylist1;
        flag2 = false;
          goto _L10
    }

    public final h c()
    {
        return e;
    }

    public final h d()
    {
        return f;
    }

    static 
    {
        boolean flag;
        if (!com/instagram/android/maps/b/b.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a = flag;
    }
}
