// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.a;

import android.content.Context;
import android.location.Location;
import android.os.AsyncTask;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.facebook.aw;
import com.facebook.e.a.a;
import com.fasterxml.jackson.a.w;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.module.SimpleModule;
import com.instagram.venue.model.Venue;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

// Referenced classes of package com.instagram.android.a:
//            k, i, l, j, 
//            h, g, e, f

public final class d extends BaseAdapter
{

    private String a;
    private LayoutInflater b;
    private Context c;
    private Location d;
    private boolean e;
    private boolean f;
    private List g;
    private Set h;
    private List i;
    private List j;

    public d(Context context)
    {
        a = null;
        g = new ArrayList();
        h = new HashSet();
        i = new ArrayList();
        j = new ArrayList();
        c = context;
        b = LayoutInflater.from(context);
        e();
    }

    private View a(int i1, ViewGroup viewgroup)
    {
        switch (i1)
        {
        default:
            throw new UnsupportedOperationException();

        case 0: // '\0'
        case 1: // '\001'
        case 2: // '\002'
            return com.instagram.android.a.k.a(b, viewgroup);

        case 3: // '\003'
            return com.instagram.android.a.i.a(b, viewgroup);

        case 4: // '\004'
            return b.inflate(aw.row_powered_by_foursquare, viewgroup, false);
        }
    }

    private void a(int i1, int j1, View view)
    {
        switch (j1)
        {
        default:
            throw new UnsupportedOperationException();

        case 0: // '\0'
            com.instagram.android.a.k.a(c, (l)view.getTag(), a);
            // fall through

        case 4: // '\004'
            return;

        case 1: // '\001'
            k.b(c, (l)view.getTag(), a);
            return;

        case 2: // '\002'
            Venue venue = a(i1);
            com.instagram.android.a.k.a((l)view.getTag(), venue);
            return;

        case 3: // '\003'
            com.instagram.android.a.i.a((j)view.getTag());
            break;
        }
    }

    static void a(d d1, List list)
    {
        d1.a(list);
    }

    private void a(Venue venue)
    {
        if (h.contains(venue.c()))
        {
            return;
        } else
        {
            i.add(venue);
            h.add(venue.c().toLowerCase());
            return;
        }
    }

    private void a(List list)
    {
        FileOutputStream fileoutputstream;
        FileOutputStream fileoutputstream1;
        try
        {
            fileoutputstream1 = c.openFileOutput("custom_venues.json", 0);
        }
        catch (FileNotFoundException filenotfoundexception)
        {
            com.facebook.e.a.a.a("CustomVenuesAdapter", "File not found wile getting output stream for custom_venues.json", filenotfoundexception);
            fileoutputstream = null;
            continue; /* Loop/switch isn't completed */
        }
        fileoutputstream = fileoutputstream1;
_L6:
        if (fileoutputstream != null) goto _L2; else goto _L1
_L1:
        com.facebook.e.a.a.a("CustomVenuesAdapter", "Failed to acquire output stream for custom_venues.json");
_L4:
        return;
_L2:
        if (list == null || list.size() == 0)
        {
            com.facebook.e.a.a.a("CustomVenuesAdapter", "Custom venues is null during serialization");
            return;
        }
        if (list.size() == 0) goto _L4; else goto _L3
_L3:
        ObjectMapper objectmapper;
        SimpleModule simplemodule = new SimpleModule("CustomVenues", w.a());
        simplemodule.addSerializer(com/instagram/venue/model/Venue, new h(this));
        objectmapper = (new ObjectMapper()).registerModule(simplemodule);
        objectmapper.writeValue(fileoutputstream, list);
        try
        {
            fileoutputstream.close();
            return;
        }
        catch (IOException ioexception3)
        {
            return;
        }
        IOException ioexception1;
        ioexception1;
        com.facebook.e.a.a.a("CustomVenuesAdapter", "Exception while writing out custom_venues.json", ioexception1);
        try
        {
            fileoutputstream.close();
            return;
        }
        catch (IOException ioexception2)
        {
            return;
        }
        Exception exception;
        exception;
        try
        {
            fileoutputstream.close();
        }
        catch (IOException ioexception) { }
        throw exception;
        if (true) goto _L6; else goto _L5
_L5:
    }

    private Venue b(String s)
    {
label0:
        {
            if (s == null || h == null || !h.contains(s.toLowerCase()))
            {
                break label0;
            }
            Iterator iterator = i.iterator();
            Venue venue;
            do
            {
                if (!iterator.hasNext())
                {
                    break label0;
                }
                venue = (Venue)iterator.next();
            } while (!venue.c().toLowerCase().equals(s));
            return venue;
        }
        return null;
    }

    private int c()
    {
        if (g() == 0)
        {
            return g.size();
        } else
        {
            return j.size();
        }
    }

    private Venue c(int i1)
    {
        switch (g())
        {
        default:
            return (Venue)g.get(i1);

        case 1: // '\001'
            return (Venue)j.get(i1);
        }
    }

