// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import com.coremedia.iso.IsoFile;
import java.util.List;

// Referenced classes of package com.coremedia.iso.boxes:
//            a

public interface ContainerBox
    extends a
{

    public abstract List getBoxes();

    public abstract List getBoxes(Class class1);

    public abstract List getBoxes(Class class1, boolean flag);

    public abstract IsoFile getIsoFile();

    public abstract long getNumOfBytesToFirstChild();

    public abstract ContainerBox getParent();

    public abstract void setBoxes(List list);
}
