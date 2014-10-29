// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;

import android.graphics.Bitmap;
import android.os.ParcelFileDescriptor;
import com.facebook.g.n;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;

// Referenced classes of package com.facebook:
//            bi, bc

final class bj
    implements bi
{

    private final BufferedOutputStream a;
    private final n b;
    private boolean c;

    public bj(BufferedOutputStream bufferedoutputstream, n n1)
    {
        c = true;
        a = bufferedoutputstream;
        b = n1;
    }

    private void a()
    {
        b("--%s", new Object[] {
            "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f"
        });
    }

    private void a(String s, Bitmap bitmap)
    {
        a(s, s, "image/png");
        bitmap.compress(android.graphics.Bitmap.CompressFormat.PNG, 100, a);
        b("", new Object[0]);
        a();
        b.a((new StringBuilder("    ")).append(s).toString(), "<Image>");
    }

    private void a(String s, ParcelFileDescriptor parcelfiledescriptor)
    {
        android.os.ParcelFileDescriptor.AutoCloseInputStream autocloseinputstream;
        autocloseinputstream = null;
        a(s, s, "content/unknown");
        android.os.ParcelFileDescriptor.AutoCloseInputStream autocloseinputstream1 = new android.os.ParcelFileDescriptor.AutoCloseInputStream(parcelfiledescriptor);
        BufferedInputStream bufferedinputstream = new BufferedInputStream(autocloseinputstream1);
        byte abyte0[] = new byte[8192];
        int i = 0;
_L2:
        int j = bufferedinputstream.read(abyte0);
        if (j == -1)
        {
            break; /* Loop/switch isn't completed */
        }
        a.write(abyte0, 0, j);
        i += j;
        if (true) goto _L2; else goto _L1
_L1:
        bufferedinputstream.close();
        autocloseinputstream1.close();
        b("", new Object[0]);
        a();
        n n1 = b;
        String s1 = (new StringBuilder("    ")).append(s).toString();
        Object aobj[] = new Object[1];
        aobj[0] = Integer.valueOf(i);
        n1.a(s1, String.format("<Data: %d>", aobj));
        return;
        Exception exception;
        exception;
        bufferedinputstream = null;
_L4:
        if (bufferedinputstream != null)
        {
            bufferedinputstream.close();
        }
        if (autocloseinputstream != null)
        {
            autocloseinputstream.close();
        }
        throw exception;
        exception;
        autocloseinputstream = autocloseinputstream1;
        bufferedinputstream = null;
        continue; /* Loop/switch isn't completed */
        exception;
        autocloseinputstream = autocloseinputstream1;
        if (true) goto _L4; else goto _L3
_L3:
    }

    private void a(String s, String s1, String s2)
    {
        a("Content-Disposition: form-data; name=\"%s\"", new Object[] {
            s
        });
        if (s1 != null)
        {
            a("; filename=\"%s\"", new Object[] {
                s1
            });
        }
        b("", new Object[0]);
        if (s2 != null)
        {
            b("%s: %s", new Object[] {
                "Content-Type", s2
            });
        }
        b("", new Object[0]);
    }

    private void a(String s, byte abyte0[])
    {
        a(s, s, "content/unknown");
        a.write(abyte0);
        b("", new Object[0]);
        a();
        n n1 = b;
        String s1 = (new StringBuilder("    ")).append(s).toString();
        Object aobj[] = new Object[1];
        aobj[0] = Integer.valueOf(abyte0.length);
        n1.a(s1, String.format("<Data: %d>", aobj));
    }

    private transient void a(String s, Object aobj[])
    {
        if (c)
        {
            a.write("--".getBytes());
            a.write("3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f".getBytes());
            a.write("\r\n".getBytes());
            c = false;
        }
        a.write(String.format(s, aobj).getBytes());
    }

    private transient void b(String s, Object aobj[])
    {
        a(s, aobj);
        a("\r\n", new Object[0]);
    }

    public final void a(String s, Object obj)
    {
        if (bc.a(obj))
        {
            a(s, bc.b(obj));
            return;
        }
        if (obj instanceof Bitmap)
        {
            a(s, (Bitmap)obj);
            return;
        }
        if (obj instanceof byte[])
        {
            a(s, (byte[])(byte[])obj);
            return;
        }
        if (obj instanceof ParcelFileDescriptor)
        {
            a(s, (ParcelFileDescriptor)obj);
            return;
        } else
        {
            throw new IllegalArgumentException("value is not a supported type: String, Bitmap, byte[]");
        }
    }

    public final void a(String s, String s1)
    {
        a(s, null, null);
        b("%s", new Object[] {
            s1
        });
        a();
        if (b != null)
        {
            b.a((new StringBuilder("    ")).append(s).toString(), s1);
        }
    }
}
