// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.bugreport.rageshake;

import android.content.Intent;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.support.v4.app.k;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import com.facebook.av;
import com.facebook.aw;
import com.facebook.az;
import com.instagram.a.a;
import com.instagram.a.b;
import com.instagram.a.c;
import com.instagram.a.f;
import com.instagram.common.y.e;
import java.util.ArrayList;

// Referenced classes of package com.instagram.bugreport.rageshake:
//            d, RageShakeService, c

public class RageShakeActivity extends k
    implements a, c
{

    private f p;
    private View q;
    private EditText r;

    public RageShakeActivity()
    {
    }

    private void g()
    {
        q.setVisibility(8);
    }

    private String h()
    {
        return r.getText().toString().trim();
    }

    private String i()
    {
        if (k())
        {
            return getIntent().getStringExtra("RageShakeActivity.INTENT_EXTRA_MEDIA_FILE_PATH");
        } else
        {
            return "";
        }
    }

    private ArrayList j()
    {
        return getIntent().getStringArrayListExtra("RageShakeActivity.INTENT_EXTRA_OTHER_ATTACHMENT_FILE_PATHS");
    }

    private boolean k()
    {
        return q.getVisibility() == 0;
    }

    private boolean l()
    {
        return getIntent().getBooleanExtra("RageShakeActivity.INTENT_EXTRA_RETRY", false);
    }

    public final f a()
    {
        return p;
    }

    public final void a(b b1)
    {
        b1.c(az.rageshake_title, new d(this));
    }

    public final void f()
    {
        if (e.c(h()))
        {
            com.instagram.o.e.a(az.rageshake_error_description);
            return;
        } else
        {
            com.instagram.bugreport.rageshake.RageShakeService.a(this, h(), i(), j());
            finish();
            return;
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(aw.rageshake);
        p = new f((ViewGroup)findViewById(av.action_bar), new com.instagram.bugreport.rageshake.c(this));
        r = (EditText)findViewById(av.bug_description);
        q = findViewById(av.screenshot_section);
        if (l())
        {
            String s = getIntent().getStringExtra("RageShakeActivity.INTENT_EXTRA_DESCRIPTION");
            r.setText(s);
        }
        if (!e.c(i()))
        {
            android.graphics.Bitmap bitmap = BitmapFactory.decodeFile(i());
            if (bitmap != null)
            {
                ((ImageView)findViewById(av.screenshot)).setImageBitmap(bitmap);
            }
            return;
        } else
        {
            g();
            return;
        }
    }

    public void onRemoveClick(View view)
    {
        g();
    }

    protected void onResume()
    {
        super.onResume();
        p.a(this);
    }
}
