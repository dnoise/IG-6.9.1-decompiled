// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.a;

import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;

// Referenced classes of package android.support.v4.a:
//            i

final class l extends FutureTask
{

    final i a;

    l(i j, Callable callable)
    {
        a = j;
        super(callable);
    }

    protected final void done()
    {
        try
        {
            Object obj = get();
            i.b(a, obj);
            return;
        }
        catch (InterruptedException interruptedexception)
        {
            return;
        }
        catch (ExecutionException executionexception)
        {
            throw new RuntimeException("An error occured while executing doInBackground()", executionexception.getCause());
        }
        catch (CancellationException cancellationexception)
        {
            i.b(a, null);
        }
        catch (Throwable throwable)
        {
            throw new RuntimeException("An error occured while executing doInBackground()", throwable);
        }
    }
}
