// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.realtimeclient;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

// Referenced classes of package com.instagram.realtimeclient:
//            RealtimeStore, RealtimeOperation, RealtimePatchRange, RealtimePatchEvent

public class RealtimeOperationManager
{

    private Listener mOperationListener;
    private RealtimePatchRange mPatchRange;
    private final RealtimeStore mStore = new RealtimeStore();

    public RealtimeOperationManager(Listener listener)
    {
        mOperationListener = listener;
    }

    private void sendOperationToListener(RealtimeOperation realtimeoperation)
    {
        if (mPatchRange != null && realtimeoperation.op == RealtimeOperation.Type.add && realtimeoperation.timestamp != null && realtimeoperation.path.equals("/direct_share/inbox") && !mPatchRange.contains(realtimeoperation.timestamp))
        {
            return;
        } else
        {
            mOperationListener.onOperation(realtimeoperation);
            return;
        }
    }

    public void clearOperations()
    {
        mStore.clear();
        mPatchRange = null;
    }

    public RealtimePatchRange getPatchRange()
    {
        return mPatchRange;
    }

    public void handlePatchEvent(RealtimePatchEvent realtimepatchevent)
    {
        Iterator iterator = realtimepatchevent.operations.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            RealtimeOperation realtimeoperation = (RealtimeOperation)iterator.next();
            if (mStore.patchStoreWithOperation(realtimeoperation))
            {
                sendOperationToListener(realtimeoperation);
            }
        } while (true);
    }

    public void handlePatches(Map map)
    {
        if (map != null && mPatchRange != null)
        {
            mStore.patchStoreWithPatches(map);
            Iterator iterator = mStore.getOperations().iterator();
            while (iterator.hasNext()) 
            {
                sendOperationToListener((RealtimeOperation)iterator.next());
            }
        }
    }

    public void setPatchRange(RealtimePatchRange realtimepatchrange)
    {
        mPatchRange = realtimepatchrange;
    }

    private class Listener
    {

        public abstract void onOperation(RealtimeOperation realtimeoperation);
    }

}
