// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.edit.common.basefilter;

import android.opengl.GLES20;
import android.os.Parcel;
import com.instagram.cliffjumper.util.a;
import com.instagram.cliffjumper.util.e;
import com.instagram.filterkit.b.b;
import com.instagram.filterkit.d.c;
import com.instagram.filterkit.filter.BaseCachingFilter;

public abstract class BaseSimpleFilter extends BaseCachingFilter
{

    private static final a a = e.a();
    private b c;

    protected BaseSimpleFilter()
    {
    }

    protected BaseSimpleFilter(Parcel parcel)
    {
        super(parcel);
    }

    public final com.instagram.filterkit.e.c a(c c1, com.instagram.filterkit.e.a a1, com.instagram.filterkit.e.c c2)
    {
        com.instagram.filterkit.e.c c3 = a(c1, c2);
        if (!c1.a(this))
        {
            c = b(c1);
            if (c == null)
            {
                a();
                return null;
            }
            c1.b(this);
        }
        a(c, a1, c3);
        c1.a("BaseSimpleFilter.render:setFilterParams");
        c.a("position", a.a);
        b b1 = c;
        java.nio.FloatBuffer floatbuffer;
        if (z_())
        {
            floatbuffer = a.c;
        } else
        {
            floatbuffer = a.b;
        }
        b1.a("transformedTextureCoordinate", floatbuffer);
        c.a("staticTextureCoordinate", a.b);
        c1.a("BaseSimpleFilter.render:setCoordinates");
        GLES20.glViewport(0, 0, c3.c(), c3.d());
        c1.a("BaseSimpleFilter.render:glViewport");
        GLES20.glBindFramebuffer(36160, c3.a());
        c1.a("BaseSimpleFilter.render:glBindFramebuffer");
        c.b();
        c1.a("BaseSimpleFilter.render:prepareToRender");
        GLES20.glDrawArrays(5, 0, 4);
        c1.a("BaseSimpleFilter.render:glDrawArrays");
        y_();
        c1.a(a1, null);
        return c3;
    }

    protected void a()
    {
        throw new RuntimeException((new StringBuilder("Could not create program for ")).append(getClass().getSimpleName()).toString());
    }

    protected abstract void a(b b1, com.instagram.filterkit.e.a a1, com.instagram.filterkit.e.c c1);

    public void a(c c1)
    {
        super.a(c1);
        if (c != null)
        {
            c1.a();
            com.instagram.filterkit.d.b.c(c.a());
            c = null;
        }
    }

    protected abstract b b(c c1);

    public void writeToParcel(Parcel parcel, int i)
    {
        super.writeToParcel(parcel, i);
    }

    protected void y_()
    {
    }

    protected boolean z_()
    {
        return false;
    }

}
