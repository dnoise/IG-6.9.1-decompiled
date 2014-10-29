// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.util;

import android.content.Context;
import android.content.Intent;
import com.facebook.az;
import com.instagram.api.h.d;
import com.instagram.common.a.c.b;
import com.instagram.common.y.e;
import com.instagram.feed.d.l;
import com.instagram.simplewebview.SimpleWebViewActivity;

public final class ReportMediaUtil
{

    public static void a(Context context, l l1)
    {
        String s;
        String s1;
        Intent intent;
        if (l1.ak())
        {
            Object aobj1[] = new Object[1];
            aobj1[0] = l1.d();
            s = d.a(e.a("/direct_share/%s/flag/", aobj1));
        } else
        {
            b b1 = new b();
            b1.a("media_id", l1.d());
            com.instagram.api.i.b.a(b1);
            Object aobj[] = new Object[2];
            aobj[0] = l1.d();
            aobj[1] = b1.e();
            s = d.a(e.a("/media/%s/flag/?%s", aobj));
        }
        s1 = context.getString(az.report_inappropriate);
        intent = new Intent(context, com/instagram/simplewebview/SimpleWebViewActivity);
        intent.putExtra("SimpleWebViewFragment.ARGUMENT_URL", s);
        intent.putExtra("SimpleWebViewFragment.ARGUMENT_LOAD_SAME_HOST", true);
        intent.putExtra("SimpleWebViewFragment.ARGUMENT_TITLE", s1);
        intent.putExtra("SimpleWebViewFragment.ARGUMENT_DELEGATE", new ReportMediaDelegate(l1.d(), (byte)0));
        context.startActivity(intent);
    }

    private class ReportMediaDelegate
        implements com.instagram.simplewebview.SimpleWebViewFragment.DismissalDelegate
    {

        public static final android.os.Parcelable.Creator CREATOR = new com.instagram.android.util.e();
        private final String a;

        private static boolean a(List list, a a1)
        {
            for (Iterator iterator = list.iterator(); iterator.hasNext();)
            {
                if (((PeopleTag)iterator.next()).d().equals(a1.g()))
                {
                    iterator.remove();
                    return true;
                }
            }

            return false;
        }

        public final void a(Fragment fragment, Uri uri)
        {
            if ("tag-removed".equals(uri.getQueryParameter("action")))
            {
                l l1 = ad.a().b(a);
                a a1 = com.instagram.service.a.a.a().b();
                if (l1.W() && a(((List) (l1.V())), a1))
                {
                    l1.z();
                }
            }
        }

        public int describeContents()
        {
            return 0;
        }

        public void writeToParcel(Parcel parcel, int i)
        {
            parcel.writeString(a);
        }


        private ReportMediaDelegate(Parcel parcel)
        {
            a = parcel.readString();
        }

        ReportMediaDelegate(Parcel parcel, byte byte0)
        {
            this(parcel);
        }

        private ReportMediaDelegate(String s)
        {
            a = s;
        }

        ReportMediaDelegate(String s, byte byte0)
        {
            this(s);
        }
    }

}
