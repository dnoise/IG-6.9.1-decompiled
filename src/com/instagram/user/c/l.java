// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.user.c;

import com.fasterxml.jackson.a.r;
import com.instagram.common.y.e;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.instagram.user.c:
//            a, k, f

public final class l
{

    public static a a(com.fasterxml.jackson.a.l l1)
    {
        a a1 = new a();
        if (l1.getCurrentToken() != r.b)
        {
            l1.skipChildren();
            return null;
        }
        for (; l1.nextToken() != r.c; l1.skipChildren())
        {
            String s = l1.getCurrentName();
            l1.nextToken();
            a(a1, s, l1);
        }

        return a1.a();
    }

    private static boolean a(a a1, String s, com.fasterxml.jackson.a.l l1)
    {
        if ("extra_display_name".equals(s))
        {
            r r13 = l1.getCurrentToken();
            r r14 = r.m;
            String s6 = null;
            if (r13 != r14)
            {
                s6 = l1.getText();
            }
            a1.r = s6;
            return true;
        }
        if ("geo_media_count".equals(s))
        {
            a1.o = Integer.valueOf(l1.getValueAsInt());
            return true;
        }
        if ("is_verified".equals(s))
        {
            a1.q = l1.getValueAsBoolean();
            return true;
        }
        if ("usertags_count".equals(s))
        {
            a1.p = Integer.valueOf(l1.getValueAsInt());
            return true;
        }
        if ("geo_ip_blocked_extra_info".equals(s))
        {
            r r11 = l1.getCurrentToken();
            r r12 = r.m;
            String s5 = null;
            if (r11 != r12)
            {
                s5 = l1.getText();
            }
            a1.f = s5;
            return true;
        }
        if ("chaining_suggestions".equals(s))
        {
            r r9 = l1.getCurrentToken();
            r r10 = r.d;
            ArrayList arraylist = null;
            if (r9 == r10)
            {
                arraylist = new ArrayList();
                do
                {
                    if (l1.nextToken() == r.e)
                    {
                        break;
                    }
                    a a2 = a(l1);
                    if (a2 != null)
                    {
                        arraylist.add(a2);
                    }
                } while (true);
            }
            a1.s = arraylist;
            return true;
        }
        if ("full_name".equals(s))
        {
            a1.b = e.d(l1.getText());
            return true;
        }
        if ("following_count".equals(s))
        {
            a1.l = Integer.valueOf(l1.getValueAsInt());
            return true;
        }
        if ("profile_pic_url".equals(s))
        {
            r r7 = l1.getCurrentToken();
            r r8 = r.m;
            String s4 = null;
            if (r7 != r8)
            {
                s4 = l1.getText();
            }
            a1.c = s4;
            return true;
        }
        if ("username".equals(s))
        {
            r r5 = l1.getCurrentToken();
            r r6 = r.m;
            String s3 = null;
            if (r5 != r6)
            {
                s3 = l1.getText();
            }
            a1.a = s3;
            return true;
        }
        if ("usertag_review_enabled".equals(s))
        {
            a1.h = l1.getValueAsBoolean();
            return true;
        }
        if ("id".equals(s) || "pk".equals(s))
        {
            r r1 = l1.getCurrentToken();
            r r2 = r.m;
            String s1 = null;
            if (r1 != r2)
            {
                s1 = l1.getText();
            }
            a1.d = s1;
            return true;
        }
        if ("media_count".equals(s))
        {
            a1.m = Integer.valueOf(l1.getValueAsInt());
            return true;
        }
        if ("biography".equals(s))
        {
            a1.i = e.d(l1.getText());
            return true;
        }
        if ("is_staff".equals(s))
        {
            a1.g = l1.getValueAsBoolean();
            return true;
        }
        if ("follower_count".equals(s))
        {
            a1.k = Integer.valueOf(l1.getValueAsInt());
            return true;
        }
        if ("friendship_status".equals(s))
        {
            a1.t = k.a(l1);
            return true;
        }
        if ("is_private".equals(s))
        {
            f f1;
            if (l1.getBooleanValue())
            {
                f1 = f.c;
            } else
            {
                f1 = f.b;
            }
            a1.n = f1;
            return true;
        }
        if ("is_geo_ip_blocked".equals(s))
        {
            a1.e = Boolean.valueOf(l1.getValueAsBoolean());
            return true;
        }
        if ("external_url".equals(s))
        {
            r r3 = l1.getCurrentToken();
            r r4 = r.m;
            String s2 = null;
            if (r3 != r4)
            {
                s2 = l1.getText();
            }
            a1.j = s2;
            return true;
        } else
        {
            return false;
        }
    }
}
