// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.realtimeclient;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.instagram.realtimeclient:
//            RealtimeOperation, RealtimePatchEvent, RealtimePatchTuple

public class RealtimeStore
{

    private final ObjectMapper mMapper = new ObjectMapper();
    private Map mOperationStore;
    private Set mTombstoneStore;

    public RealtimeStore()
    {
        mOperationStore = new HashMap();
        mTombstoneStore = new HashSet();
    }

    private boolean processAddOperation(RealtimeOperation realtimeoperation)
    {
        JsonNode jsonnode = (JsonNode)mMapper.convertValue(realtimeoperation.value, com/fasterxml/jackson/databind/JsonNode);
        if (!jsonnode.has("id"))
        {
            return false;
        }
        String s = realtimeoperation.path;
        String s1 = jsonnode.get("id").asText();
        String s2;
        String s3;
        Exception exception;
        if (s.equals("/direct_share/inbox"))
        {
            s2 = "/direct_share";
        } else
        {
            s2 = s;
        }
        realtimeoperation.timestamp = s1;
        s3 = (new File(s2, s1)).getPath();
        this;
        JVM INSTR monitorenter ;
        if (mOperationStore.containsKey(s3) || mTombstoneStore.contains(s3))
        {
            break MISSING_BLOCK_LABEL_133;
        }
        mOperationStore.put(s3, realtimeoperation);
        return true;
        exception;
        throw exception;
        this;
        JVM INSTR monitorexit ;
        return false;
    }

    private boolean processRemoveOperation(RealtimeOperation realtimeoperation)
    {
        this;
        JVM INSTR monitorenter ;
        mOperationStore.remove(realtimeoperation.path);
        mTombstoneStore.add(realtimeoperation.path);
        this;
        JVM INSTR monitorexit ;
        return true;
        Exception exception;
        exception;
        throw exception;
    }

    private boolean processReplaceOperation(RealtimeOperation realtimeoperation)
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = mTombstoneStore.contains(realtimeoperation.path);
        if (!flag) goto _L2; else goto _L1
_L1:
        boolean flag1 = false;
_L4:
        this;
        JVM INSTR monitorexit ;
        return flag1;
_L2:
        RealtimeOperation realtimeoperation1 = (RealtimeOperation)mOperationStore.get(realtimeoperation.path);
        if (realtimeoperation1 == null)
        {
            break MISSING_BLOCK_LABEL_87;
        }
        if (RealtimePatchEvent.compareSequences(realtimeoperation1.timestamp, realtimeoperation.timestamp) > 0)
        {
            break MISSING_BLOCK_LABEL_108;
        }
        mOperationStore.put(realtimeoperation.path, realtimeoperation);
        flag1 = true;
        continue; /* Loop/switch isn't completed */
        mOperationStore.put(realtimeoperation.path, realtimeoperation);
        flag1 = true;
        continue; /* Loop/switch isn't completed */
        flag1 = false;
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    public void clear()
    {
        this;
        JVM INSTR monitorenter ;
        mOperationStore.clear();
        mTombstoneStore.clear();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public Collection getOperations()
    {
        this;
        JVM INSTR monitorenter ;
        ArrayList arraylist;
        arraylist = new ArrayList();
        Iterator iterator = mOperationStore.values().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            RealtimeOperation realtimeoperation = (RealtimeOperation)iterator.next();
            if (realtimeoperation.value != null)
            {
                arraylist.add(realtimeoperation);
            }
        } while (true);
        break MISSING_BLOCK_LABEL_68;
        Exception exception;
        exception;
        throw exception;
        Collections.sort(arraylist, new _cls1());
        this;
        JVM INSTR monitorexit ;
        return arraylist;
    }

    public boolean patchStoreWithOperation(RealtimeOperation realtimeoperation)
    {
        switch (_cls2..SwitchMap.com.instagram.realtimeclient.RealtimeOperation.Type[realtimeoperation.op.ordinal()])
        {
        default:
            return false;

        case 1: // '\001'
            return processAddOperation(realtimeoperation);

        case 2: // '\002'
            return processRemoveOperation(realtimeoperation);

        case 3: // '\003'
            return processReplaceOperation(realtimeoperation);
        }
    }

    public void patchStoreWithPatches(Map map)
    {
        this;
        JVM INSTR monitorenter ;
        Iterator iterator = map.entrySet().iterator();
_L2:
        java.util.Map.Entry entry;
        do
        {
            if (!iterator.hasNext())
            {
                break MISSING_BLOCK_LABEL_152;
            }
            entry = (java.util.Map.Entry)iterator.next();
            if (!((RealtimePatchTuple)entry.getValue()).isTombstone)
            {
                break MISSING_BLOCK_LABEL_92;
            }
            mOperationStore.remove(entry.getKey());
            mTombstoneStore.add(entry.getKey());
        } while (true);
        Exception exception;
        exception;
        throw exception;
        RealtimeOperation realtimeoperation = new RealtimeOperation();
        realtimeoperation.op = RealtimeOperation.Type.replace;
        realtimeoperation.path = (String)entry.getKey();
        realtimeoperation.timestamp = ((RealtimePatchTuple)entry.getValue()).timestamp;
        processReplaceOperation(realtimeoperation);
        if (true) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
    }

    private class _cls1
        implements Comparator
    {

        final RealtimeStore this$0;

        public int compare(RealtimeOperation realtimeoperation, RealtimeOperation realtimeoperation1)
        {
            return realtimeoperation.path.length() - realtimeoperation1.path.length();
        }

        public volatile int compare(Object obj, Object obj1)
        {
            return compare((RealtimeOperation)obj, (RealtimeOperation)obj1);
        }

        _cls1()
        {
            this$0 = RealtimeStore.this;
            super();
        }
    }


    private class _cls2
    {

        static final int $SwitchMap$com$instagram$realtimeclient$RealtimeOperation$Type[];

        static 
        {
            $SwitchMap$com$instagram$realtimeclient$RealtimeOperation$Type = new int[RealtimeOperation.Type.values().length];
            try
            {
                $SwitchMap$com$instagram$realtimeclient$RealtimeOperation$Type[RealtimeOperation.Type.add.ordinal()] = 1;
            }
            catch (NoSuchFieldError nosuchfielderror) { }
            try
            {
                $SwitchMap$com$instagram$realtimeclient$RealtimeOperation$Type[RealtimeOperation.Type.remove.ordinal()] = 2;
            }
            catch (NoSuchFieldError nosuchfielderror1) { }
            try
            {
                $SwitchMap$com$instagram$realtimeclient$RealtimeOperation$Type[RealtimeOperation.Type.replace.ordinal()] = 3;
            }
            catch (NoSuchFieldError nosuchfielderror2)
            {
                return;
            }
        }
    }

}
