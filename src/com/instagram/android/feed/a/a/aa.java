// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.a.a;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import com.facebook.az;
import com.instagram.android.c.a.c;
import com.instagram.android.c.a.k;
import com.instagram.android.creation.a.ar;
import com.instagram.android.feed.d.d;
import com.instagram.android.people.activity.PeopleTagActivity;
import com.instagram.android.util.ReportMediaUtil;
import com.instagram.base.a.a.a;
import com.instagram.feed.c.g;
import com.instagram.feed.d.l;
import com.instagram.sharelater.ShareLaterMedia;
import com.instagram.ui.dialog.b;

// Referenced classes of package com.instagram.android.feed.a.a:
//            x, ac, ab, af, 
//            ad

final class aa
    implements android.content.DialogInterface.OnClickListener
{

    final x a;

    private aa(x x1)
    {
        a = x1;
        super();
    }

    aa(x x1, byte byte0)
    {
        this(x1);
    }

    public final void onClick(DialogInterface dialoginterface, int i)
    {
        dialoginterface.dismiss();
        CharSequence charsequence = com.instagram.android.feed.a.a.x.b(a)[i];
        if (com.instagram.android.feed.a.a.x.c(a).getString(az.delete_media).equals(charsequence))
        {
            b b1 = (new b(com.instagram.android.feed.a.a.x.c(a))).a(az.confirm_media_deletion_title);
            int j;
            if (com.instagram.android.feed.a.a.x.d(a).g())
            {
                j = az.delete_this_video_question;
            } else
            {
                j = az.delete_this_photo_question;
            }
            b1.b(j).b(az.delete_media, new ac(this)).a(true).c(az.dont_delete, new ab(this)).c().show();
            return;
        }
        if (com.instagram.android.feed.a.a.x.c(a).getString(az.share).equals(charsequence))
        {
            Bundle bundle = new Bundle();
            bundle.putParcelable("ShareLaterMedia.SHARE_LATER_MEDIA", new ShareLaterMedia(com.instagram.android.feed.a.a.x.d(a)));
            (new a(x.f(a))).a(new ar(), bundle).a();
            return;
        }
        if (com.instagram.android.feed.a.a.x.c(a).getString(az.report_inappropriate).equals(charsequence))
        {
            g.a("inappropriate", com.instagram.android.feed.a.a.x.d(a), com.instagram.android.feed.a.a.x.g(a), x.h(a));
            ReportMediaUtil.a(com.instagram.android.feed.a.a.x.c(a), com.instagram.android.feed.a.a.x.d(a));
            return;
        }
        if (com.instagram.android.feed.a.a.x.c(a).getString(az.flag_reason_remove_from_popular).equals(charsequence))
        {
            (new c(com.instagram.android.feed.a.a.x.d(a), com.instagram.android.feed.a.a.x.c(a), x.i(a), new af(a, (byte)0))).g();
            return;
        }
        if (com.instagram.android.feed.a.a.x.c(a).getString(az.add_people).equals(charsequence))
        {
            Bundle bundle1 = new Bundle();
            bundle1.putString("media_id", com.instagram.android.feed.a.a.x.d(a).d());
            bundle1.putString("media_url", com.instagram.android.feed.a.a.x.d(a).b(com.instagram.android.feed.a.a.x.c(a)));
            bundle1.putParcelableArrayList("people_tags", com.instagram.android.feed.a.a.x.d(a).V());
            Intent intent = new Intent(com.instagram.android.feed.a.a.x.c(a), com/instagram/android/people/activity/PeopleTagActivity);
            intent.putExtras(bundle1);
            com.instagram.android.feed.a.a.x.c(a).startActivity(intent);
            return;
        }
        if (com.instagram.android.feed.a.a.x.c(a).getString(az.photo_options).equals(charsequence))
        {
            com.instagram.android.people.c.a.a(com.instagram.android.feed.a.a.x.c(a), x.i(a), com.instagram.android.feed.a.a.x.d(a));
            return;
        }
        if (com.instagram.android.feed.a.a.x.c(a).getString(az.copy_share_url).equals(charsequence))
        {
            x.j(a).a((new k(com.instagram.android.feed.a.a.x.d(a))).a(new ad(a, (byte)0)));
            return;
        }
        if (com.instagram.android.feed.a.a.x.c(a).getString(az.starred_hide_this).equals(charsequence))
        {
            (new d(com.instagram.android.feed.a.a.x.c(a), com.instagram.android.feed.a.a.x.d(a), com.instagram.android.feed.a.a.x.k(a), com.instagram.android.feed.a.a.x.l(a))).a();
            g.a("hide_button", com.instagram.android.feed.a.a.x.d(a), com.instagram.android.feed.a.a.x.g(a), x.h(a));
            return;
        }
        if (com.instagram.android.feed.a.a.x.c(a).getString(az.learn_more).equals(charsequence))
        {
            (new com.instagram.android.feed.d.a(com.instagram.android.feed.a.a.x.c(a))).a();
            g.a("learn_more_button", com.instagram.android.feed.a.a.x.d(a), com.instagram.android.feed.a.a.x.g(a), x.h(a));
            return;
        } else
        {
            throw new UnsupportedOperationException("Menu item click not handled");
        }
    }
}
