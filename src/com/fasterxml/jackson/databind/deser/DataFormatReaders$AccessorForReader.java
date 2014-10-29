// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.deser;

import com.fasterxml.jackson.a.b.c;
import com.fasterxml.jackson.databind.ObjectReader;
import java.io.InputStream;

// Referenced classes of package com.fasterxml.jackson.databind.deser:
//            DataFormatReaders

public class this._cls0 extends c
{

    final DataFormatReaders this$0;

    public this._cls0 createMatcher$edb45c1(ObjectReader objectreader, int i)
    {
        return new this._cls0(_in, _buffer, _bufferedStart, _bufferedEnd - _bufferedStart, objectreader, i);
    }

    public (InputStream inputstream, byte abyte0[])
    {
        this$0 = DataFormatReaders.this;
        super(inputstream, abyte0);
    }

    public this._cls0(byte abyte0[])
    {
        this$0 = DataFormatReaders.this;
        super(abyte0);
    }

    public this._cls0(byte abyte0[], int i, int j)
    {
        this$0 = DataFormatReaders.this;
        super(abyte0, i, j);
    }
}