    private void d()
    {
        j.clear();
        Iterator iterator = i.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            Venue venue = (Venue)iterator.next();
            if (venue.c().toLowerCase().startsWith(a.toLowerCase()))
            {
                j.add(venue);
            }
        } while (true);
    }

    private void e()
    {
        FileInputStream fileinputstream;
        i.clear();
        j.clear();
        SimpleModule simplemodule;
        ObjectMapper objectmapper;
        e e1;
        Iterator iterator;
        Venue venue;
        List list;
        FileInputStream fileinputstream1;
        try
        {
            fileinputstream1 = c.openFileInput("custom_venues.json");
        }
        catch (FileNotFoundException filenotfoundexception)
        {
            fileinputstream = null;
            continue; /* Loop/switch isn't completed */
        }
        fileinputstream = fileinputstream1;
_L2:
        if (fileinputstream == null)
        {
            break MISSING_BLOCK_LABEL_116;
        }
        simplemodule = new SimpleModule("CustomVenueModule", w.a());
        simplemodule.addDeserializer(com/instagram/venue/model/Venue, new g((byte)0));
        objectmapper = (new ObjectMapper()).registerModule(simplemodule);
        e1 = new e(this);
        list = (List)objectmapper.readValue(fileinputstream, e1);
        i.addAll(list);
        Exception exception;
        IOException ioexception1;
        try
        {
            fileinputstream.close();
        }
        catch (IOException ioexception3) { }
        h.clear();
        for (iterator = i.iterator(); iterator.hasNext(); h.add(venue.c()))
        {
            venue = (Venue)iterator.next();
        }

        break MISSING_BLOCK_LABEL_235;
        ioexception1;
        com.facebook.e.a.a.a("CustomVenuesAdapter", "Failed to decode custom_venues.json, deleting file.", ioexception1);
        c.deleteFile("custom_venues.json");
        try
        {
            fileinputstream.close();
        }
        catch (IOException ioexception2) { }
        if (false)
        {
        } else
        {
            break MISSING_BLOCK_LABEL_116;
        }
        exception;
        try
        {
            fileinputstream.close();
        }
        catch (IOException ioexception) { }
        throw exception;
        return;
        if (true) goto _L2; else goto _L1
_L1:
    }

    private void f()
    {
        (new f(this, new ArrayList(i))).execute(null);
    }

    private int g()
    {
        return a == null || a.length() <= 0 ? 0 : 1;
    }

    public final Location a()
    {
        return d;
    }

    public final Venue a(int i1)
    {
        int j1 = c();
        Venue venue;
        if (i1 < j1)
        {
            venue = c(i1);
        } else
        {
            switch (i1 - j1)
            {
            default:
                throw new UnsupportedOperationException("Get item called for unsupported footer row");

            case 0: // '\0'
                venue = b(a);
                break;
            }
            if (venue == null)
            {
                if (a != null)
                {
                    Venue venue1 = com.instagram.venue.a.a.a(a, d);
                    venue1.j();
                    a(venue1);
                    f();
                    return venue1;
                } else
                {
                    return null;
                }
            }
        }
        return venue;
    }

    public final void a(Location location)
    {
        d = location;
    }

    public final void a(String s)
    {
        a = s;
        d();
        notifyDataSetChanged();
    }

    public final void a(List list, boolean flag)
    {
        e = true;
        f = flag;
        g.clear();
        g.addAll(list);
        notifyDataSetChanged();
    }

    public final void b()
    {
        e = true;
        notifyDataSetChanged();
    }

    public final boolean b(int i1)
    {
        int j1;
        if (g() != 0)
        {
            if (i1 >= (j1 = c()) && i1 - j1 == 1)
            {
                return true;
            }
        }
        return false;
    }

    public final int getCount()
    {
        int i1 = c();
        if (f)
        {
            i1++;
        }
        if (g() == 1)
        {
            i1 += 2;
        } else
        if (i1 == 0 && e)
        {
            return 1;
        }
        return i1;
    }

    public final Object getItem(int i1)
    {
        return a(i1);
    }

    public final long getItemId(int i1)
    {
        return 0L;
    }

    public final int getItemViewType(int i1)
    {
        byte byte0;
        int j1;
        byte0 = 1;
        j1 = c();
        if (i1 >= j1) goto _L2; else goto _L1
_L1:
        byte0 = 2;
_L6:
        return byte0;
_L2:
        int k1;
        if (isEmpty())
        {
            return 3;
        }
        k1 = i1 - j1;
        if (g() != byte0) goto _L4; else goto _L3
_L3:
        k1;
        JVM INSTR tableswitch 0 1: default 64
    //                   0 83
    //                   1 14;
           goto _L4 _L5 _L6
_L4:
        return i1 != -1 + getCount() || !f ? -2 : 4;
_L5:
        return 0;
    }

    public final View getView(int i1, View view, ViewGroup viewgroup)
    {
        int j1 = getItemViewType(i1);
        if (view == null)
        {
            view = a(j1, viewgroup);
        }
        a(i1, j1, view);
        return view;
    }

    public final int getViewTypeCount()
    {
        return 5;
    }

    public final boolean hasStableIds()
    {
        return true;
    }

    public final boolean isEmpty()
    {
        return g() == 0 && c() == 0;
    }
}
