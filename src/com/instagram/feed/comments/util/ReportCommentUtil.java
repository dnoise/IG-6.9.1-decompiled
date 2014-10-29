// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.comments.util;

import android.content.Context;
import android.content.Intent;
import com.facebook.az;
import com.instagram.api.h.d;
import com.instagram.common.y.e;
import com.instagram.feed.d.b;
import com.instagram.feed.d.l;
import com.instagram.simplewebview.SimpleWebViewActivity;

public final class ReportCommentUtil
{

    public static void a(Context context, b b1, boolean flag)
    {
        Object aobj[] = new Object[2];
        aobj[0] = b1.d();
        aobj[1] = b1.b();
        String s = e.a("/media/%s/comment/%s/flag", aobj);
        String s1 = context.getString(az.flag_report_abuse);
        Intent intent = new Intent(context, com/instagram/simplewebview/SimpleWebViewActivity);
        intent.putExtra("SimpleWebViewFragment.ARGUMENT_URL", d.a(s));
        intent.putExtra("SimpleWebViewFragment.ARGUMENT_LOAD_SAME_HOST", true);
        intent.putExtra("SimpleWebViewFragment.ARGUMENT_TITLE", s1);
        intent.putExtra("SimpleWebViewFragment.ARGUMENT_DELEGATE", new ReportCommentDelegate(b1.b(), b1.e().f(), flag, (byte)0));
        context.startActivity(intent);
    }

    private class ReportCommentDelegate
        implements com.instagram.simplewebview.SimpleWebViewFragment.DismissalDelegate
    {

        public static final android.os.Parcelable.Creator CREATOR = new com.instagram.feed.comments.util.b();
        private final String a;
        private final String b;
        private final boolean c;

        public final void a(Fragment fragment, Uri uri)
        {
            if (c && a != null)
            {
                b b1 = ad.a().b(b).e(a);
                if (b1 != null)
                {
                    com.instagram.feed.comments.b.a.a(fragment.n(), fragment.z(), b1, com.instagram.feed.comments.c.b.b, null);
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
            parcel.writeString(b);
            int j;
            if (c)
            {
                j = 1;
            } else
            {
                j = 0;
            }
            parcel.writeByte((byte)j);
        }


        private ReportCommentDelegate(Parcel parcel)
        {
            boolean flag = true;
            super();
            a = parcel.readString();
            b = parcel.readString();
            if (parcel.readByte() != flag)
            {
                flag = false;
            }
            c = flag;
        }

        ReportCommentDelegate(Parcel parcel, byte byte0)
        {
            this(parcel);
        }

        private ReportCommentDelegate(String s, String s1, boolean flag)
        {
            a = s;
            b = s1;
            c = flag;
        }

        ReportCommentDelegate(String s, String s1, boolean flag, byte byte0)
        {
            this(s, s1, flag);
        }
    }

}
