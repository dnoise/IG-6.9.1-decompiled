// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.d;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.Fragment;
import android.support.v4.app.k;
import com.facebook.az;
import com.facebook.b.b;
import com.instagram.creation.base.e;
import com.instagram.creation.photo.crop.CropActivity;
import com.instagram.creation.photo.crop.a;
import com.instagram.share.b.g;
import java.io.File;

// Referenced classes of package com.instagram.android.d:
//            g, h

public abstract class f
{

    protected CharSequence a[];
    protected Fragment b;
    private Handler c;
    private File d;
    private File e;
    private Uri f;

    public f(Fragment fragment, Bundle bundle)
    {
        c = new Handler();
        b = fragment;
        if (bundle != null)
        {
            String s = bundle.getString("tempCameraPhotoFile");
            if (s != null)
            {
                e = new File(s);
            }
            String s1 = bundle.getString("tempGalleryPhotoFile");
            if (s1 != null)
            {
                d = new File(s1);
            }
            f = (Uri)bundle.getParcelable("tempGalleryUri");
        }
    }

    static File a(f f1)
    {
        return f1.d;
    }

    static File a(f f1, File file)
    {
        f1.d = file;
        return file;
    }

    static File b(f f1)
    {
        return f1.e;
    }

    static File b(f f1, File file)
    {
        f1.e = file;
        return file;
    }

    private void b(Uri uri)
    {
        a a1 = com.instagram.creation.photo.crop.a.b(b.n(), uri);
        a1.b(150);
        Intent intent = new Intent(b.n(), com/instagram/creation/photo/crop/CropActivity);
        intent.putExtras(a1.a());
        b.a(intent, 3);
    }

    static Handler c(f f1)
    {
        return f1.c;
    }

    public final void a(int j, int l, Intent intent)
    {
        a(j, l, intent, false);
    }

    public final void a(int j, int l, Intent intent, boolean flag)
    {
label0:
        {
label1:
            {
label2:
                {
label3:
                    {
                        if (l == -1)
                        {
                            switch (j)
                            {
                            default:
                                if (!flag)
                                {
                                    com.instagram.share.b.a.a().a(j, l, intent);
                                }
                                break;

                            case 1: // '\001'
                                break label3;

                            case 2: // '\002'
                                break label2;

                            case 3: // '\003'
                                break label1;

                            case 4: // '\004'
                                break label0;
                            }
                        }
                        return;
                    }
                    e();
                    return;
                }
                b(com.instagram.creation.base.e.a(intent, d));
                return;
            }
            a(Uri.parse(intent.getAction()));
            return;
        }
        com.instagram.creation.photo.c.a.a(b.l().getContentResolver(), e);
        b(com.instagram.creation.photo.c.a.a(intent, e));
    }

    public final void a(Context context)
    {
        (new com.instagram.ui.dialog.b(b.l())).a(az.set_a_profile_picture).a(b(context), new com.instagram.android.d.g(this, context)).c().show();
    }

    protected abstract void a(Uri uri);

    public void a(Bundle bundle)
    {
        if (e != null)
        {
            bundle.putString("tempCameraPhotoFile", e.getPath());
        }
        if (d != null)
        {
            bundle.putString("tempGalleryPhotoFile", d.getPath());
        }
        if (f != null)
        {
            bundle.putParcelable("tempGalleryUri", f);
        }
    }

    protected abstract void b();

    public CharSequence[] b(Context context)
    {
        if (a == null)
        {
            if (i())
            {
                CharSequence acharsequence1[] = new CharSequence[3];
                acharsequence1[0] = context.getString(az.import_from_facebook);
                acharsequence1[1] = context.getString(az.take_picture);
                acharsequence1[2] = context.getString(az.choose_from_library);
                a = acharsequence1;
            } else
            {
                CharSequence acharsequence[] = new CharSequence[4];
                acharsequence[0] = context.getString(az.take_picture);
                acharsequence[1] = context.getString(az.choose_from_library);
                acharsequence[2] = context.getString(az.import_from_facebook);
                acharsequence[3] = context.getString(az.import_from_twitter);
                a = acharsequence;
            }
        }
        return a;
    }

    protected void c()
    {
        b b1 = com.instagram.share.b.a.a();
        if (b1.b())
        {
            f();
            return;
        } else
        {
            b1.a(b, g.a, new h(this, (byte)0));
            return;
        }
    }

    protected abstract void e();

    protected abstract void f();

    protected abstract boolean i();
}
