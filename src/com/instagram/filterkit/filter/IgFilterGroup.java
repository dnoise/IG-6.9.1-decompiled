// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.filterkit.filter;

import android.os.Parcel;
import com.instagram.filterkit.e.a;
import com.instagram.filterkit.e.b;
import com.instagram.filterkit.e.c;
import com.instagram.filterkit.e.d;
import java.util.Iterator;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;

// Referenced classes of package com.instagram.filterkit.filter:
//            IgFilter, a, b

public class IgFilterGroup
    implements IgFilter
{

    public static final android.os.Parcelable.Creator CREATOR = new com.instagram.filterkit.filter.a();
    private boolean a;
    private boolean b;
    private int c;
    private SortedMap d;

    public IgFilterGroup()
    {
        a = true;
        b = true;
        c = 0x80000000;
        d = new TreeMap();
    }

    private IgFilterGroup(Parcel parcel)
    {
        a = true;
        b = true;
        c = 0x80000000;
        d = new TreeMap();
        int i = parcel.readInt();
        int j = 0;
        while (j < i) 
        {
            int k = parcel.readInt();
            com.instagram.filterkit.filter.b b1 = new com.instagram.filterkit.filter.b(this, (IgFilter)parcel.readParcelable(getClass().getClassLoader()));
            boolean flag;
            if (parcel.readInt() == 1)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            b1.b = flag;
            d.put(Integer.valueOf(k), b1);
            j++;
        }
    }

    IgFilterGroup(Parcel parcel, byte byte0)
    {
        this(parcel);
    }

    public final void B_()
    {
        a = true;
    }

    public final boolean D_()
    {
        return false;
    }

    public final boolean E_()
    {
        this;
        JVM INSTR monitorenter ;
        if (b) goto _L2; else goto _L1
_L1:
        boolean flag1 = a;
        if (!flag1) goto _L3; else goto _L2
_L2:
        boolean flag = true;
_L6:
        this;
        JVM INSTR monitorexit ;
        return flag;
_L3:
        Iterator iterator = d.entrySet().iterator();
_L4:
        boolean flag2;
        java.util.Map.Entry entry;
        do
        {
            if (!iterator.hasNext())
            {
                break MISSING_BLOCK_LABEL_124;
            }
            entry = (java.util.Map.Entry)iterator.next();
        } while (!((com.instagram.filterkit.filter.b)entry.getValue()).b || ((com.instagram.filterkit.filter.b)entry.getValue()).a == null);
        flag2 = ((com.instagram.filterkit.filter.b)entry.getValue()).a.E_();
        if (flag2)
        {
            flag = true;
            continue; /* Loop/switch isn't completed */
        }
          goto _L4
        flag = false;
        if (true) goto _L6; else goto _L5
_L5:
        Exception exception;
        exception;
        throw exception;
    }

    public final c a(com.instagram.filterkit.d.c c1, a a1, c c2)
    {
        this;
        JVM INSTR monitorenter ;
        int i;
        boolean flag;
        int j;
        i = 0x80000000;
        flag = false;
        j = 0x80000000;
        Iterator iterator = d.entrySet().iterator();
        boolean flag1 = false;
        boolean flag2 = a;
_L4:
        if (!iterator.hasNext()) goto _L2; else goto _L1
_L1:
        java.util.Map.Entry entry4;
        IgFilter igfilter;
        entry4 = (java.util.Map.Entry)iterator.next();
        igfilter = ((com.instagram.filterkit.filter.b)entry4.getValue()).a;
        if (igfilter == null) goto _L4; else goto _L3
_L3:
        if (!((com.instagram.filterkit.filter.b)entry4.getValue()).b) goto _L6; else goto _L5
_L5:
        if (igfilter.d() && flag1)
        {
            break MISSING_BLOCK_LABEL_129;
        }
        flag1 = true;
        i = ((Integer)entry4.getKey()).intValue();
        if (flag2) goto _L8; else goto _L7
_L7:
        if (!b || ((Integer)entry4.getKey()).intValue() <= c) goto _L9; else goto _L8
_L8:
        boolean flag6 = true;
        igfilter.B_();
        boolean flag10;
        int i1;
        i1 = j;
        flag10 = flag;
_L15:
        if (igfilter.c() == null || igfilter.D_() && igfilter.c().c() == c2.c()) goto _L11; else goto _L10
_L10:
        igfilter.a_(c1);
        j = i1;
        flag = flag10;
        flag2 = flag6;
          goto _L4
_L9:
        c c3;
        Iterator iterator1;
        java.util.Map.Entry entry;
        Object obj;
        java.util.Map.Entry entry2;
        boolean flag4;
        Object obj1;
        b b2;
        java.util.Map.Entry entry3;
        boolean flag5;
        c c4;
        boolean flag7;
        int k;
        boolean flag8;
        int l;
        boolean flag9;
        int k1;
        if (b && ((Integer)entry4.getKey()).intValue() >= c || igfilter.E_())
        {
            flag9 = true;
        } else
        {
            flag9 = false;
        }
        if (flag9) goto _L13; else goto _L12
_L12:
        if (igfilter.c() == null || igfilter.c().c() != c2.c()) goto _L13; else goto _L14
_L14:
        k1 = ((Integer)entry4.getKey()).intValue();
        flag6 = flag9;
        flag10 = true;
        i1 = k1;
          goto _L15
_L6:
        igfilter.a_(c1);
        flag6 = flag2;
        flag7 = flag1;
        k = j;
        flag8 = flag;
        l = i;
          goto _L16
_L2:
        a = false;
        b = false;
        c = 0x7fffffff;
        if (!com.instagram.filterkit.e.d.a(c2)) goto _L18; else goto _L17
_L17:
        c3 = c2;
_L23:
        iterator1 = d.entrySet().iterator();
        entry = null;
        if (flag) goto _L20; else goto _L19
_L19:
        do
        {
            if (!iterator1.hasNext())
            {
                break;
            }
            entry = (java.util.Map.Entry)iterator1.next();
        } while (!((com.instagram.filterkit.filter.b)entry.getValue()).b || ((com.instagram.filterkit.filter.b)entry.getValue()).a == null);
        entry3 = entry;
        flag5 = iterator1.hasNext();
        if (flag5) goto _L22; else goto _L21
_L21:
        obj = c2;
_L25:
        this;
        JVM INSTR monitorexit ;
        return ((c) (obj));
_L18:
        c3 = com.instagram.filterkit.e.d.b(c2.c());
          goto _L23
_L22:
        if (((Integer)entry3.getKey()).intValue() == i)
        {
            c4 = c2;
        } else
        {
            c4 = c3;
        }
        obj = ((com.instagram.filterkit.filter.b)entry3.getValue()).a.a(c1, a1, c4);
        a1.f();
_L27:
        if (!iterator1.hasNext()) goto _L25; else goto _L24
_L24:
        entry2 = (java.util.Map.Entry)iterator1.next();
        if (!((com.instagram.filterkit.filter.b)entry2.getValue()).b || ((com.instagram.filterkit.filter.b)entry2.getValue()).a == null) goto _L27; else goto _L26
_L26:
        flag4 = ((com.instagram.filterkit.filter.b)entry2.getValue()).a.d();
        obj1 = null;
        if (flag4)
        {
            break MISSING_BLOCK_LABEL_687;
        }
        b2 = (b)obj;
        Exception exception;
        java.util.Map.Entry entry1;
        boolean flag3;
        b b1;
        if (((Integer)entry2.getKey()).intValue() == i)
        {
            obj = c2;
        } else
        {
            obj = c3;
        }
        break MISSING_BLOCK_LABEL_903;
_L28:
        obj = ((com.instagram.filterkit.filter.b)entry2.getValue()).a.a(c1, ((a) (obj1)), ((c) (obj)));
          goto _L27
_L20:
        entry1 = null;
        if (j != i)
        {
            break MISSING_BLOCK_LABEL_756;
        }
        flag3 = com.instagram.filterkit.e.d.a(c2);
        entry1 = null;
        if (flag3)
        {
            break MISSING_BLOCK_LABEL_756;
        }
        throw new UnsupportedOperationException("Cannot cache the last filter yet.");
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        do
        {
            if (!iterator1.hasNext())
            {
                break;
            }
            entry1 = (java.util.Map.Entry)iterator1.next();
        } while (((Integer)entry1.getKey()).intValue() != j);
        b1 = ((com.instagram.filterkit.filter.b)entry1.getValue()).a.c();
        obj = b1;
          goto _L27
_L11:
        l = i;
        int j1 = i1;
        flag7 = flag1;
        flag8 = flag10;
        k = j1;
          goto _L16
_L13:
        flag6 = flag9;
        flag10 = flag;
        i1 = j;
          goto _L15
_L16:
        flag = flag8;
        i = l;
        j = k;
        flag1 = flag7;
        flag2 = flag6;
          goto _L4
        obj1 = b2;
          goto _L28
    }

    public final IgFilter a(int i)
    {
        this;
        JVM INSTR monitorenter ;
        com.instagram.filterkit.filter.b b1 = (com.instagram.filterkit.filter.b)d.get(Integer.valueOf(i));
        if (b1 != null) goto _L2; else goto _L1
_L1:
        IgFilter igfilter = null;
_L4:
        this;
        JVM INSTR monitorexit ;
        return igfilter;
_L2:
        igfilter = b1.a;
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    public final void a(int i, IgFilter igfilter)
    {
        this;
        JVM INSTR monitorenter ;
        d.put(Integer.valueOf(i), new com.instagram.filterkit.filter.b(this, igfilter));
        b = true;
        c = Math.min(c, i);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public final void a(int i, boolean flag)
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag1 = d.containsKey(Integer.valueOf(i));
        if (flag1) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        ((com.instagram.filterkit.filter.b)d.get(Integer.valueOf(i))).b = flag;
        b = true;
        c = Math.min(c, i);
        if (true) goto _L1; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    public final void a(com.instagram.filterkit.d.c c1)
    {
    }

    public final void a(boolean flag)
    {
        if (flag)
        {
            throw new UnsupportedOperationException("Cannot call setCaching(true) on a filter group");
        }
        Iterator iterator = d.entrySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            if (((com.instagram.filterkit.filter.b)entry.getValue()).a != null)
            {
                ((com.instagram.filterkit.filter.b)entry.getValue()).a.a(false);
            }
        } while (true);
    }

    public final void a_(com.instagram.filterkit.d.c c1)
    {
    }

    public final boolean b(int i)
    {
        return d.containsKey(Integer.valueOf(i)) && ((com.instagram.filterkit.filter.b)d.get(Integer.valueOf(i))).b;
    }

    public final b c()
    {
        return null;
    }

    public final boolean d()
    {
        return false;
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeInt(d.size());
        Iterator iterator = d.entrySet().iterator();
        while (iterator.hasNext()) 
        {
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            parcel.writeInt(((Integer)entry.getKey()).intValue());
            parcel.writeParcelable(((com.instagram.filterkit.filter.b)entry.getValue()).a, i);
            int j;
            if (((com.instagram.filterkit.filter.b)entry.getValue()).b)
            {
                j = 1;
            } else
            {
                j = 0;
            }
            parcel.writeInt(j);
        }
    }

}
