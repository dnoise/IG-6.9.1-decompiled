// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes;

import com.coremedia.iso.boxes.ContainerBox;
import com.coremedia.iso.boxes.TrackHeaderBox;
import com.coremedia.iso.boxes.a;
import com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox;
import com.coremedia.iso.e;
import com.coremedia.iso.g;
import com.googlecode.mp4parser.AbstractFullBox;
import com.googlecode.mp4parser.c.c;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

// Referenced classes of package com.googlecode.mp4parser.boxes:
//            a, AbstractTrackEncryptionBox, b

public abstract class AbstractSampleEncryptionBox extends AbstractFullBox
{

    int algorithmId;
    List entries;
    int ivSize;
    byte kid[] = {
        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
        -1, -1, -1, -1, -1, -1
    };

    protected AbstractSampleEncryptionBox(String s)
    {
        super(s);
        algorithmId = -1;
        ivSize = -1;
        entries = new LinkedList();
    }

    public void _parseDetails(ByteBuffer bytebuffer)
    {
        parseVersionAndFlags(bytebuffer);
        int i;
        long l;
        if ((1 & getFlags()) > 0)
        {
            algorithmId = e.c(bytebuffer);
            ivSize = e.f(bytebuffer);
            i = ivSize;
            kid = new byte[16];
            bytebuffer.get(kid);
        } else
        {
            Iterator iterator = c.b(this, "/moov[0]/trak/tkhd").iterator();
            i = -1;
            while (iterator.hasNext()) 
            {
                a a1 = (a)iterator.next();
                int j;
                if (((TrackHeaderBox)a1).getTrackId() == ((TrackFragmentHeaderBox)getParent().getBoxes(com/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox).get(0)).getTrackId())
                {
                    AbstractTrackEncryptionBox abstracttrackencryptionbox = (AbstractTrackEncryptionBox)c.a(a1, "../mdia[0]/minf[0]/stbl[0]/stsd[0]/enc.[0]/sinf[0]/schi[0]/tenc[0]");
                    AbstractTrackEncryptionBox abstracttrackencryptionbox1;
                    if (abstracttrackencryptionbox == null)
                    {
                        abstracttrackencryptionbox1 = (AbstractTrackEncryptionBox)c.a(a1, "../mdia[0]/minf[0]/stbl[0]/stsd[0]/enc.[0]/sinf[0]/schi[0]/uuid[0]");
                    } else
                    {
                        abstracttrackencryptionbox1 = abstracttrackencryptionbox;
                    }
                    j = abstracttrackencryptionbox1.getDefaultIvSize();
                } else
                {
                    j = i;
                }
                i = j;
            }
        }
        l = e.b(bytebuffer);
        do
        {
            long l1 = l - 1L;
            if (l > 0L)
            {
                com.googlecode.mp4parser.boxes.a a2 = new com.googlecode.mp4parser.boxes.a(this);
                int k;
                if (i < 0)
                {
                    k = 8;
                } else
                {
                    k = i;
                }
                a2.a = new byte[k];
                bytebuffer.get(a2.a);
                if ((2 & getFlags()) > 0)
                {
                    int i1 = e.d(bytebuffer);
                    a2.b = new LinkedList();
                    do
                    {
                        int j1 = i1 - 1;
                        if (i1 <= 0)
                        {
                            break;
                        }
                        a2.b.add(a2.a(e.d(bytebuffer), e.b(bytebuffer)));
                        i1 = j1;
                    } while (true);
                }
                entries.add(a2);
                l = l1;
            } else
            {
                return;
            }
        } while (true);
    }

