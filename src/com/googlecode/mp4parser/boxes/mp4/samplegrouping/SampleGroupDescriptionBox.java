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
//            e, b, c, a, 
//            i, g, h

public class SampleGroupDescriptionBox extends AbstractFullBox
{

    public static final String TYPE = "sgpd";
    private int defaultLength;
    private int descriptionLength;
    private List groupEntries;
    private String groupingType;

    public SampleGroupDescriptionBox()
    {
        super("sgpd");
        groupEntries = new LinkedList();
    }

    private com.googlecode.mp4parser.boxes.mp4.samplegrouping.b parseGroupEntry(ByteBuffer bytebuffer, String s)
    {
        Object obj;
        if ("roll".equals(s))
        {
            obj = new com.googlecode.mp4parser.boxes.mp4.samplegrouping.e();
        } else
        if ("rash".equals(s))
        {
            obj = new c();
        } else
        if ("seig".equals(s))
        {
            obj = new a();
        } else
        if ("rap ".equals(s))
        {
            obj = new i();
        } else
        if ("tele".equals(s))
        {
            obj = new com.googlecode.mp4parser.boxes.mp4.samplegrouping.g();
        } else
        {
            obj = new h();
        }
        ((com.googlecode.mp4parser.boxes.mp4.samplegrouping.b) (obj)).a(bytebuffer);
        return ((com.googlecode.mp4parser.boxes.mp4.samplegrouping.b) (obj));
    }

    protected void _parseDetails(ByteBuffer bytebuffer)
    {
        parseVersionAndFlags(bytebuffer);
        if (getVersion() != 1)
        {
            throw new RuntimeException("SampleGroupDescriptionBox are only supported in version 1");
        }
        groupingType = e.l(bytebuffer);
        if (getVersion() == 1)
        {
            defaultLength = b.a(e.b(bytebuffer));
        }
        long l = e.b(bytebuffer);
        do
        {
            long l1 = l - 1L;
            if (l > 0L)
            {
                int j = defaultLength;
                if (getVersion() == 1)
                {
                    if (defaultLength == 0)
                    {
                        descriptionLength = b.a(e.b(bytebuffer));
                        j = descriptionLength;
                    }
                    int k = j + bytebuffer.position();
                    ByteBuffer bytebuffer1 = bytebuffer.slice();
                    bytebuffer1.limit(j);
                    groupEntries.add(parseGroupEntry(bytebuffer1, groupingType));
                    bytebuffer.position(k);
                    l = l1;
                } else
                {
                    throw new RuntimeException("This should be implemented");
                }
            } else
            {
                return;
            }
        } while (true);
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null || getClass() != obj.getClass())
            {
                return false;
            }
            SampleGroupDescriptionBox samplegroupdescriptionbox = (SampleGroupDescriptionBox)obj;
            if (defaultLength != samplegroupdescriptionbox.defaultLength)
            {
                return false;
            }
            if (groupEntries == null ? samplegroupdescriptionbox.groupEntries != null : !groupEntries.equals(samplegroupdescriptionbox.groupEntries))
            {
                return false;
            }
            if (groupingType == null ? samplegroupdescriptionbox.groupingType != null : !groupingType.equals(samplegroupdescriptionbox.groupingType))
            {
                return false;
            }
        }
        return true;
    }

    protected void getContent(ByteBuffer bytebuffer)
    {
        writeVersionAndFlags(bytebuffer);
        bytebuffer.put(groupingType.getBytes());
        if (getVersion() == 1)
        {
            g.b(bytebuffer, defaultLength);
        }
        g.b(bytebuffer, groupEntries.size());
        com.googlecode.mp4parser.boxes.mp4.samplegrouping.b b1;
        for (Iterator iterator = groupEntries.iterator(); iterator.hasNext(); bytebuffer.put(b1.a()))
        {
            b1 = (com.googlecode.mp4parser.boxes.mp4.samplegrouping.b)iterator.next();
            if (getVersion() == 1 && defaultLength == 0)
            {
                g.b(bytebuffer, b1.a().limit());
            }
        }

    }

    protected long getContentSize()
    {
        long l = 8L;
        if (getVersion() == 1)
        {
            l = 12L;
        }
        long l1 = l + 4L;
        Iterator iterator = groupEntries.iterator();
        long l2;
        com.googlecode.mp4parser.boxes.mp4.samplegrouping.b b1;
        for (l2 = l1; iterator.hasNext(); l2 += b1.b())
        {
            b1 = (com.googlecode.mp4parser.boxes.mp4.samplegrouping.b)iterator.next();
            if (getVersion() == 1 && defaultLength == 0)
            {
                l2 += 4L;
            }
        }

        return l2;
    }

    public int getDefaultLength()
    {
        return defaultLength;
    }

    public List getGroupEntries()
    {
        return groupEntries;
    }

    public String getGroupingType()
    {
        return groupingType;
    }

    public int hashCode()
    {
        int j;
        int k;
        List list;
        int l;
        if (groupingType != null)
        {
            j = groupingType.hashCode();
        } else
        {
            j = 0;
        }
        k = 31 * (j * 31 + defaultLength);
        list = groupEntries;
        l = 0;
        if (list != null)
        {
            l = groupEntries.hashCode();
        }
        return k + l;
    }

    public void setDefaultLength(int j)
    {
        defaultLength = j;
    }

    public void setGroupEntries(List list)
    {
        groupEntries = list;
    }

    public void setGroupingType(String s)
    {
        groupingType = s;
    }

    public String toString()
    {
        return (new StringBuilder("SampleGroupDescriptionBox{groupingType='")).append(groupingType).append('\'').append(", defaultLength=").append(defaultLength).append(", groupEntries=").append(groupEntries).append('}').toString();
    }
}
