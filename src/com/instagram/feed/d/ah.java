// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.d;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;
import com.instagram.model.a.a;
import com.instagram.model.b.d;
import com.instagram.venue.model.Venue;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

// Referenced classes of package com.instagram.feed.d:
//            l, j, ag, o, 
//            ae, af

public final class ah
{

    protected static com.instagram.feed.d.l a(l l1)
    {
        com.instagram.feed.d.l l2 = new com.instagram.feed.d.l();
        if (l1.getCurrentToken() != r.b)
        {
            l1.skipChildren();
            return null;
        }
        for (; l1.nextToken() != r.c; l1.skipChildren())
        {
            String s = l1.getCurrentName();
            l1.nextToken();
            a(l2, s, l1);
        }

        return l2.a();
    }

    private static boolean a(com.instagram.feed.d.l l1, String s, l l2)
    {
        if ("location".equals(s))
        {
            l1.o = Venue.a(l2, true);
            return true;
        }
        if ("user".equals(s))
        {
            l1.b = com.instagram.user.c.l.a(l2);
            return true;
        }
        if ("organic_tracking_token".equals(s))
        {
            r r19 = l2.getCurrentToken();
            r r20 = r.m;
            String s7 = null;
            if (r19 != r20)
            {
                s7 = l2.getText();
            }
            l1.v = s7;
            return true;
        }
        if ("taken_at".equals(s))
        {
            l1.d = l.b(l2);
            return true;
        }
        if ("algorithm".equals(s))
        {
            r r17 = l2.getCurrentToken();
            r r18 = r.m;
            String s6 = null;
            if (r17 != r18)
            {
                s6 = l2.getText();
            }
            l1.z = s6;
            return true;
        }
        if ("id".equals(s))
        {
            r r15 = l2.getCurrentToken();
            r r16 = r.m;
            String s5 = null;
            if (r15 != r16)
            {
                s5 = l2.getText();
            }
            l1.a = s5;
            return true;
        }
        if ("comments".equals(s))
        {
            r r13 = l2.getCurrentToken();
            r r14 = r.d;
            ArrayList arraylist3 = null;
            if (r13 == r14)
            {
                arraylist3 = new ArrayList();
                do
                {
                    if (l2.nextToken() == r.e)
                    {
                        break;
                    }
                    b b = com.instagram.feed.d.j.a(l2);
                    if (b != null)
                    {
                        arraylist3.add(b);
                    }
                } while (true);
            }
            l1.l = arraylist3;
            return true;
        }
        if ("collapse_comments".equals(s))
        {
            l1.u = l2.getValueAsBoolean();
            return true;
        }
        if ("comment_count".equals(s))
        {
            l1.j = Integer.valueOf(l2.getValueAsInt());
            return true;
        }
        if ("last_seen_at".equals(s))
        {
            l1.x = l2.getValueAsLong();
            return true;
        }
        if ("image_versions".equals(s))
        {
            r r11 = l2.getCurrentToken();
            r r12 = r.d;
            ArrayList arraylist2 = null;
            if (r11 == r12)
            {
                arraylist2 = new ArrayList();
                do
                {
                    if (l2.nextToken() == r.e)
                    {
                        break;
                    }
                    s s4 = com.instagram.feed.d.ag.a(l2);
                    if (s4 != null)
                    {
                        arraylist2.add(s4);
                    }
                } while (true);
            }
            l1.e = arraylist2;
            return true;
        }
        if ("photo_of_you".equals(s))
        {
            l1.s = l2.getValueAsBoolean();
            return true;
        }
        if ("lat".equals(s))
        {
            l1.p = Double.valueOf(l2.getValueAsDouble());
            return true;
        }
        if ("recipients".equals(s))
        {
            r r9 = l2.getCurrentToken();
            r r10 = r.d;
            ArrayList arraylist1 = null;
            if (r9 == r10)
            {
                arraylist1 = new ArrayList();
                do
                {
                    if (l2.nextToken() == r.e)
                    {
                        break;
                    }
                    com.instagram.model.b.a a2 = d.a(l2);
                    if (a2 != null)
                    {
                        arraylist1.add(a2);
                    }
                } while (true);
            }
            l1.w = arraylist1;
            return true;
        }
        if ("caption".equals(s))
        {
            l1.k = com.instagram.feed.d.j.a(l2);
            return true;
        }
        if ("explore_context".equals(s))
        {
            r r7 = l2.getCurrentToken();
            r r8 = r.m;
            String s3 = null;
            if (r7 != r8)
            {
                s3 = l2.getText();
            }
            l1.A = s3;
            return true;
        }
        if ("impression_token".equals(s))
        {
            r r5 = l2.getCurrentToken();
            r r6 = r.m;
            String s2 = null;
            if (r5 != r6)
            {
                s2 = l2.getText();
            }
            l1.B = s2;
            return true;
        }
        if ("video_versions".equals(s))
        {
            r r3 = l2.getCurrentToken();
            r r4 = r.d;
            ArrayList arraylist = null;
            if (r3 == r4)
            {
                arraylist = new ArrayList();
                do
                {
                    if (l2.nextToken() == r.e)
                    {
                        break;
                    }
                    s s1 = com.instagram.feed.d.ag.a(l2);
                    if (s1 != null)
                    {
                        arraylist.add(s1);
                    }
                } while (true);
            }
            l1.f = arraylist;
            return true;
        }
        if ("like_count".equals(s))
        {
            l1.g = l2.getValueAsInt();
            return true;
        }
        if ("lng".equals(s))
        {
            l1.q = Double.valueOf(l2.getValueAsDouble());
            return true;
        }
        if ("last_comment_at".equals(s))
        {
            l1.y = l2.getValueAsLong();
            return true;
        }
        if ("has_liked".equals(s))
        {
            l1.i = com.instagram.feed.d.o.a(l2.getValueAsBoolean());
            return true;
        }
        if ("media_type".equals(s))
        {
            l1.c = com.instagram.model.a.a.a(l2.getValueAsInt());
            return true;
        }
        if ("has_more_comments".equals(s))
        {
            l1.m = l2.getValueAsBoolean();
            return true;
        }
        if ("usertags".equals(s))
        {
            l1.r = com.instagram.feed.d.ae.a(l2);
            return true;
        }
        if ("injected".equals(s))
        {
            l1.t = com.instagram.feed.d.af.a(l2);
            return true;
        }
        if ("next_max_id".equals(s))
        {
            l1.n = l2.getValueAsLong();
            return true;
        }
        if ("likers".equals(s))
        {
            r r1 = l2.getCurrentToken();
            r r2 = r.d;
            HashSet hashset = null;
            if (r1 == r2)
            {
                hashset = new HashSet();
                do
                {
                    if (l2.nextToken() == r.e)
                    {
                        break;
                    }
                    com.instagram.user.c.a a1 = com.instagram.user.c.l.a(l2);
                    if (a1 != null)
                    {
                        hashset.add(a1);
                    }
                } while (true);
            }
            l1.h = hashset;
            return true;
        } else
        {
            return false;
        }
    }
}
