// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.h;

import android.content.Intent;
import com.facebook.e.a.a;
import com.fasterxml.jackson.a.e;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.instagram.common.i.c;
import com.instagram.feed.d.ad;
import com.instagram.feed.d.b;
import com.instagram.feed.d.j;
import com.instagram.feed.d.l;
import com.instagram.feed.d.v;
import com.instagram.realtimeclient.EventRouter;
import com.instagram.realtimeclient.RealtimeOperation;
import java.io.IOException;
import java.util.Map;

// Referenced classes of package com.instagram.android.h:
//            e

public class d
{

    private static final Class a = com/instagram/android/h/d;
    private static ObjectMapper b = new ObjectMapper();

    public d()
    {
    }

    public static void a()
    {
        d();
    }

    private static void a(String s)
    {
        ad ad1 = ad.a();
        if (!ad1.a(s))
        {
            return;
        } else
        {
            l l1 = ad1.b(s);
            ad1.c(s);
            c(l1.d());
            return;
        }
    }

    private static void a(String s, long l1)
    {
        ad ad1 = ad.a();
        if (!ad1.a(s))
        {
            return;
        } else
        {
            ad1.b(s).a(l1);
            c();
            return;
        }
    }

    private static void a(String s, b b1)
    {
        ad ad1 = ad.a();
        if (!ad1.a(s))
        {
            return;
        } else
        {
            l l1 = ad1.b(s);
            b1.a(l1);
            l1.a(b1);
            return;
        }
    }

    private static void a(String s, String s1)
    {
        ad ad1 = ad.a();
        if (!ad1.a(s))
        {
            return;
        } else
        {
            ad1.b(s).c(s1);
            return;
        }
    }

    private static void a(String s, String s1, int i1, boolean flag)
    {
        ad ad1 = ad.a();
        if (!ad1.a(s))
        {
            return;
        } else
        {
            v.a(ad1.b(s), s1, i1, flag);
            return;
        }
    }

    private static void b()
    {
        com.instagram.common.y.d.a(new Intent("InboxFragment.INBOX_SHARE_COUNT_CHANGED"));
    }

    private void b(RealtimeOperation realtimeoperation)
    {
        if (realtimeoperation.path.contains("comments"))
        {
            d(realtimeoperation);
            return;
        }
        if (realtimeoperation.path.contains("inbox"))
        {
            c(realtimeoperation);
            return;
        } else
        {
            b("Add operation received an unrecognized path", realtimeoperation.path);
            return;
        }
    }

    private static void b(String s)
    {
        Intent intent = new Intent("InboxFragment.ADD_MEDIA_TO_INBOX");
        intent.putExtra("mediaId", s);
        com.instagram.common.y.d.a(intent);
    }

    private static void b(String s, String s1)
    {
        if (com.instagram.common.s.b.b())
        {
            com.facebook.e.a.a.a(a, (new StringBuilder()).append(s).append(": ").append(s1).toString());
        }
    }

    private static void c()
    {
        com.instagram.common.y.d.a(new Intent("InboxFragment.UPDATE_INBOX"));
    }

    private static void c(RealtimeOperation realtimeoperation)
    {
        try
        {
            String s = b.writeValueAsString(realtimeoperation.value);
            com.fasterxml.jackson.a.l l1 = com.instagram.common.n.a.a.createParser(s);
            l1.nextToken();
            l l2 = l.a(l1, false);
            if (ad.a().a(l2) == null)
            {
                b(l2.d());
            }
            return;
        }
        catch (IOException ioexception)
        {
            com.instagram.common.i.c.b("realtime_media_manager", String.format("IOException: %s", new Object[] {
                ioexception
            }));
        }
    }

    private static void c(String s)
    {
        Intent intent = new Intent("InboxFragment.REMOVE_MEDIA_FROM_INBOX");
        intent.putExtra("mediaId", s);
        com.instagram.common.y.d.a(intent);
    }

    private static void d()
    {
        com.instagram.common.y.d.a(new Intent("InboxFragment.REFRESH_INBOX"));
    }

    private static void d(RealtimeOperation realtimeoperation)
    {
        Map map = EventRouter.match("/direct_share/:media_id/comments", realtimeoperation.path);
        if (map == null)
        {
            b("Add comment operation received an unrecognized path", realtimeoperation.path);
            return;
        }
        try
        {
            String s = b.writeValueAsString(realtimeoperation.value);
            com.fasterxml.jackson.a.l l1 = com.instagram.common.n.a.a.createParser(s);
            l1.nextToken();
            b b1 = com.instagram.feed.d.j.a(l1);
            a((String)map.get("media_id"), b1);
            return;
        }
        catch (IOException ioexception)
        {
            com.instagram.common.i.c.b("realtime_media_manager", String.format("IOException: %s", new Object[] {
                ioexception
            }));
        }
    }

