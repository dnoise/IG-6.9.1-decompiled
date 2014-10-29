// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.a.c;

import com.coremedia.iso.boxes.CompositionTimeToSample;
import com.coremedia.iso.boxes.SampleDescriptionBox;
import com.coremedia.iso.boxes.TimeToSampleBox;
import com.coremedia.iso.boxes.b;
import com.coremedia.iso.boxes.k;
import com.coremedia.iso.boxes.sampleentry.AudioSampleEntry;
import com.googlecode.mp4parser.a.e;
import com.googlecode.mp4parser.boxes.mp4.ESDescriptorBox;
import com.googlecode.mp4parser.boxes.mp4.a.f;
import com.googlecode.mp4parser.boxes.mp4.a.h;
import com.googlecode.mp4parser.boxes.mp4.a.n;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.channels.Channels;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public final class a extends com.googlecode.mp4parser.a.a
{

    e a[];
    SampleDescriptionBox b;

    public transient a(e ae[])
    {
        int i1;
        int j1;
        a = ae;
        i1 = ae.length;
        j1 = 0;
_L2:
        e e1;
        if (j1 >= i1)
        {
            break MISSING_BLOCK_LABEL_240;
        }
        e1 = ae[j1];
        if (b != null)
        {
            break; /* Loop/switch isn't completed */
        }
        b = e1.f();
_L4:
        j1++;
        if (true) goto _L2; else goto _L1
_L1:
        ByteArrayOutputStream bytearrayoutputstream1;
        byte abyte0[];
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        bytearrayoutputstream1 = new ByteArrayOutputStream();
        e1.f().getBox(Channels.newChannel(bytearrayoutputstream));
        b.getBox(Channels.newChannel(bytearrayoutputstream1));
        abyte0 = bytearrayoutputstream.toByteArray();
        if (Arrays.equals(bytearrayoutputstream1.toByteArray(), abyte0)) goto _L4; else goto _L3
_L3:
        SampleDescriptionBox sampledescriptionbox = e1.f();
        if (b.getBoxes().size() != 1 || sampledescriptionbox.getBoxes().size() != 1 || !(b.getBoxes().get(0) instanceof AudioSampleEntry) || !(sampledescriptionbox.getBoxes().get(0) instanceof AudioSampleEntry))
        {
            break MISSING_BLOCK_LABEL_241;
        }
        AudioSampleEntry audiosampleentry = a((AudioSampleEntry)b.getBoxes().get(0), (AudioSampleEntry)sampledescriptionbox.getBoxes().get(0));
        if (audiosampleentry == null)
        {
            break MISSING_BLOCK_LABEL_241;
        }
        b.setBoxes(Collections.singletonList(audiosampleentry));
        return;
        throw new IOException((new StringBuilder("Cannot append ")).append(e1).append(" to ").append(ae[0]).append(" since their Sample Description Boxes differ: \n").append(e1.f()).append("\n vs. \n").append(ae[0].f()).toString());
    }

    private static AudioSampleEntry a(AudioSampleEntry audiosampleentry, AudioSampleEntry audiosampleentry1)
    {
        AudioSampleEntry audiosampleentry2;
        if (!audiosampleentry.getType().equals(audiosampleentry1.getType()))
        {
            break MISSING_BLOCK_LABEL_900;
        }
        audiosampleentry2 = new AudioSampleEntry(audiosampleentry1.getType());
        if (audiosampleentry.getBytesPerFrame() != audiosampleentry1.getBytesPerFrame()) goto _L2; else goto _L1
_L1:
        audiosampleentry2.setBytesPerFrame(audiosampleentry.getBytesPerFrame());
        if (audiosampleentry.getBytesPerPacket() != audiosampleentry1.getBytesPerPacket()) goto _L4; else goto _L3
_L3:
        audiosampleentry2.setBytesPerPacket(audiosampleentry.getBytesPerPacket());
        if (audiosampleentry.getBytesPerSample() != audiosampleentry1.getBytesPerSample()) goto _L6; else goto _L5
_L5:
        audiosampleentry2.setBytesPerSample(audiosampleentry.getBytesPerSample());
        if (audiosampleentry.getChannelCount() != audiosampleentry1.getChannelCount()) goto _L8; else goto _L7
_L7:
        audiosampleentry2.setChannelCount(audiosampleentry.getChannelCount());
        if (audiosampleentry.getPacketSize() != audiosampleentry1.getPacketSize()) goto _L10; else goto _L9
_L9:
        audiosampleentry2.setPacketSize(audiosampleentry.getPacketSize());
        if (audiosampleentry.getCompressionId() != audiosampleentry1.getCompressionId()) goto _L12; else goto _L11
_L11:
        audiosampleentry2.setCompressionId(audiosampleentry.getCompressionId());
        if (audiosampleentry.getSampleRate() != audiosampleentry1.getSampleRate()) goto _L14; else goto _L13
_L13:
        audiosampleentry2.setSampleRate(audiosampleentry.getSampleRate());
        if (audiosampleentry.getSampleSize() != audiosampleentry1.getSampleSize()) goto _L16; else goto _L15
_L15:
        audiosampleentry2.setSampleSize(audiosampleentry.getSampleSize());
        if (audiosampleentry.getSamplesPerPacket() != audiosampleentry1.getSamplesPerPacket()) goto _L18; else goto _L17
_L17:
        audiosampleentry2.setSamplesPerPacket(audiosampleentry.getSamplesPerPacket());
        if (audiosampleentry.getSoundVersion() != audiosampleentry1.getSoundVersion()) goto _L20; else goto _L19
_L19:
        audiosampleentry2.setSoundVersion(audiosampleentry.getSoundVersion());
        if (!Arrays.equals(audiosampleentry.getSoundVersion2Data(), audiosampleentry1.getSoundVersion2Data())) goto _L22; else goto _L21
_L21:
        audiosampleentry2.setSoundVersion2Data(audiosampleentry.getSoundVersion2Data());
        if (audiosampleentry.getBoxes().size() != audiosampleentry1.getBoxes().size()) goto _L24; else goto _L23
_L23:
        Iterator iterator;
        Iterator iterator1;
        iterator = audiosampleentry.getBoxes().iterator();
        iterator1 = audiosampleentry1.getBoxes().iterator();
_L27:
        com.coremedia.iso.boxes.a a1;
        com.coremedia.iso.boxes.a a2;
        h h1;
        h h2;
        if (!iterator.hasNext())
        {
            break; /* Loop/switch isn't completed */
        }
        a1 = (com.coremedia.iso.boxes.a)iterator.next();
        a2 = (com.coremedia.iso.boxes.a)iterator1.next();
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        ByteArrayOutputStream bytearrayoutputstream1 = new ByteArrayOutputStream();
        a1.getBox(Channels.newChannel(bytearrayoutputstream));
        a2.getBox(Channels.newChannel(bytearrayoutputstream1));
        if (!Arrays.equals(bytearrayoutputstream.toByteArray(), bytearrayoutputstream1.toByteArray()))
        {
            break MISSING_BLOCK_LABEL_375;
        }
          goto _L25
_L2:
        return null;
_L4:
        return null;
_L6:
        return null;
_L8:
        return null;
_L10:
        return null;
_L12:
        return null;
_L14:
        return null;
_L16:
        return null;
_L18:
        return null;
_L20:
        return null;
_L22:
        return null;
        com.googlecode.mp4parser.boxes.mp4.a.e e1;
        com.googlecode.mp4parser.boxes.mp4.a.e e2;
        if (!"esds".equals(a1.getType()) || !"esds".equals(a2.getType()))
        {
            continue; /* Loop/switch isn't completed */
        }
        ESDescriptorBox esdescriptorbox = (ESDescriptorBox)a1;
        ESDescriptorBox esdescriptorbox1 = (ESDescriptorBox)a2;
        h1 = esdescriptorbox.getEsDescriptor();
        h2 = esdescriptorbox1.getEsDescriptor();
        if (h1.j() != h2.j())
        {
            return null;
        }
        if (h1.m() != h2.m())
        {
            return null;
        }
        if (h1.p() != h2.p())
        {
            return null;
        }
        if (h1.h() != h2.h())
        {
            return null;
        }
        if (h1.g() != h2.g())
        {
            return null;
        }
        if (h1.k() != h2.k())
        {
            return null;
        }
        if (h1.o() != h2.o())
        {
            return null;
        }
        if (h1.i() != h2.i())
        {
            return null;
        }
        if (h1.l() != h2.l())
        {
            return null;
        }
        if (h1.n() == null ? h2.n() != null : !h1.n().equals(h2.n()))
        {
            return null;
        }
        if (h1.d() == null ? h2.d() != null : !h1.d().equals(h2.d()))
        {
            e1 = h1.d();
            e2 = h2.d();
            if (!e1.e().equals(e2.e()))
            {
                return null;
            }
            break MISSING_BLOCK_LABEL_714;
        }
_L26:
        if (h1.f() == null ? h2.f() != null : !h1.f().equals(h2.f()))
        {
            return null;
        }
        break MISSING_BLOCK_LABEL_855;
        e1.l();
        e2.l();
        e1.j();
        e2.j();
        if (e1.d() == null ? e2.d() != null : !e1.d().equals(e2.d()))
        {
            return null;
        }
        e1.k();
        e2.k();
        if (!e1.f().equals(e2.f()))
        {
            return null;
        }
        if (e1.g() != e2.g())
        {
            return null;
        }
        if (e1.h() != e2.h())
        {
            return null;
        }
        if (e1.i() != e2.i())
        {
            return null;
        }
          goto _L26
        if (h1.e() == null ? h2.e() != null : !h1.e().equals(h2.e()))
        {
            return null;
        }
_L25:
        audiosampleentry2.addBox(a1);
        if (true) goto _L27; else goto _L24
_L24:
        return audiosampleentry2;
        return null;
    }

    public final List e()
    {
        ArrayList arraylist = new ArrayList();
        e ae[] = a;
        int i1 = ae.length;
        for (int j1 = 0; j1 < i1; j1++)
        {
            arraylist.addAll(ae[j1].e());
        }

        return arraylist;
    }

    public final SampleDescriptionBox f()
    {
        return b;
    }

    public final List g()
    {
        if (a[0].g() != null && !a[0].g().isEmpty())
        {
            LinkedList linkedlist = new LinkedList();
            e ae[] = a;
            int i1 = ae.length;
            for (int j1 = 0; j1 < i1; j1++)
            {
                linkedlist.add(TimeToSampleBox.blowupTimeToSamples(ae[j1].g()));
            }

            LinkedList linkedlist1 = new LinkedList();
            for (Iterator iterator = linkedlist.iterator(); iterator.hasNext();)
            {
                long al[] = (long[])iterator.next();
                int k1 = al.length;
                int l1 = 0;
                while (l1 < k1) 
                {
                    long l2 = al[l1];
                    if (linkedlist1.isEmpty() || ((k)linkedlist1.getLast()).b() != l2)
                    {
                        linkedlist1.add(new k(1L, l2));
                    } else
                    {
                        k k2 = (k)linkedlist1.getLast();
                        k2.a(1L + k2.a());
                    }
                    l1++;
                }
            }

            return linkedlist1;
        } else
        {
            return null;
        }
    }

    public final List h()
    {
        if (a[0].h() != null && !a[0].h().isEmpty())
        {
            LinkedList linkedlist = new LinkedList();
            e ae[] = a;
            int i1 = ae.length;
            for (int j1 = 0; j1 < i1; j1++)
            {
                linkedlist.add(CompositionTimeToSample.blowupCompositionTimes(ae[j1].h()));
            }

            LinkedList linkedlist1 = new LinkedList();
            for (Iterator iterator = linkedlist.iterator(); iterator.hasNext();)
            {
                int ai[] = (int[])iterator.next();
                int k1 = ai.length;
                int l1 = 0;
                while (l1 < k1) 
                {
                    int i2 = ai[l1];
                    if (linkedlist1.isEmpty() || ((b)linkedlist1.getLast()).b() != i2)
                    {
                        linkedlist1.add(new b(1, i2));
                    } else
                    {
                        b b1 = (b)linkedlist1.getLast();
                        b1.a(1 + b1.a());
                    }
                    l1++;
                }
            }

            return linkedlist1;
        } else
        {
            return null;
        }
    }

    public final long[] i()
    {
        long al[];
        if (a[0].i() != null && a[0].i().length > 0)
        {
            e ae[] = a;
            int i1 = ae.length;
            int j1 = 0;
            int k1 = 0;
            for (; j1 < i1; j1++)
            {
                k1 += ae[j1].i().length;
            }

            al = new long[k1];
            e ae1[] = a;
            int l1 = ae1.length;
            int i2 = 0;
            long l2 = 0L;
            int i3;
            for (int j2 = 0; i2 < l1; j2 = i3)
            {
                e e1 = ae1[i2];
                long al1[] = e1.i();
                int k2 = al1.length;
                i3 = j2;
                for (int j3 = 0; j3 < k2;)
                {
                    long l3 = al1[j3];
                    int k3 = i3 + 1;
                    al[i3] = l3 + l2;
                    j3++;
                    i3 = k3;
                }

                l2 += e1.e().size();
                i2++;
            }

        } else
        {
            al = null;
        }
        return al;
    }

    public final List j()
    {
        int i1 = 0;
        LinkedList linkedlist;
        if (a[0].j() != null && !a[0].j().isEmpty())
        {
            linkedlist = new LinkedList();
            e ae[] = a;
            for (int j1 = ae.length; i1 < j1; i1++)
            {
                linkedlist.addAll(ae[i1].j());
            }

        } else
        {
            linkedlist = null;
        }
        return linkedlist;
    }

    public final com.googlecode.mp4parser.a.f k()
    {
        return a[0].k();
    }

    public final String l()
    {
        return a[0].l();
    }

    public final com.coremedia.iso.boxes.a m()
    {
        return a[0].m();
    }
}
