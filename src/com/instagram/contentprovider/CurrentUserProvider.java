// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.contentprovider;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.os.Binder;
import android.os.CancellationSignal;
import com.instagram.o.a;

public class CurrentUserProvider extends ContentProvider
{

    private static final String a[] = {
        "COL_FULL_NAME", "COL_PROFILE_PHOTO_URL"
    };

    public CurrentUserProvider()
    {
    }

    private void a()
    {
        int i = Binder.getCallingUid();
        int j = getContext().getApplicationInfo().uid;
        if (i != j && getContext().getPackageManager().checkSignatures(j, i) != 0)
        {
            throw new SecurityException("Access to user information denied");
        } else
        {
            return;
        }
    }

    private static Cursor b()
    {
        com.instagram.o.a.a().c();
        com.instagram.service.a.a.a();
        if (com.instagram.service.a.a.d())
        {
            com.instagram.user.c.a a1 = com.instagram.service.a.a.a().b();
            String as[] = {
                a1.c(), a1.f()
            };
            MatrixCursor matrixcursor = new MatrixCursor(a);
            matrixcursor.addRow(as);
            return matrixcursor;
        } else
        {
            return null;
        }
    }

    public int delete(Uri uri, String s, String as[])
    {
        throw new UnsupportedOperationException();
    }

    public String getType(Uri uri)
    {
        throw new UnsupportedOperationException();
    }

    public Uri insert(Uri uri, ContentValues contentvalues)
    {
        throw new UnsupportedOperationException();
    }

    public boolean onCreate()
    {
        return true;
    }

    public final Cursor query(Uri uri, String as[], String s, String as1[], String s1)
    {
        a();
        return b();
    }

    public final Cursor query(Uri uri, String as[], String s, String as1[], String s1, CancellationSignal cancellationsignal)
    {
        a();
        return b();
    }

    public int update(Uri uri, ContentValues contentvalues, String s, String as[])
    {
        throw new UnsupportedOperationException();
    }

}
