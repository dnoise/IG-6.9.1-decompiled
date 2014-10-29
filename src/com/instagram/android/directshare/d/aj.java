// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.directshare.d;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.facebook.av;
import com.facebook.aw;
import com.instagram.android.directshare.widget.RecipientView;
import com.instagram.common.y.f;
import com.instagram.model.b.a;
import java.util.LinkedList;
import java.util.List;

// Referenced classes of package com.instagram.android.directshare.d:
//            an, ak, al, am

public final class aj
{

    public static View a(Context context, ViewGroup viewgroup)
    {
        View view = LayoutInflater.from(context).inflate(aw.layout_directshare_permalink_recipients, viewgroup, false);
        an an1 = new an((byte)0);
        com.instagram.android.directshare.d.an.a(an1, (RecipientView)view.findViewById(av.sender_image));
        view.setTag(an1);
        return view;
    }

    public static void a(View view, a a1, List list, am am)
    {
        an an1 = (an)view.getTag();
        com.instagram.android.directshare.d.an.a(an1).setAvatarUrl(a1.a().f());
        com.instagram.android.directshare.d.an.a(an1).a(a1.c(), false, a1.b(), false);
        com.instagram.android.directshare.d.an.a(an1).setOnClickListener(new ak(am, a1, an1));
        List list1 = an.b(an1);
        int i = 0;
        if (list1 == null)
        {
            ViewGroup viewgroup = (ViewGroup)view.findViewById(av.recipients_container);
            int j = (int)f.a(view.getResources().getDisplayMetrics(), 8);
            com.instagram.android.directshare.d.an.a(an1, new LinkedList());
            int k = 0;
            do
            {
                int l = list.size();
                i = 0;
                if (k >= l)
                {
                    break;
                }
                RecipientView recipientview1 = new RecipientView(view.getContext());
                recipientview1.setClickable(true);
                an.b(an1).add(recipientview1);
                viewgroup.addView(recipientview1);
                if (k != -1 + list.size())
                {
                    ((android.view.ViewGroup.MarginLayoutParams)recipientview1.getLayoutParams()).rightMargin = j;
                }
                k++;
            } while (true);
        }
        for (; i < list.size(); i++)
        {
            RecipientView recipientview = (RecipientView)an.b(an1).get(i);
            a a2 = (a)list.get(i);
            recipientview.setAvatarUrl(a2.a().f());
            recipientview.a(a2.c(), a2.d(), a2.b(), true);
            recipientview.setOnClickListener(new al(am, list, i, recipientview));
        }

    }
}