    private void e(RealtimeOperation realtimeoperation)
    {
        if (realtimeoperation.path.contains("comments"))
        {
            g(realtimeoperation);
            return;
        }
        if (realtimeoperation.path.contains("direct_share"))
        {
            f(realtimeoperation);
            return;
        } else
        {
            b("Remove operation received an unrecognized path", realtimeoperation.path);
            return;
        }
    }

    private void f(RealtimeOperation realtimeoperation)
    {
        Map map = EventRouter.match("/direct_share/:media_id", realtimeoperation.path);
        if (map == null)
        {
            b("Remove DS operation received an unrecognized path", realtimeoperation.path);
            return;
        } else
        {
            a((String)map.get("media_id"));
            return;
        }
    }

    private static void g(RealtimeOperation realtimeoperation)
    {
        Map map = EventRouter.match("/direct_share/:media_id/comments/:comment_id", realtimeoperation.path);
        if (map == null)
        {
            b("Remove comment operation received an unrecognized path", realtimeoperation.path);
            return;
        } else
        {
            a((String)map.get("media_id"), (String)map.get("comment_id"));
            return;
        }
    }

    private void h(RealtimeOperation realtimeoperation)
    {
        if (realtimeoperation.path.endsWith("last_comment_at"))
        {
            j(realtimeoperation);
            return;
        }
        if (realtimeoperation.path.contains("recipients"))
        {
            i(realtimeoperation);
            return;
        }
        if (realtimeoperation.path.equals("/direct_share/inbox/new_shares"))
        {
            k(realtimeoperation);
            return;
        } else
        {
            b("Replace operation received an unrecognized path", realtimeoperation.path);
            return;
        }
    }

    private static void i(RealtimeOperation realtimeoperation)
    {
        Map map = EventRouter.match("/direct_share/:media_id/recipients/:user_id/:action", realtimeoperation.path);
        if (map == null)
        {
            b("Replace recipient status operation received an unrecognized path", realtimeoperation.path);
            return;
        }
        String s = (String)map.get("action");
        if (s == null)
        {
            b("Replace recipient status operation received an unrecognized path", realtimeoperation.path);
            return;
        }
        int i1;
        boolean flag;
        if (s.equals("has_seen"))
        {
            i1 = com.instagram.model.b.c.a;
        } else
        if (s.equals("has_liked"))
        {
            i1 = com.instagram.model.b.c.b;
        } else
        if (s.equals("has_commented"))
        {
            i1 = com.instagram.model.b.c.c;
        } else
        {
            b("Replace recipient status operation received an unrecognized path", realtimeoperation.path);
            return;
        }
        flag = Boolean.valueOf(realtimeoperation.value.toString()).booleanValue();
        a((String)map.get("media_id"), (String)map.get("user_id"), i1, flag);
    }

    private void j(RealtimeOperation realtimeoperation)
    {
        Map map = EventRouter.match("/direct_share/:media_id/last_comment_at", realtimeoperation.path);
        if (map == null)
        {
            b("Replace last activity operation received an unrecognized path", realtimeoperation.path);
            return;
        } else
        {
            long l1 = ((Long)b.convertValue(realtimeoperation.value, Long.TYPE)).longValue();
            a((String)map.get("media_id"), l1);
            return;
        }
    }

    private static void k(RealtimeOperation realtimeoperation)
    {
        if (realtimeoperation.timestamp == null || realtimeoperation.value == null)
        {
            return;
        }
        try
        {
            com.instagram.android.directshare.f.c.a(Integer.parseInt(b.writeValueAsString(realtimeoperation.value)), Long.parseLong(realtimeoperation.timestamp));
            b();
            return;
        }
        catch (IOException ioexception)
        {
            com.instagram.common.i.c.b("realtime_media_manager", String.format("IOException: %s", new Object[] {
                ioexception
            }));
        }
    }

    public final void a(RealtimeOperation realtimeoperation)
    {
        com.instagram.android.h.e.a[realtimeoperation.op.ordinal()];
        JVM INSTR tableswitch 1 3: default 36
    //                   1 57
    //                   2 65
    //                   3 73;
           goto _L1 _L2 _L3 _L4
_L1:
        if (com.instagram.common.s.b.b())
        {
            a;
            realtimeoperation.op;
            realtimeoperation.path;
        }
        return;
_L2:
        b(realtimeoperation);
        continue; /* Loop/switch isn't completed */
_L3:
        e(realtimeoperation);
        continue; /* Loop/switch isn't completed */
_L4:
        h(realtimeoperation);
        if (true) goto _L1; else goto _L5
_L5:
    }

}
