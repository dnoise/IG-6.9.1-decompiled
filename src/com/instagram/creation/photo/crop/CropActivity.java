// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.photo.crop;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.ag;
import android.support.v4.app.s;
import android.view.Window;
import com.facebook.av;
import com.facebook.aw;
import com.instagram.base.activity.d;

// Referenced classes of package com.instagram.creation.photo.crop:
//            m, b

public class CropActivity extends d
    implements m
{

    public CropActivity()
    {
    }

    private void h()
    {
        requestWindowFeature(1);
        Window window = getWindow();
        if (android.provider.Settings.System.getInt(getContentResolver(), "screen_brightness_mode", 0) == 1)
        {
            android.view.WindowManager.LayoutParams layoutparams = window.getAttributes();
            layoutparams.screenBrightness = 0.7F;
            window.setAttributes(layoutparams);
        }
    }

    public final void a(String s1, Bundle bundle)
    {
        setResult(-1, (new Intent(s1)).putExtras(bundle));
        finish();
    }

    public final void g()
    {
        setResult(0);
        finish();
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        h();
        setContentView(aw.activity_single_container);
        if (d().a(av.layout_container_main) == null)
        {
            ag ag1 = d().a();
            b b1 = new b();
            b1.g(getIntent().getExtras());
            ag1.b(av.layout_container_main, b1);
            ag1.b();
        }
    }
}
