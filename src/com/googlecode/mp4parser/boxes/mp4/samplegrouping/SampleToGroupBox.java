// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.mp4.samplegrouping;

import com.coremedia.iso.e;
import com.coremedia.iso.g;
import com.googlecode.mp4parser.AbstractFullBox;
import com.googlecode.mp4parser.c.b;
import java.nio.ByteBuffer;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

// Referenced classes of package com.googlecode.mp4parser.boxes.mp4.samplegrouping:
//            f

public class SampleToGroupBox extends AbstractFullBox
{

    public static final String TYPE = "sbgp";
    List entries;
    private String groupingType;
    private String groupingTypeParameter;

    public SampleToGroupBox()
    {
        super("sbgp");
        entries = new LinkedList();
    }

    protected void _parseDetails(ByteBuffer bytebuffer)
    {
        parseVersionAndFlags(bytebuffer);
        groupingType = e.l(bytebuffer);
        if (getVersion() == 1)
        {
            groupingTypeParameter = e.l(bytebuffer);
        }
        long l = e.b(bytebuffer);
        do
        {
            long l1 = l - 1L;
            if (l > 0L)
            {
                entries.add(new f(b.a(e.b(bytebuffer)), b.a(e.b(bytebuffer))));
                l = l1;
            } else
            {
                return;
            }
        } while (true);
    }

    protected void getContent(ByteBuffer bytebuffer)
    {
        writeVersionAndFlags(bytebuffer);
        bytebuffer.put(groupingType.getBytes());
        if (getVersion() == 1)
        {
            bytebuffer.put(groupingTypeParameter.getBytes());
        }
        g.b(bytebuffer, entries.size());
        f f1;
        for (Iterator iterator = entries.iterator(); iterator.hasNext(); g.b(bytebuffer, f1.b()))
        {
            f1 = (f)iterator.next();
            g.b(bytebuffer, f1.a());
        }

    }

    protected long getContentSize()
    {
        if (getVersion() == 1)
        {
            return (long)(16 + 8 * entries.size());
        } else
        {
            return (long)(12 + 8 * entries.size());
        }
    }

    public List getEntries()
    {
        return entries;
    }

    public String getGroupingType()
    {
        return groupingType;
    }

    public String getGroupingTypeParameter()
    {
        return groupingTypeParameter;
    }

    public void setEntries(List list)
    {
        entries = list;
    }

    public void setGroupingType(String s)
    {
        groupingType = s;
    }

    public void setGroupingTypeParameter(String s)
    {
        groupingTypeParameter = s;
    }
}