    public com.googlecode.mp4parser.boxes.a createEntry()
    {
        return new com.googlecode.mp4parser.boxes.a(this);
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null || getClass() != obj.getClass())
            {
                return false;
            }
            AbstractSampleEncryptionBox abstractsampleencryptionbox = (AbstractSampleEncryptionBox)obj;
            if (algorithmId != abstractsampleencryptionbox.algorithmId)
            {
                return false;
            }
            if (ivSize != abstractsampleencryptionbox.ivSize)
            {
                return false;
            }
            if (entries == null ? abstractsampleencryptionbox.entries != null : !entries.equals(abstractsampleencryptionbox.entries))
            {
                return false;
            }
            if (!Arrays.equals(kid, abstractsampleencryptionbox.kid))
            {
                return false;
            }
        }
        return true;
    }

    public int getAlgorithmId()
    {
        return algorithmId;
    }

    public void getBox(WritableByteChannel writablebytechannel)
    {
        super.getBox(writablebytechannel);
    }

    protected void getContent(ByteBuffer bytebuffer)
    {
        writeVersionAndFlags(bytebuffer);
        if (isOverrideTrackEncryptionBoxParameters())
        {
            g.a(bytebuffer, algorithmId);
            g.d(bytebuffer, ivSize);
            bytebuffer.put(kid);
        }
        g.b(bytebuffer, entries.size());
        Iterator iterator = entries.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            com.googlecode.mp4parser.boxes.a a1 = (com.googlecode.mp4parser.boxes.a)iterator.next();
            if (isOverrideTrackEncryptionBoxParameters())
            {
                byte abyte0[] = new byte[ivSize];
                System.arraycopy(a1.a, 0, abyte0, ivSize - a1.a.length, a1.a.length);
                bytebuffer.put(abyte0);
            } else
            {
                bytebuffer.put(a1.a);
            }
            if (isSubSampleEncryption())
            {
                g.b(bytebuffer, a1.b.size());
                Iterator iterator1 = a1.b.iterator();
                while (iterator1.hasNext()) 
                {
                    b b1 = (b)iterator1.next();
                    g.b(bytebuffer, b1.a);
                    g.b(bytebuffer, b1.b);
                }
            }
        } while (true);
    }

    protected long getContentSize()
    {
        long l;
        long l1;
        Iterator iterator;
        long l2;
        if (isOverrideTrackEncryptionBoxParameters())
        {
            l = 8L + (long)kid.length;
        } else
        {
            l = 4L;
        }
        l1 = l + 4L;
        iterator = entries.iterator();
        for (l2 = l1; iterator.hasNext(); l2 += ((com.googlecode.mp4parser.boxes.a)iterator.next()).a()) { }
        return l2;
    }

    public List getEntries()
    {
        return entries;
    }

    public List getEntrySizes()
    {
        ArrayList arraylist = new ArrayList(entries.size());
        Iterator iterator = entries.iterator();
        while (iterator.hasNext()) 
        {
            com.googlecode.mp4parser.boxes.a a1 = (com.googlecode.mp4parser.boxes.a)iterator.next();
            short word0 = (short)a1.a.length;
            short word1;
            if (isSubSampleEncryption())
            {
                word1 = (short)((short)(word0 + 2) + 6 * a1.b.size());
            } else
            {
                word1 = word0;
            }
            arraylist.add(Short.valueOf(word1));
        }
        return arraylist;
    }

    public int getIvSize()
    {
        return ivSize;
    }

    public byte[] getKid()
    {
        return kid;
    }

    public int getOffsetToFirstIV()
    {
        byte byte0;
        byte byte1;
        if (getSize() > 0x100000000L)
        {
            byte0 = 16;
        } else
        {
            byte0 = 8;
        }
        if (isOverrideTrackEncryptionBoxParameters())
        {
            byte1 = 20;
        } else
        {
            byte1 = 0;
        }
        return 4 + (byte0 + byte1);
    }

    public int getSampleCount()
    {
        return entries.size();
    }

    public int hashCode()
    {
        int i = 31 * (31 * algorithmId + ivSize);
        int j;
        int k;
        List list;
        int l;
        if (kid != null)
        {
            j = Arrays.hashCode(kid);
        } else
        {
            j = 0;
        }
        k = 31 * (j + i);
        list = entries;
        l = 0;
        if (list != null)
        {
            l = entries.hashCode();
        }
        return k + l;
    }

    public boolean isOverrideTrackEncryptionBoxParameters()
    {
        return (1 & getFlags()) > 0;
    }

    public boolean isSubSampleEncryption()
    {
        return (2 & getFlags()) > 0;
    }

    public void setAlgorithmId(int i)
    {
        algorithmId = i;
    }

    public void setEntries(List list)
    {
        entries = list;
    }

    public void setIvSize(int i)
    {
        ivSize = i;
    }

    public void setKid(byte abyte0[])
    {
        kid = abyte0;
    }

    public void setOverrideTrackEncryptionBoxParameters(boolean flag)
    {
        if (flag)
        {
            setFlags(1 | getFlags());
            return;
        } else
        {
            setFlags(0xfffffe & getFlags());
            return;
        }
    }

    public void setSubSampleEncryption(boolean flag)
    {
        if (flag)
        {
            setFlags(2 | getFlags());
            return;
        } else
        {
            setFlags(0xfffffd & getFlags());
            return;
        }
    }
}
